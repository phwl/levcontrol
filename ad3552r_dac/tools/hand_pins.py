import sys, math
sys.path.insert(0, 'tools')
import pcbnew
from manual_route import *
PCB = 'ad3552r_dac.kicad_pcb'
backup(PCB, 'pre_hand_pins')
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
        if not sb: print('FAILED via for', net, target); return None
    for lay in L:
        p = route_path(b, net, lay, va, sb, width)
        if p: break
    else:
        print('FAILED path for', net, va, sb); return None
    if not existing_via:
        if math.dist(target, sb) > 0.05: add_track(b, net, pcbnew.F_Cu, target, sb, 0.15)
        add_via(b, net, sb)
    for q, r in zip(p, p[1:]): add_track(b, net, lay, q, r, width)
    print('%-8s ok %.1f mm on %s' % (net, sum(math.dist(q, r) for q, r in zip(p, p[1:])), b.GetLayerName(lay)))
    return sb

u1 = lambda n: pad_xy(b, 'U1', n)
u2 = lambda n: pad_xy(b, 'U2', n)
pad = lambda r, n: pad_xy(b, r, n)
v3 = escape('CS_A_N', u1(3), 35.6); v4 = escape('SCLK', u1(4), 36.1); v6 = escape('DQ_A1', u1(6), 36.1); v7 = escape('DQ_A2', u1(7), 35.6)
w3 = escape('CS_B_N', u2(3), 35.6); w4 = escape('SCLK', u2(4), 36.1); w5 = escape('DQ_B0', u2(5), 35.6)
connect('CS_A_N', v3, pad('R17', 2))
connect('DQ_A2', v7, pad('R26', 1))
sr = connect('DQ_A1', v6, pad('R25', 1))
if sr: connect('DQ_A1', sr, pad('R4', 2))
connect('SCLK', v4, w4, existing_via=True)
connect('SCLK', w4, pad('R11', 2))
connect('CS_B_N', w3, pad('R13', 2))
connect('DQ_B0', w5, (28.5, 38.0), existing_via=True)
save(b, PCB)
