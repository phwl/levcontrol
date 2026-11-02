#!/usr/bin/env python3
"""Trunk links between supply-rail clusters that the router left open (stage 2). Run with /usr/bin/python3."""
import os, sys
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from manual_route import *
PCB = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'ad3552r_dac.kicad_pcb')
backup(PCB, 'finish_rails')
b = pcbnew.LoadBoard(PCB)
# -5V: U13 pin 5 to the start of the inner-layer trunk
spot = find_via_spot(b, '-5V', (13.4, 10.0), stub_from=(11.9, 11.2), max_r=2.5, track_w=0.15)
if spot:
    add_track(b, '-5V', pcbnew.F_Cu, (11.9, 11.2), spot, 0.15); add_via(b, '-5V', spot); print('-5V U13.5 -> trunk: via at (%.2f, %.2f)' % spot)
else:
    print('FAILED -5V hop')
link(b, '+5V',   (22.4, 9.6),  (46.4, 10.5), label='+5V U13 -> amplifier island')
link(b, 'AVDD',  (10.0, 18.5), (38.5, 23.5), label='AVDD R68 (buck enable)')
link(b, 'AVDD',  (54.5, 28.5), (43.2, 35.2), label='AVDD U12 -> DAC island')
link(b, 'AVDD',  (72.3, 26.2), (60.2, 25.0), label='AVDD U7 -> U12 island')
link(b, '+3V3',  (26.5, 39.0), (19.2, 40.6), label='+3V3 C39 -> row west')
link(b, '+3V3',  (26.5, 39.0), (32.2, 44.4), label='+3V3 C39 -> row east')
link(b, 'VLOGIC', (19.9, 40.6), (25.7, 44.8), label='VLOGIC U8 -> row')
link(b, 'VLOGIC', (36.6, 13.8), (35.0, 21.0), label='VLOGIC U1 pin 2 -> island')
save(b, PCB)
