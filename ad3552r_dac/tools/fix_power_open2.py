#!/usr/bin/env python3
"""Last two ties of the power stage: surface groups of +2V5 and +12V into their In4 islands. Run with /usr/bin/python3."""
import os, sys
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from manual_route import *
PCB = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'ad3552r_dac.kicad_pcb')
backup(PCB, 'power_fix2')
b = pcbnew.LoadBoard(PCB)
for net, pt, island, label in (('+2V5', (12.0, 30.5), (7.0, 27.0, 26.0, 35.5), '+2V5 C72/C73 group'),
                               ('+12V', (20.0, 12.4), (7.0, 11.0, 25.0, 26.5), '+12V U13/D10 group')):
    spot = find_via_spot(b, net, pt, stub_from=pt, zone_rect=island, max_r=4.0)
    if not spot:
        print('FAILED', label); continue
    if math.dist(spot, pt) > 0.05:
        add_track(b, net, pcbnew.F_Cu, pt, spot, 0.2)
    add_via(b, net, spot)
    print('%s: via at (%.2f, %.2f), stub %.2f mm' % (label, *spot, math.dist(pt, spot)))
save(b, PCB)
