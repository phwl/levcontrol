#!/usr/bin/env python3
"""Route ONE stage of the board with Freerouting, leaving everything else untouched. Run with /usr/bin/python3.

usage: route_stage.py STAGE [passes]
       STAGE in STAGES below. Steps: export DSN from the current board -> make In1/In4 power layers and the existing wiring protected ->
       keep only the stage's nets in (network ...) (ground and plane nets restricted to the stage's parts) -> Freerouting -> import SES ->
       refill zones -> save. The board is backed up to tools/backups/ first.
"""
import os, re, sys, shutil, subprocess, time
import pcbnew

PRJ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
PCB = os.path.join(PRJ, 'ad3552r_dac.kicad_pcb')
WORK = os.path.join(PRJ, 'tools', 'work')
FR = os.path.join(PRJ, 'tools', 'freerouting', 'app', 'freerouting-2.5.0-linux-x64', 'bin', 'freerouting')

def refs(spec):
    out = []
    for tok in spec.split():
        m = re.fullmatch(r'([A-Z]+)(\d+)-(\d+)', tok)
        out += ['%s%d' % (m.group(1), n) for n in range(int(m.group(2)), int(m.group(3)) + 1)] if m else [tok]
    return set(out)

POWER_BLOCK = refs('J2 F1 D9 D10 C57 C58 U13 C63-70 R62-65 U14 L1 C71-75 R66-69 U15 C76 C77 FB1 FB2 U12 C59-62 R60 R61')
STAGES = {
    # stage 3a: DAC U1 analog block, TIAs U3/U4, inverters U16/U17, output stage of channels 0/1
    'dac1': dict(nets='OUT0_INV OUT0_IOUT OUT0_N OUT0_NEG OUT0_NINV OUT0_P OUT0_RFB OUT0_VCM OUT1_INV OUT1_IOUT OUT1_N OUT1_NEG OUT1_NINV OUT1_P OUT1_RFB OUT1_VCM U1_CVREF U1_NCAP0 U1_NCAP1 U1_PCAP0 U1_PCAP1 VREF_2V5',
                 restrict={'GND': refs('U1 C9 C10 C13 C14 C17 U3 U4 U16 U17 R32 R33 R36 R37 C45 C46 R40 R41 R44 R45 R48 R49 C49 C50 C53 C54 D1-4 R52-55 J4-7')}),
    'dac1b': dict(nets='OUT0_VCM OUT1_RFB OUT1_IOUT U1_NCAP1', restrict={}),
    # stage 3b: DAC U2 analog block, TIAs U5/U6, inverters U18/U19, output stage of channels 2/3
    'dac2': dict(nets='OUT2_INV OUT2_IOUT OUT2_N OUT2_NEG OUT2_NINV OUT2_P OUT2_RFB OUT2_VCM OUT3_INV OUT3_IOUT OUT3_N OUT3_NEG OUT3_NINV OUT3_P OUT3_RFB OUT3_VCM U2_CVREF U2_NCAP0 U2_NCAP1 U2_PCAP0 U2_PCAP1',
                 restrict={'GND': refs('U2 C11 C12 C15 C16 C18 U5 U6 U18 U19 R34 R35 R38 R39 C47 C48 R42 R43 R46 R47 R50 R51 C51 C52 C55 C56 D5-8 R56-59 J8-11')}),
    'misc': dict(nets='Net-(D9-A) Net-(F1-Pad1) Net-(U12-FB) Net-(U12-NR/SS) Net-(U13-C+) Net-(U13-C-)', restrict={}),
    # stage 4: SPI / digital lines
    'spi': dict(nets='E1_DQ_A0 E1_DQ_A1 E1_DQ_A2 E1_DQ_A3 E1_DQ_B0 E1_DQ_B1 E1_DQ_B2 E1_DQ_B3 B_DQ_A0 B_DQ_A1 B_DQ_A2 B_DQ_A3 B_DQ_B0 B_DQ_B1 B_DQ_B2 B_DQ_B3 DQ_A0 DQ_A1 DQ_A2 DQ_A3 DQ_B0 DQ_B1 DQ_B2 DQ_B3 E1_SCLK E1_CS_A_N E1_CS_B_N E1_LDAC_N E1_RESET_N E1_ALERT_A_N E1_ALERT_B_N B_SCLK B_CS_A_N B_CS_B_N B_LDAC_N B_RESET_N SCLK CS_A_N CS_B_N LDAC_N RESET_N ALERT_A_N ALERT_B_N QSPI_A QSPI_B SYNC_OUT XLAT_OE_N DIR_A DIR_B', restrict={}),
    'spi2': dict(nets='SCLK DQ_A1 DQ_A2 DQ_B0 B_DQ_B1 CS_A_N CS_B_N', restrict={}),
    'gnd': dict(nets='GND', restrict={}),
    'spi3': dict(nets='VLOGIC DVDD SCLK DQ_A0 DQ_A1 DQ_A2 DQ_A3 CS_A_N ALERT_A_N LDAC_N DQ_B0 CS_B_N B_DQ_B1', restrict={}),
    'fix': dict(nets='-5V VLOGIC', restrict={}),
    'fixu13': dict(nets='-5V ADJN VNEG_PUMP BYPN', restrict={}),
    # stage 1: the power block, +12V (incl. its feed to U12) and +2V5
    'power': dict(nets='VIN_JACK VIN_FUSED +12V +2V5 CP_PLUS CP_MINUS VNEG_PUMP ADJP ADJN BYPP BYPN BUCK_EN BUCK_SW BUCK_BST BUCK_FB',
                  restrict={'GND': POWER_BLOCK}),
    # stage 2: supply rails to the DACs and amplifiers
    'rails': dict(nets='+5V -5V AVDD DVDD VLOGIC +1V8 +3V3 AVDD_FB AVDD_NR', restrict={'GND': refs('U12 C59-62 R61 U15 C76 C77 FB1 FB2 U7 C19 C20')}),
}


