import sys, json, math, re
sys.path.insert(0, 'tools')
import pcbnew
from manual_route import *
PCB = 'ad3552r_dac.kicad_pcb'
backup(PCB, 'pre_gnd_ties2')
b = pcbnew.LoadBoard(PCB)
d = json.load(open('tools/work/drc.json'))
items = {}
for v in d['unconnected_items']:
    if not all('[GND]' in i['description'] for i in v['items']): continue
    for i in v['items']:
        desc = i['description']
        if desc.startswith('Via'): continue
        key = (desc[:44], round(i['pos']['x'] - OX, 2), round(i['pos']['y'] - OY, 2))
        items[key] = desc
print(len(items), 'items')
added = []
for (desc, x, y), full in items.items():
    pt = (x, y)
    m = re.match(r'Pad (\S+) \[GND\] of (\S+)', full)
    if m: pt = pad_xy(b, m.group(2), m.group(1)); stub = pt
    else: stub = pt
    if any(math.dist(a, pt) < 0.2 for a in added): continue            # a tie via nearby already covers it
    s = find_via_spot(b, 'GND', pt, stub_from=stub, max_r=3.0, track_w=0.15)
    if not s: print('no spot for', desc, pt); continue
    if math.dist(pt, s) > 0.05: add_track(b, 'GND', pcbnew.F_Cu, pt, s, 0.15)
    add_via(b, 'GND', s); added.append(s)
    print('via', desc[:30], '->', tuple(round(v, 2) for v in s))
save(b, PCB)
