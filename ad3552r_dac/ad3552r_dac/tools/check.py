#!/usr/bin/env python3
"""python3 check.py [net,net,...] -- run DRC and summarise (violations by type, non-cosmetic details, open connections of the given nets)"""
import json, sys, collections, subprocess, os
PRJ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
out = os.path.join(PRJ, 'tools', 'work', 'drc.json')
subprocess.run(['kicad-cli', 'pcb', 'drc', '--format', 'json', '--severity-all', '--refill-zones', '-o', out, os.path.join(PRJ, 'ad3552r_dac.kicad_pcb')], capture_output=True)
d = json.load(open(out)); OX, OY = 20, 10
c = collections.Counter(v['type'] for v in d['violations'])
print(dict(c), 'unconnected', len(d['unconnected_items']))
for v in d['violations']:
    if v['type'] not in ('silk_overlap', 'silk_over_copper', 'isolated_copper'):
        print(' ', v['type'], v['description'][:60], [(i['description'][:38], round(i['pos']['x'] - OX, 1), round(i['pos']['y'] - OY, 1)) for i in v['items']][:2])
if len(sys.argv) > 1:
    want = set(sys.argv[1].split(',')); cc = collections.Counter(); rows = []
    for v in d['unconnected_items']:
        nets = {i['description'].split('[')[1].split(']')[0].split('/')[-1] for i in v['items'] if '[' in i['description']}
        if nets & want:
            cc[tuple(sorted(nets))] += 1
            rows.append([(i['description'][:44], round(i['pos']['x'] - OX, 1), round(i['pos']['y'] - OY, 1)) for i in v['items']])
    print('open connections of', sorted(want), ':', sum(cc.values()), dict(cc))
    for r in rows[:int(os.environ.get('SHOW', '12'))]: print('   ', r)
