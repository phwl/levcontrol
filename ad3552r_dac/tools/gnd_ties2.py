import sys, math
sys.path.insert(0, 'tools')
import pcbnew
from manual_route import *
PCB = 'ad3552r_dac.kicad_pcb'
backup(PCB, 'pre_gnd_ties3')
b = pcbnew.LoadBoard(PCB)
targets = [pad_xy(b, 'U9', 10), pad_xy(b, 'U8', 10), pad_xy(b, 'R20', 2), pad_xy(b, 'C26', 2), (39.0, 14.45), (38.91, 10.5), pad_xy(b, 'C31', 2)]
for pt in targets:
    done = False
    for rad in (1.5, 3.0, 5.0):
        s = find_via_spot(b, 'GND', pt, stub_from=None, max_r=rad, track_w=0.15)
        if not s: continue
        p = route_path(b, 'GND', pcbnew.F_Cu, pt, s, 0.15)
        if not p: continue
        for q, r in zip(p, p[1:]): add_track(b, 'GND', pcbnew.F_Cu, q, r, 0.15)
        add_via(b, 'GND', s); print('ok', tuple(round(v, 2) for v in pt), '->', tuple(round(v, 2) for v in s)); done = True
        save(b, PCB); b = pcbnew.LoadBoard(PCB); break
    if not done: print('FAILED', tuple(round(v, 2) for v in pt))
