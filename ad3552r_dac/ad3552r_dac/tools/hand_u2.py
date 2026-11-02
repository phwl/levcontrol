import sys, math
sys.path.insert(0, 'tools')
import pcbnew
from manual_route import *
PCB = 'ad3552r_dac.kicad_pcb'
backup(PCB, 'pre_hand_u2')
b = pcbnew.LoadBoard(PCB)
L = (pcbnew.In3_Cu, pcbnew.In2_Cu, pcbnew.B_Cu)
def escape(net, pin, x):
    v = (x, round(pin[1], 2))
    add_track(b, net, pcbnew.F_Cu, pin, v, 0.15); add_via(b, net, v); return v
def connect(net, va, target, width=0.15, existing_via=False):
    """inner path from via va to `target` (a pad: a new via with stub is made next to it; an existing via: used as is)"""
    if existing_via:
        sb = target
    else:
        sb = find_via_spot(b, net, target, stub_from=target, max_r=4.0, track_w=0.15)
        if not sb: print('FAILED via for', net, target); return None
    for lay in L:
        p = route_path(b, net, lay, va, sb, width)
        if p and sum(math.dist(q, r) for q, r in zip(p, p[1:])) < 2.5 * (abs(va[0]-sb[0]) + abs(va[1]-sb[1])) + 3: break
        p = None
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
u2 = lambda n: pad_xy(b, 'U2', n)
pad = lambda r, n: pad_xy(b, r, n)
def step(net, pin, x, target, **kw):
    v = escape(net, pin, x)
    if not v: return None, None
    r = connect(net, v, target, **kw)
    return v, r
import sys, math
sys.path.insert(0, 'tools')
import pcbnew
from manual_route import *
PCB = 'ad3552r_dac.kicad_pcb'
backup(PCB, 'pre_hand_u2')
b = pcbnew.LoadBoard(PCB)
L = (pcbnew.In3_Cu, pcbnew.In2_Cu, pcbnew.B_Cu)
def escape(net, pin, x):
    v = (x, round(pin[1], 2))
    add_track(b, net, pcbnew.F_Cu, pin, v, 0.15); add_via(b, net, v); return v
def connect(net, va, target, width=0.15, existing_via=False):
    """inner path from via va to `target` (a pad: a new via with stub is made next to it; an existing via: used as is)"""
    if existing_via:
        sb = target
    else:
        sb = find_via_spot(b, net, target, stub_from=target, max_r=4.0, track_w=0.15)
        if not sb: print('FAILED via for', net, target); return None
    for lay in L:
        p = route_path(b, net, lay, va, sb, width)
        if p and sum(math.dist(q, r) for q, r in zip(p, p[1:])) < 2.5 * (abs(va[0]-sb[0]) + abs(va[1]-sb[1])) + 3: break
        p = None
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
u2 = lambda n: pad_xy(b, 'U2', n)
pad = lambda r, n: pad_xy(b, r, n)
def step(net, pin, x, target, **kw):
    v = escape(net, pin, x)
    if not v: return None, None
    r = connect(net, v, target, **kw)
    return v, r



v2 = escape('VLOGIC', u2(2), 36.1)
w3 = escape('CS_B_N', u2(3), 35.6)
w4 = escape('SCLK', u2(4), 35.5)
w5 = escape('DQ_B0', u2(5), 35.6)
save(b, PCB)
connect('SCLK', w4, (35.5, 14.75), existing_via=True)
connect('SCLK', w4, (31.79, 38.5), existing_via=True)
connect('DQ_B0', w5, (28.5, 38.0), existing_via=True)
connect('CS_B_N', w3, (29.08, 34.47), existing_via=True)
connect('CS_B_N', w3, pad_xy(b, 'R13', 2))
connect('VLOGIC', (34.65, 36.03), (33.7, 33.45), width=0.3)
save(b, PCB)
