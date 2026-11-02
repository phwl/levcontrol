#!/usr/bin/env python3
"""Hand-route the last open connections of stage 1 (power block): see manual_route.py. Run with /usr/bin/python3."""
import os, sys
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from manual_route import *

PCB = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'ad3552r_dac.kicad_pcb')
backup(PCB, 'power_fix')
b = pcbnew.LoadBoard(PCB)
I2V5, I12V = (7.0, 27.0, 26.0, 35.5), (7.0, 11.0, 25.0, 26.5)

def tie(net, pad_xy_, island, label):
    spot = find_via_spot(b, net, pad_xy_, stub_from=pad_xy_, zone_rect=island, max_r=3.5)
    if not spot:
        print('FAILED to find a via spot for', label); return None
    add_track(b, net, pcbnew.F_Cu, pad_xy_, spot, 0.2); add_via(b, net, spot)
    print('%s: via at (%.2f, %.2f), stub %.2f mm' % (label, *spot, math.dist(pad_xy_, spot)))
    return spot

tie('+2V5', pad_xy(b, 'L1', 2), I2V5, 'L1 pad 2 -> +2V5 island')
tie('+12V', pad_xy(b, 'C71', 1), I12V, 'C71 pad 1 -> +12V island')

def link(net, a_pt, a_zone, b_pt, b_zone, layers, label, width=0.3):
    sa = find_via_spot(b, net, a_pt, stub_from=a_pt if not a_zone else None, zone_rect=a_zone, max_r=6.0)
    sb = find_via_spot(b, net, b_pt, stub_from=b_pt if not b_zone else None, zone_rect=b_zone, max_r=6.0)
    if not (sa and sb):
        print('FAILED vias for', label, sa, sb); return
    for lay in layers:
        path = route_path(b, net, lay, sa, sb, width)
        if path:
            break
    else:
        print('FAILED path for', label); return
    if not a_zone: add_track(b, net, pcbnew.F_Cu, a_pt, sa, 0.2)
    if not b_zone: add_track(b, net, pcbnew.F_Cu, b_pt, sb, 0.2)
    add_via(b, net, sa); add_via(b, net, sb)
    for p, q in zip(path, path[1:]):
        add_track(b, net, lay, p, q, width)
    print('%s: %.1f mm on %s via spots (%.1f,%.1f) -> (%.1f,%.1f), %d segments' % (label, sum(math.dist(p, q) for p, q in zip(path, path[1:])), b.GetLayerName(lay), *sa, *sb, len(path) - 1))

# +2V5: U13's enable network (top) -> the +2V5 island
link('+2V5', (15.5, 10.8), None, (16.0, 31.0), I2V5, (pcbnew.In2_Cu, pcbnew.In3_Cu), '+2V5 U13 enables -> island')
# +12V: island -> U12 input pads
link('+12V', (22.0, 14.0), I12V, (61.5, 26.0), None, (pcbnew.In2_Cu, pcbnew.In3_Cu), '+12V island -> U12')
save(b, PCB)
