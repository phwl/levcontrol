#!/usr/bin/env python3
"""Compare the schematic's netlist with tools/work/sch/before.xml (net names and members), then run ERC.
usage: python3 tools/sch_check.py [--png]   (--png also renders every sheet to tools/work/sch/*.png)"""
import subprocess, sys, json, os, collections, glob
import xml.etree.ElementTree as ET

W = 'tools/work/sch'
subprocess.run(['kicad-cli', 'sch', 'export', 'netlist', '--format', 'kicadxml', '-o', W + '/after.xml', 'ad3552r_dac.kicad_sch'],
               capture_output=True, check=True)

def nets(p):
    r = ET.parse(p).getroot()
    return {n.get('name'): tuple(sorted((x.get('ref'), x.get('pin')) for x in n)) for n in r.find('nets')}

a, b = nets(W + '/before.xml'), nets(W + '/after.xml')
if a == b:
    print('netlist: identical (%d nets)' % len(a))
else:
    ga = {v: k for k, v in a.items()}; gb = {v: k for k, v in b.items()}
    for k in sorted(set(a) - set(b)):
        print('  lost  ', k, a[k][:6], '->', gb.get(a[k], 'members changed'))
    for k in sorted(set(b) - set(a)):
        print('  new   ', k, b[k][:6])
    for k in sorted(set(a) & set(b)):
        if a[k] != b[k]:
            print('  diff  ', k, 'missing', sorted(set(a[k]) - set(b[k]))[:6], 'extra', sorted(set(b[k]) - set(a[k]))[:6])
subprocess.run(['kicad-cli', 'sch', 'erc', '--format', 'json', '--severity-all', '-o', W + '/erc.json', 'ad3552r_dac.kicad_sch'],
               capture_output=True)
d = json.load(open(W + '/erc.json'))
c = collections.Counter()
for s in d['sheets']:
    for v in s['violations']:
        c[(v['severity'], v['type'])] += 1
print('ERC:', dict(c))
for s in d['sheets']:
    for v in s['violations']:
        if v['severity'] == 'error' or '-v' in sys.argv:
            print('  ', s['path'], v['type'], v['description'][:70], [i['description'][:40] for i in v['items']][:2])
if '--png' in sys.argv:
    import cairosvg
    for f in glob.glob(W + '/svg/*.svg'):
        os.remove(f)
    subprocess.run(['kicad-cli', 'sch', 'export', 'svg', '-o', W + '/svg', 'ad3552r_dac.kicad_sch'], capture_output=True)
    for f in glob.glob(W + '/svg/*.svg'):
        cairosvg.svg2png(url=f, write_to=f[:-4].replace(' ', '_') + '.png', output_width=3000, background_color='white')
    print('png:', sorted(glob.glob(W + '/svg/*.png')))
