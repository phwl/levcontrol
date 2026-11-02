#!/usr/bin/env python3
"""Build the JLCPCB order package in jlcpcb/: Gerbers + Excellon drill (zipped), BOM and CPL (placement) CSVs.
Run from the project dir. Everything uses KiCad's absolute origin, so the CPL lines up with the Gerbers.

BOM rows group parts by LCSC code (Comment, Designator, Footprint, LCSC Part #, Manufacturer, MPN, Sourcing).
Parts without an LCSC field (TP1, a bare pad) and board-only items (H1-H4) are left out of BOM and CPL.
"""
import csv, glob, os, re, shutil, subprocess, zipfile, collections
import xml.etree.ElementTree as ET

OUT = 'jlcpcb'
PCB, SCH = 'ad3552r_dac.kicad_pcb', 'ad3552r_dac.kicad_sch'
NAME = 'ad3552r_dac'
GLOBAL = {'C4748801', 'C2058411', 'C7498573'}      # zero JLCPCB stock on 2 Nov 2026: Global Sourcing
THT = re.compile(r'^(J\d+)$')

def run(*a):
    r = subprocess.run(a, capture_output=True, text=True)
    if r.returncode:
        raise SystemExit(' '.join(a) + '\n' + r.stdout + r.stderr)

shutil.rmtree(OUT, ignore_errors=True)
g = os.path.join(OUT, 'gerber'); os.makedirs(g)
LAYERS = 'F.Cu,In1.Cu,In2.Cu,In3.Cu,In4.Cu,B.Cu,F.Paste,B.Paste,F.Silkscreen,B.Silkscreen,F.Mask,B.Mask,Edge.Cuts'
run('kicad-cli', 'pcb', 'export', 'gerbers', '--layers', LAYERS, '--no-x2', '--no-netlist', '--subtract-soldermask',
    '-o', g + '/', PCB)
run('kicad-cli', 'pcb', 'export', 'drill', '--format', 'excellon', '--drill-origin', 'absolute', '--excellon-units', 'mm',
    '--excellon-separate-th', '-o', g + '/', PCB)
files = sorted(glob.glob(g + '/*'))
with zipfile.ZipFile(os.path.join(OUT, NAME + '_gerbers.zip'), 'w', zipfile.ZIP_DEFLATED) as z:
    for f in files:
        z.write(f, os.path.basename(f))

# parts from the schematic netlist (fields written by tools/apply_parts.py)
run('kicad-cli', 'sch', 'export', 'netlist', '--format', 'kicadxml', '-o', os.path.join(OUT, 'netlist.xml'), SCH)
root = ET.parse(os.path.join(OUT, 'netlist.xml')).getroot(); os.remove(os.path.join(OUT, 'netlist.xml'))
parts = {}
for c in root.find('components'):
    f = {x.get('name'): (x.text or '') for x in c.find('fields')} if c.find('fields') is not None else {}
    if f.get('LCSC'):
        parts[c.get('ref')] = dict(value=c.find('value').text, fp=c.find('footprint').text.split(':')[-1],
                                   lcsc=f['LCSC'], mpn=f.get('MPN', ''), mfr=f.get('Manufacturer', ''))
key = lambda r: (re.sub(r'\d', '', r), int(re.sub(r'\D', '', r)))
groups = collections.defaultdict(list)          # one line per LCSC part; the comment is the value, or the MPN if values differ
for r, p in parts.items():
    groups[(p['lcsc'], p['fp'])].append(r)
with open(os.path.join(OUT, NAME + '_bom.csv'), 'w', newline='') as fh:
    w = csv.writer(fh)
    w.writerow(['Comment', 'Designator', 'Footprint', 'LCSC Part #', 'Manufacturer', 'MPN', 'Quantity', 'Sourcing'])
    for (lcsc, fp), refs in sorted(groups.items(), key=lambda kv: key(sorted(kv[1], key=key)[0])):
        refs = sorted(refs, key=key); p = parts[refs[0]]
        vals = {parts[r]['value'] for r in refs}
        val = vals.pop() if len(vals) == 1 else p['mpn']
        src = 'Global Sourcing' if lcsc in GLOBAL else 'JLCPCB stock'
        if all(THT.match(r) for r in refs):
            src += ', through-hole'
        w.writerow([val, ','.join(refs), fp, lcsc, p['mfr'], p['mpn'], len(refs), src])

# placement: KiCad position file -> JLCPCB CPL
pos = os.path.join(OUT, 'pos.csv')
run('kicad-cli', 'pcb', 'export', 'pos', '--format', 'csv', '--units', 'mm', '--side', 'both', '-o', pos, PCB)
rows = list(csv.DictReader(open(pos))); os.remove(pos)
n = 0
with open(os.path.join(OUT, NAME + '_cpl.csv'), 'w', newline='') as fh:
    w = csv.writer(fh)
    w.writerow(['Designator', 'Mid X', 'Mid Y', 'Layer', 'Rotation'])
    for r in sorted(rows, key=lambda r: key(r['Ref'])):
        if r['Ref'] not in parts:
            continue
        w.writerow([r['Ref'], r['PosX'] + 'mm', r['PosY'] + 'mm', 'Top' if r['Side'] == 'top' else 'Bottom', r['Rot']])
        n += 1
shutil.copy('tools/jlc_readme.md', os.path.join(OUT, 'README.md'))      # README lives in tools/ so a re-run keeps it
missing = sorted(set(parts) - {r['Ref'] for r in rows}, key=key)
print('gerber zip: %d files; BOM: %d lines / %d parts; CPL: %d placements; in BOM but not in CPL: %s'
      % (len(files), len(groups), len(parts), n, missing))
