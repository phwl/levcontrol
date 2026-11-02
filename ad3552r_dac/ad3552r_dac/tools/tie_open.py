#!/usr/bin/env python3
"""usage: tie_open.py NET[,NET...] -- for every open connection of the given plane nets whose item lies inside that net's In4 island,
add a via (with a short F.Cu stub) into the island. Items outside any island are listed for manual trunk routing. Use /usr/bin/python3."""
import os, sys, json, subprocess
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from manual_route import *
PRJ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
PCB = os.path.join(PRJ, 'ad3552r_dac.kicad_pcb')
ISLANDS = {'+5V': [(44.4, 4.0, 78.0, 48.0)], 'AVDD': [(37.2, 5.0, 44.4, 46.0), (52.5, 23.5, 60.5, 30.5), (69.5, 23.0, 76.5, 28.0)],
           '+12V': [(7.0, 11.0, 25.0, 26.5)], '+2V5': [(7.0, 27.0, 26.0, 35.5)], 'VLOGIC': [(26.5, 5.0, 37.0, 36.0)], '+3V3': [(1.0, 36.0, 26.0, 55.0)]}
nets = sys.argv[1].split(',')
out = os.path.join(PRJ, 'tools', 'work', 'drc.json')
subprocess.run(['kicad-cli', 'pcb', 'drc', '--format', 'json', '--severity-all', '--refill-zones', '-o', out, PCB], capture_output=True)
d = json.load(open(out))
todo, outside = [], []
for v in d['unconnected_items']:
    for i in v['items']:
        if '[' not in i['description']:
            continue
        net = i['description'].split('[')[1].split(']')[0].split('/')[-1]
        if net in nets:
            pos = (i['pos']['x'] - OX, i['pos']['y'] - OY)
            isl = next((r for r in ISLANDS.get(net, []) if r[0] <= pos[0] <= r[2] and r[1] <= pos[1] <= r[3]), None)
            (todo if isl else outside).append((net, pos, isl, i['description'][:44]))
seen, uniq = set(), []
for t in todo:
    k = (t[0], round(t[1][0], 1), round(t[1][1], 1))
    if k not in seen:
        seen.add(k); uniq.append(t)
backup(PCB, 'tie_open')
b = pcbnew.LoadBoard(PCB)
added = 0
for net, pos, isl, desc in uniq:
    spot = find_via_spot(b, net, pos, stub_from=pos, zone_rect=isl, max_r=3.5, track_w=0.15)
    if not spot:
        outside.append((net, pos, isl, desc + ' (no via spot)')); continue
    if math.dist(spot, pos) > 0.05:
        add_track(b, net, pcbnew.F_Cu, pos, spot, 0.15)
    add_via(b, net, spot); added += 1
save(b, PCB)
print('vias added:', added, '| items needing a trunk or hand work:', len(outside))
for o in outside: print('  ', o[0], tuple(round(x, 1) for x in o[1]), o[3])
