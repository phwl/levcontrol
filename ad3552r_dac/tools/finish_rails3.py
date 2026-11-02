#!/usr/bin/env python3
import os, sys
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from manual_route import *
PCB = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'ad3552r_dac.kicad_pcb')
backup(PCB, 'finish_rails3')
b = pcbnew.LoadBoard(PCB)
for net, pad, near_pts in (('-5V', pad_xy(b, 'U13', 5), [(13.4, 10.0), (12.0, 9.0), (10.9, 7.55)]),
                           ('VLOGIC', pad_xy(b, 'U1', 2), [(35.0, 21.7), (35.0, 17.0), (34.5, 14.0)])):
    done = False
    for near_pt in near_pts:
        for w in (0.15, 0.1):
            spot = find_via_spot(b, net, near_pt, stub_from=pad, max_r=4.5, track_w=w)
            if spot:
                add_track(b, net, pcbnew.F_Cu, pad, spot, w); add_via(b, net, spot)
                print('%s pad %s: via at (%.2f, %.2f), stub %.2f mm, width %.2f' % (net, tuple(round(v, 2) for v in pad), *spot, math.dist(pad, spot), w)); done = True; break
        if done: break
    if not done: print('FAILED', net)
save(b, PCB)