OX, OY = 20.0, 10.0
CU_NAMES = {pcbnew.F_Cu: 'F.Cu', pcbnew.In1_Cu: 'In1.Cu', pcbnew.In2_Cu: 'In2.Cu', pcbnew.In3_Cu: 'In3.Cu', pcbnew.In4_Cu: 'In4.Cu', pcbnew.B_Cu: 'B.Cu'}

def um(v):
    return int(round(pcbnew.ToMM(v) * 1000))

def keepouts_and_wired(b, keepwire=(), ripup=()):
    """existing tracks/vias as DSN keep-out shapes (clearance 0.1 mm added on each side), and the set of pad names already touched by copper"""
    lines, pts, wires = [], [], []
    for t in b.GetTracks():
        if t.GetNetname() in keepwire:
            if t.Type() == pcbnew.PCB_VIA_T:
                wires.append('    (via "Via[0-5]_400:200_um" %d %d (net %s)(type %s))' % (um(t.GetPosition().x), -um(t.GetPosition().y), t.GetNetname(), 'route' if t.GetNetname() in ripup else 'protect'))
            elif CU_NAMES.get(t.GetLayer()):
                wires.append('    (wire (path %s %d %d %d %d %d)(net %s)(type %s))' % (CU_NAMES[t.GetLayer()], um(t.GetWidth()), um(t.GetStart().x), -um(t.GetStart().y), um(t.GetEnd().x), -um(t.GetEnd().y), t.GetNetname(), 'route' if t.GetNetname() in ripup else 'protect'))
            continue
        if t.Type() == pcbnew.PCB_VIA_T:
            x, y = um(t.GetPosition().x), -um(t.GetPosition().y)
            d = um(t.GetWidth(pcbnew.F_Cu)) + 200
            for lay in CU_NAMES.values():
                lines.append('    (keepout "" (circle %s %d %d %d))' % (lay, d, x, y))
            pts.append((t.GetPosition().x, t.GetPosition().y))
        else:
            lay = CU_NAMES.get(t.GetLayer())
            if not lay:
                continue
            lines.append('    (keepout "" (path %s %d %d %d %d %d))' % (lay, um(t.GetWidth()) + 200, um(t.GetStart().x), -um(t.GetStart().y), um(t.GetEnd().x), -um(t.GetEnd().y)))
            pts += [(t.GetStart().x, t.GetStart().y), (t.GetEnd().x, t.GetEnd().y)]
    wired = set()
    for f in b.GetFootprints():
        seen = {}
        for pad in f.Pads():
            n = pad.GetNumber(); k = seen.get(n, 0); seen[n] = k + 1
            name = '%s-%s%s' % (f.GetReference(), n, '' if k == 0 else '@%d' % k)
            bb = pad.GetBoundingBox()
            if any(bb.GetLeft() <= x <= bb.GetRight() and bb.GetTop() <= y <= bb.GetBottom() for x, y in pts):
                wired.add(name)
    return lines, wired, wires

def basename(n):
    return n.split('/')[-1] if '/' in n and n != '/' else n

def children(text, start):
    """spans of the depth-1 children of the s-expression starting at text[start] == '('"""
    depth, spans, cs, i, instr = 0, [], None, start, False
    while i < len(text):
        c = text[i]
        if instr:
            instr = c != '"'
        elif c == '"':
            instr = True
        elif c == '(':
            depth += 1
            if depth == 2:
                cs = i
        elif c == ')':
            if depth == 2:
                spans.append((cs, i + 1))
            depth -= 1
            if depth == 0:
                return spans, i + 1
        i += 1
    raise ValueError('unbalanced')

