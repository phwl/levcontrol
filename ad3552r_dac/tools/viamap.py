"""print an all-layer via-free map around a point:  viamap.py NET x y [half=2.0]"""
import sys
sys.path.insert(0, 'tools')
import pcbnew
from manual_route import *
net, cx, cy = sys.argv[1], float(sys.argv[2]), float(sys.argv[3])
h = float(sys.argv[4]) if len(sys.argv) > 4 else 2.0
b = pcbnew.LoadBoard('ad3552r_dac.kicad_pcb')
rs = [Raster(b, l, net, 0.2, same_net_pads=True) for l in (pcbnew.F_Cu, pcbnew.In2_Cu, pcbnew.In3_Cu, pcbnew.B_Cu)]
n = int(h / 0.1)
print('x from %.1f to %.1f (0.1 mm/col); F=only F.Cu blocks, I=only inner/B blocks, #=both' % (cx - h, cx + h))
for j in range(-n, n + 1, 2):
    y = cy + j * 0.1; row = ''
    for i in range(-n, n + 1):
        x = cx + i * 0.1
        f = rs[0].blocked(x, y); o = any(r.blocked(x, y) for r in rs[1:])
        row += '#' if f and o else 'F' if f else 'I' if o else '.'
    print('%5.1f %s' % (y, row))
