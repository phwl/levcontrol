import sys, math
sys.path.insert(0, 'tools')
import pcbnew
from manual_route import *
PCB = 'ad3552r_dac.kicad_pcb'
b = pcbnew.LoadBoard(PCB)
L = (pcbnew.In3_Cu, pcbnew.In2_Cu, pcbnew.B_Cu)
def escape(net, pin, x):
    v = (x, pin[1]); add_track(b, net, pcbnew.F_Cu, pin, v, 0.15); add_via(b, net, v); return v
def connect(net, va, target, width=0.15, existing_via=False):
    """inner path from via va to `target` (a pad: a new via with stub is made next to it; an existing via: used as is)"""
    if existing_via:
        sb = target
    else:
        sb = find_via_spot(b, net, target, stub_from=target, max_r=4.0, track_w=0.15)
        if not sb: print('FAILED via for', net, target); return False
    for lay in L:
        p = route_path(b, net, lay, va, sb, width)
        if p: break
    else:
        print('FAILED path for', net, va, sb); return False
    if not existing_via:
        if math.dist(target, sb) > 0.05: add_track(b, net, pcbnew.F_Cu, target, sb, 0.15)
        add_via(b, net, sb)
    for q, r in zip(p, p[1:]): add_track(b, net, lay, q, r, width)
    print('%-8s ok %.1f mm on %s' % (net, sum(math.dist(q, r) for q, r in zip(p, p[1:])), b.GetLayerName(lay)))
    return True
u = lambda n: pad_xy(b, 'U1', n)
v2 = escape('VLOGIC', u(2), 36.1)
connect('VLOGIC', v2, pad_xy(b, 'R22', 1), width=0.3)
v5 = escape('DQ_A0', u(5), 35.6)
connect('DQ_A0', v5, (35.97, 19.97), existing_via=True)
save(b, PCB)
