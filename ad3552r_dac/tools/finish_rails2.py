#!/usr/bin/env python3
"""Last rail connections of stage 2. Run with /usr/bin/python3."""
import os, sys
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from manual_route import *
PCB = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'ad3552r_dac.kicad_pcb')
backup(PCB, 'finish_rails2')
b = pcbnew.LoadBoard(PCB)
# -5V: front-layer route from U13 pin 5 to the existing trunk via at (10.89, 7.55)
path = route_path(b, '-5V', pcbnew.F_Cu, (11.9, 11.2), (10.89, 7.55), 0.15, cell=0.1)
if path:
    for p, q in zip(path, path[1:]):
        add_track(b, '-5V', pcbnew.F_Cu, p, q, 0.15)
    print('-5V U13.5 -> trunk via: %.1f mm on F.Cu' % sum(math.dist(p, q) for p, q in zip(path, path[1:])))
else:
    print('FAILED -5V hop')
link(b, 'AVDD',   (72.3, 26.2), (60.2, 25.0), label='AVDD U7 -> U12 island')
link(b, 'VLOGIC', (36.6, 13.8), (35.0, 21.0), label='VLOGIC U1 pin 2 -> island')
save(b, PCB)
