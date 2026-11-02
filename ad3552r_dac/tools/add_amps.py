#!/usr/bin/env python3
"""Add the four transimpedance amplifiers (U3-U6, ADA4807-1) and their directly attached passives to the EXISTING board.

Per channel k (0..3): U(3+k) with C_FB C(21+k), VCM cap C(25+k), +5V bypass C(29+k), -5V bypass C(33+k).
DAC pins: U1 ch0/ch1 -> channels 0/1, U2 ch0/ch1 -> channels 2/3 (IOUT0 p26, VCM0 p27, RFB2_0 p24 ; IOUT1 p15, VCM1 p14, RFB2_1 p17).
Each part goes to the free spot (0.25 mm grid, 4 rotations) that minimises the summed distance between its pads and the pads they connect to.
Run with /usr/bin/python3. Backs the board up first and does not touch existing placement.
"""
import os, math, shutil, time
import xml.etree.ElementTree as ET
import pcbnew
from pcbnew import FromMM as MM, ToMM, VECTOR2I, EDA_ANGLE

PRJ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
PCB = os.path.join(PRJ, 'ad3552r_dac.kicad_pcb')
FPLIB = '/usr/share/kicad/footprints'
OX, OY = 20.0, 10.0
V = lambda x, y: VECTOR2I(MM(x + OX), MM(y + OY))
P = lambda v: (ToMM(v.x) - OX, ToMM(v.y) - OY)
XMIN_AMP = 41.0                  # analog parts stay right of the DACs' digital (left) side and their capacitor groups

root = ET.parse(os.path.join(PRJ, 'tools', 'netlist.xml')).getroot()
comps = {c.get('ref'): dict(value=c.findtext('value', ''), fp=c.findtext('footprint', '')) for c in root.find('components')}
pad_net = {}
for n in root.find('nets'):
    if not n.get('name').startswith('unconnected-'):
        for x in n:
            pad_net[(x.get('ref'), x.get('pin'))] = n.get('name')

os.makedirs(os.path.join(PRJ, 'tools', 'backups'), exist_ok=True)
shutil.copy(PCB, os.path.join(PRJ, 'tools', 'backups', 'board_%s.kicad_pcb' % time.strftime('%H%M%S')))
b = pcbnew.LoadBoard(PCB)

def _mknet(nm):
    ni = pcbnew.NETINFO_ITEM(b, nm); b.Add(ni); return ni

have = {f.GetReference(): f for f in b.GetFootprints()}
CH = [dict(u='U3', cfb='C21', vcm='C25', bp='C29', bn='C33', dac='U1', iout=26, vcmp=27, rfb=24),
      dict(u='U4', cfb='C22', vcm='C26', bp='C30', bn='C34', dac='U1', iout=15, vcmp=14, rfb=17),
      dict(u='U5', cfb='C23', vcm='C27', bp='C31', bn='C35', dac='U2', iout=26, vcmp=27, rfb=24),
      dict(u='U6', cfb='C24', vcm='C28', bp='C32', bn='C36', dac='U2', iout=15, vcmp=14, rfb=17)]
assert not any(c['u'] in have for c in CH), 'amplifiers already placed'

def new_fp(ref):
    lib, name = comps[ref]['fp'].split(':')
    fp = pcbnew.FootprintLoad(os.path.join(FPLIB, lib + '.pretty'), name)
    fp.SetFPID(pcbnew.LIB_ID(lib, name))
    fp.SetReference(ref); fp.SetValue(comps[ref]['value'])
    try:
        fp.SetLocalClearance(None)
    except Exception:
        fp.SetLocalClearance(0)
    for pad in fp.Pads():
        nm = pad_net.get((ref, pad.GetNumber()))
        if nm:
            pad.SetNet(b.FindNet(nm) or _mknet(nm))
    b.Add(fp)
    fp.Value().SetVisible(False)
    fp.Reference().SetLayer(pcbnew.F_Fab)
    return fp

def rect(fp):
    bb = fp.GetBoundingBox(False)
    return (ToMM(bb.GetLeft()) - OX, ToMM(bb.GetTop()) - OY, ToMM(bb.GetRight()) - OX, ToMM(bb.GetBottom()) - OY)

OBST = {r: rect(f) for r, f in have.items() if not r.startswith('H')}
OBST['J1'] = (6.0, 49.0, 41.0, 56.0); OBST['J12'] = (6.0, -2.0, 41.0, 5.0)
for i, (x, y) in enumerate(((0, 0), (84, 0), (0, 54), (84, 54))):
    OBST['H%d' % i] = (x - 3.8, y - 3.8, x + 3.8, y + 3.8)

