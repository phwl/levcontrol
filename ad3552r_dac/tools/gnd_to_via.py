"""route stranded GND pads on F.Cu to the nearest existing GND via (tries vias within 4 mm, nearest first)"""
import sys, math
sys.path.insert(0, 'tools')
import pcbnew
from manual_route import *
PCB = 'ad3552r_dac.kicad_pcb'
backup(PCB, 'pre_gnd_to_via')
b = pcbnew.LoadBoard(PCB)
for ref, num in [('R20', 2), ('C31', 2), ('U8', 10), ('U9', 10)]:
    pt = pad_xy(b, ref, num)
    vias = sorted((math.dist(pt, P(t.GetPosition())), P(t.GetPosition())) for t in b.GetTracks()
                  if t.Type() == pcbnew.PCB_VIA_T and t.GetNetname() == 'GND' and math.dist(pt, P(t.GetPosition())) < 4.0)
    done = False
    for d, v in vias:
        for w in (0.15, 0.12):
            p = route_path(b, 'GND', pcbnew.F_Cu, pt, v, w, cell=0.1)
            if p and sum(math.dist(q, r) for q, r in zip(p, p[1:])) < 3 * d + 1:
                for q, r in zip(p, p[1:]): add_track(b, 'GND', pcbnew.F_Cu, q, r, w)
                print('%s.%s -> via %s, %.1f mm, w %.2f' % (ref, num, tuple(round(c, 2) for c in v), sum(math.dist(q, r) for q, r in zip(p, p[1:])), w))
                done = True; break
        if done: break
    if not done: print('%s.%s: no F.Cu route to a GND via' % (ref, num))
save(b, PCB)
