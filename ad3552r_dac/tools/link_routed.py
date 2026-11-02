"""link_routed.py NET REF.PAD REF.PAD : like manual_route.link, but each end may reach its via along an A* F.Cu path (not only a straight stub)"""
import sys, math
sys.path.insert(0, 'tools')
import pcbnew
from manual_route import *
PCB = 'ad3552r_dac.kicad_pcb'
net = sys.argv[1]
b = pcbnew.LoadBoard(PCB)
ends = [pad_xy(b, *a.split('.')) for a in sys.argv[2:4]]

def spots(pt, maxr=4.0):
    rv = [Raster(b, l, net, 0.2, same_net_pads=True) for l in (pcbnew.F_Cu, pcbnew.In2_Cu, pcbnew.In3_Cu, pcbnew.B_Cu)]
    out = []
    n = int(maxr / 0.1)
    for i in range(-n, n + 1, 2):
        for j in range(-n, n + 1, 2):
            x, y = pt[0] + i * 0.1, pt[1] + j * 0.1
            d = math.hypot(x - pt[0], y - pt[1])
            if 0.3 < d <= maxr and not any(r.blocked(x, y) for r in rv):
                out.append((d, (x, y)))
    return sorted(out)

def reach(pt):
    for d, s in spots(pt)[:50]:
        p = route_path(b, net, pcbnew.F_Cu, pt, s, 0.15, cell=0.1)
        if p and sum(math.dist(q, r) for q, r in zip(p, p[1:])) < 2.5 * d + 1:
            return s, p
    return None, None

sa, pa = reach(ends[0]); sb, pb = reach(ends[1])
print('via A', sa, ' via B', sb)
if sa and sb:
    for lay in (pcbnew.In3_Cu, pcbnew.In2_Cu, pcbnew.B_Cu):
        path = route_path(b, net, lay, sa, sb, 0.15)
        if path: break
    if path:
        backup(PCB, 'pre_link_' + net)
        for pth in (pa, pb):
            for q, r in zip(pth, pth[1:]): add_track(b, net, pcbnew.F_Cu, q, r, 0.15)
        add_via(b, net, sa); add_via(b, net, sb)
        for q, r in zip(path, path[1:]): add_track(b, net, lay, q, r, 0.15)
        save(b, PCB)
        print('linked on %s, %.1f mm' % (b.GetLayerName(lay), sum(math.dist(q, r) for q, r in zip(path, path[1:]))))
    else:
        print('no inner path between the vias')
