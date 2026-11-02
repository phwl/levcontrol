#!/usr/bin/env python3
"""usage: gnd_vias.py REF:PAD [REF:PAD ...] -- add a ground via (with a short stub) beside each listed pad. Run with /usr/bin/python3."""
import os, sys
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from manual_route import *
PCB = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'ad3552r_dac.kicad_pcb')
backup(PCB, 'gnd_vias')
b = pcbnew.LoadBoard(PCB)
for spec in sys.argv[1:]:
    ref, pad = spec.split(':')
    pt = pad_xy(b, ref, pad)
    spot = find_via_spot(b, 'GND', pt, stub_from=pt, max_r=3.5, track_w=0.15)
    if not spot:
        print('FAILED', spec); continue
    add_track(b, 'GND', pcbnew.F_Cu, pt, spot, 0.15); add_via(b, 'GND', spot)
    print('%s: via at (%.2f, %.2f), stub %.2f mm' % (spec, *spot, math.dist(pt, spot)))
save(b, PCB)