def filter_dsn(text, stage, wired=(), keepwire=()):
    nets = set(STAGES[stage]['nets'].split())
    restrict = STAGES[stage].get('restrict', {})
    ns = text.index('(network')
    spans, end = children(text, ns)
    out, kept = [], set()
    for a, b in spans:
        blk = text[a:b]
        m = re.match(r'\(net\s+(\S+)', blk)
        if m:
            name = m.group(1)
            if basename(name) not in nets and name not in nets and name.strip('"') not in nets and name not in restrict and basename(name) not in restrict:
                continue
            pins = re.search(r'\(pins([^)]*)\)', blk, re.S).group(1).split()
            allow = restrict.get(name) or restrict.get(basename(name))
            if allow is not None:
                pins = [p for p in pins if p.rsplit('-', 1)[0].split('@')[0] in allow]
            plane = basename(name) in ('GND', '+5V', 'AVDD', '+12V', '+2V5', 'VLOGIC', '+3V3')
            if plane and name not in keepwire:
                pins = [p for p in pins if p not in wired]          # already tied to the plane by an earlier stage
            if len(pins) < (1 if plane else 2):
                continue
            kept.add(name)
            out.append('    (net %s\n      (pins %s)\n    )' % (name, ' '.join(pins)))
        else:
            out.append(blk)          # classes handled below
    # classes: drop net names that are no longer in the network
    res = []
    for blk in out:
        if blk.lstrip().startswith('(class'):
            m = re.match(r'(\(class\s+\S+)((?:\s+[^\s()]+)*)(.*)', blk, re.S)
            names = [n for n in m.group(2).split() if n in kept]
            blk = m.group(1) + ' ' + ' '.join(names) + m.group(3)
        res.append(blk)
    new = '(network\n' + '\n'.join(res) + '\n  )'
    print('stage %s: %d nets kept' % (stage, len(kept)))
    return text[:ns] + new + text[end:]

def main():
    stage = sys.argv[1]
    passes = sys.argv[2] if len(sys.argv) > 2 else '20'
    os.makedirs(os.path.join(PRJ, 'tools', 'backups'), exist_ok=True)
    shutil.copy(PCB, os.path.join(PRJ, 'tools', 'backups', 'board_%s_pre_%s.kicad_pcb' % (time.strftime('%H%M%S'), stage)))
    b = pcbnew.LoadBoard(PCB)
    dsn = os.path.join(WORK, 'stage_%s.dsn' % stage); ses = os.path.join(WORK, 'stage_%s.ses' % stage)
    pcbnew.ExportSpecctraDSN(b, dsn)
    t = open(dsn).read()
    for lay in ('In1.Cu', 'In4.Cu'):
        k = t.index('(layer %s' % lay)
        t = t[:k] + t[k:].replace('(type signal)', '(type power)', 1)
    keepwire = set(sys.argv[3].split(',')) if len(sys.argv) > 3 else set()
    ripup = set(sys.argv[4].split(',')) if len(sys.argv) > 4 else set()
    ko, wired, wires = keepouts_and_wired(b, keepwire, ripup)
    w = t.index('(wiring')
    t = t[:w] + '(wiring\n' + '\n'.join(wires) + '\n  )\n)\n'                                    # existing copper goes in as keep-outs instead
    k = t.index('(via "Via')                                           # inside (structure ...), before the via definitions
    t = t[:k] + '\n'.join(ko).lstrip() + '\n    ' + t[k:]
    t = filter_dsn(t, stage, wired, keepwire)
    open(dsn, 'w').write(t)
    if os.path.exists(ses):
        os.remove(ses)
    log = os.path.join(WORK, 'freerouting_%s.log' % stage)
    cmd = [FR, '--gui.enabled=false', '-de', dsn, '-do', ses, '-mp', passes, '-mt', '10']
    print('running Freerouting (%s passes) ...' % passes, flush=True)
    with open(log, 'w') as lf:
        subprocess.run(cmd, stdout=lf, stderr=subprocess.STDOUT, cwd='/tmp', timeout=3000)
    tail = [l for l in open(log) if 'unrouted' in l or 'finished' in l or 'Stopping' in l][-3:]
    print(''.join(l[60:].rstrip() + '\n' for l in tail))
    old = [t.Duplicate() for t in b.GetTracks() if t.GetNetname() not in ripup]            # KiCad's SES import replaces all tracks/vias: keep the existing ones
    before = len(old)
    ok = pcbnew.ImportSpecctraSES(b, ses)
    def key(t):
        if t.Type() == pcbnew.PCB_VIA_T:
            return ('via', t.GetPosition().x, t.GetPosition().y, t.GetNetCode())
        return ('trk', min((t.GetStart().x, t.GetStart().y), (t.GetEnd().x, t.GetEnd().y)), max((t.GetStart().x, t.GetStart().y), (t.GetEnd().x, t.GetEnd().y)), t.GetLayer(), t.GetNetCode())
    have = {key(t) for t in b.GetTracks()}
    restored = 0
    for t in old:
        if key(t) not in have:
            b.Add(t); restored += 1
    print('restored %d earlier tracks/vias' % restored)
    b.BuildConnectivity()
    pcbnew.ZONE_FILLER(b).Fill(b.Zones())
    pcbnew.SaveBoard(PCB, b)
    print('SES import:', ok, ' tracks+vias %d -> %d' % (before, len(list(b.GetTracks()))))

main()