def hit(a, c):
    return not (a[2] <= c[0] or c[2] <= a[0] or a[3] <= c[1] or c[3] <= a[1])

def best_place(ref, targets, margin, win, step=0.25):
    """targets: {pad_number: (x, y)} -> weight 1; or {pad_number: (x, y, w)}"""
    fp = new_fp(ref)
    best = None
    for rot in (0, 90, 180, 270):
        fp.SetOrientation(EDA_ANGLE(rot, pcbnew.DEGREES_T)); fp.SetPosition(V(0, 0))
        off = {p.GetNumber(): P(p.GetPosition()) for p in fp.Pads()}          # pad offsets at origin
        rc0 = rect(fp)
        rel = (rc0[0] - margin, rc0[1] - margin, rc0[2] + margin, rc0[3] + margin)
        x0, x1, y0, y1 = win
        yy = y0
        while yy <= y1:
            xx = x0
            while xx <= x1:
                rc = (xx + rel[0], yy + rel[1], xx + rel[2], yy + rel[3])
                if rc[0] >= -7.3 and rc[2] <= 86.3 and rc[1] >= -2.3 and rc[3] <= 56.3 and not any(hit(rc, o) for o in OBST.values()):
                    cost = 0.0
                    for pn, t in targets.items():
                        w = t[2] if len(t) > 2 else 1.0
                        cost += w * math.hypot(xx + off[pn][0] - t[0], yy + off[pn][1] - t[1])
                    if best is None or cost < best[0]:
                        best = (cost, xx, yy, rot)
                xx += step
            yy += step
    if best is None:
        raise RuntimeError('no spot for ' + ref)
    cost, xx, yy, rot = best
    fp.SetOrientation(EDA_ANGLE(rot, pcbnew.DEGREES_T)); fp.SetPosition(V(xx, yy))
    OBST[ref] = rect(fp)
    return fp, cost

def pad_xy(fp, num):
    return next(P(p.GetPosition()) for p in fp.Pads() if p.GetNumber() == str(num))

def net_targets(ref, tia, skip=('GND',)):
    """for each non-GND pad of passive `ref`, the TIA pad that shares its net"""
    t = {}
    for pn in ('1', '2'):
        nm = pad_net.get((ref, pn))
        if not nm or nm in skip:
            continue
        for q in range(1, 7):
            if pad_net.get((tia.GetReference(), str(q))) == nm:
                t[pn] = pad_xy(tia, q); break
    return t

report = []
for c in CH:
    dac = have[c['dac']]
    iout, vcmp, rfb = pad_xy(dac, c['iout']), pad_xy(dac, c['vcmp']), pad_xy(dac, c['rfb'])
    cy = iout[1]
    # amplifier: pin 4 (-IN) to IOUT, pin 1 (OUT) to RFB2, pin 3 (+IN) to VCM
    tia, cost = best_place(c['u'], {'4': iout + (1.0,), '1': rfb + (1.0,), '3': vcmp + (0.5,)}, 1.0,
                           (XMIN_AMP, 70.0, -1.5, 42.0))
    tia.Reference().SetLayer(pcbnew.F_SilkS); tia.Reference().SetTextSize(VECTOR2I(MM(0.8), MM(0.8)))
    d4 = math.dist(pad_xy(tia, 4), iout); d1 = math.dist(pad_xy(tia, 1), rfb)
    rows = [(c['u'], P(tia.GetPosition()), tia.GetOrientationDegrees(), 'IOUT %.1f mm, RFB2 %.1f mm' % (d4, d1))]
    # passives attached to the amplifier
    for key, sig in (('cfb', None), ('vcm', None), ('bp', None), ('bn', None)):
        ref = c[key]
        # temporary footprint to read its pad nets, then place by net-matched targets
        tg = net_targets(ref, tia)
        w = {'cfb': 2.0, 'vcm': 1.0, 'bp': 1.0, 'bn': 1.0}[key]
        tg = {k: v + (w,) for k, v in tg.items()}
        fp, cst = best_place(ref, tg, 0.5, (XMIN_AMP - 2, 72.0, -1.5, 44.0))
        rows.append((ref, P(fp.GetPosition()), fp.GetOrientationDegrees(), 'cost %.1f' % cst))
    report.append(rows)
    for r in rows:
        print('%-4s at (%6.2f,%6.2f) rot %5.0f  %s' % (r[0], r[1][0], r[1][1], r[2], r[3]))
    print()

b.BuildConnectivity()
pcbnew.ZONE_FILLER(b).Fill(b.Zones())
pcbnew.SaveBoard(PCB, b)
