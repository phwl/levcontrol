"""for stranded GND pads: new via at the nearest all-layer-free spot that an F.Cu path from the pad can reach"""
import sys, math
sys.path.insert(0, 'tools')
import pcbnew
from manual_route import *
PCB = 'ad3552r_dac.kicad_pcb'
backup(PCB, 'pre_gnd_newvia')
b = pcbnew.LoadBoard(PCB)
PADS = [tuple(a.split('.')) for a in sys.argv[1:]] or [('R20', '2'), ('C31', '2'), ('U8', '10'), ('U9', '10')]
for ref, num in PADS:
    pt = pad_xy(b, ref, num)
    rv = [Raster(b, l, 'GND', 0.2, same_net_pads=True) for l in (pcbnew.F_Cu, pcbnew.In2_Cu, pcbnew.In3_Cu, pcbnew.B_Cu)]
    cands = []
    for i in range(-40, 41, 2):
        for j in range(-40, 41, 2):
            x, y = pt[0] + i * 0.1, pt[1] + j * 0.1
            d = math.hypot(x - pt[0], y - pt[1])
            if 0.3 < d <= 4.0 and not any(r.blocked(x, y) for r in rv):
                cands.append((d, (x, y)))
    cands.sort()
    fr = Raster(b, pcbnew.F_Cu, 'GND', 0.075)
    done = False
    for d, s in cands[:60]:
        p = route_path(b, 'GND', pcbnew.F_Cu, pt, s, 0.15, cell=0.1)
        if p and sum(math.dist(q, r) for q, r in zip(p, p[1:])) < 2.5 * d + 1:
            for q, r in zip(p, p[1:]): add_track(b, 'GND', pcbnew.F_Cu, q, r, 0.15)
            add_via(b, 'GND', s)
            print('%s.%s -> new via (%.2f, %.2f), path %.1f mm' % (ref, num, s[0], s[1], sum(math.dist(q, r) for q, r in zip(p, p[1:]))))
            save(b, PCB); b = pcbnew.LoadBoard(PCB); done = True; break
    if not done: print('%s.%s: none of %d via spots reachable' % (ref, num, len(cands)))
