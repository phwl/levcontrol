import sys, math
sys.path.insert(0, 'tools')
import pcbnew
from manual_route import *
PCB = 'ad3552r_dac.kicad_pcb'
backup(PCB, 'pre_hand_pins3d')
b = pcbnew.LoadBoard(PCB)
L = (pcbnew.In3_Cu, pcbnew.In2_Cu, pcbnew.B_Cu)
def escape(net, pin, x):
    v = find_via_spot(b, net, (x, pin[1]), stub_from=pin, max_r=1.0, track_w=0.15)
    if not v: print('FAILED escape', net, pin); return None
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
backup(PCB, 'pre_hand_pins3d')
b = pcbnew.LoadBoard(PCB)
L = (pcbnew.In3_Cu, pcbnew.In2_Cu, pcbnew.B_Cu)
def escape(net, pin, x):
    v = find_via_spot(b, net, (x, pin[1]), stub_from=pin, max_r=1.0, track_w=0.15)
    if not v: print('FAILED escape', net, pin); return None
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
pad = lambda r, n: pad_xy(b, r, n)
def step(net, pin, x, target, **kw):
    v = escape(net, pin, x)
    if not v: return None, None
    r = connect(net, v, target, **kw)
    return v, r

R = lambda xy: tuple(round(v, 2) for v in xy)
def mv(old, new, net):
    seen = False; rmv = []
    for t in b.GetTracks():
        if t.GetNetname() != net: continue
        if t.Type() == pcbnew.PCB_VIA_T:
            if math.dist(P(t.GetPosition()), old) < 0.1:
                if seen: rmv.append(t)
                else: t.SetPosition(V(*new)); seen = True
        else:
            if math.dist(P(t.GetStart()), old) < 0.1: t.SetStart(V(*new))
            if math.dist(P(t.GetEnd()), old) < 0.1: t.SetEnd(V(*new))
    for t in rmv: b.Remove(t)
KILL = [((36.56, 13.25), (35.92, 13.25)), ((35.92, 13.25), (35.11, 14.06)), ((35.11, 14.06), (32.15, 14.06))]
rm = [t for t in b.GetTracks() if t.Type() != pcbnew.PCB_VIA_T and t.GetNetname() == 'DVDD' and t.GetLayer() == pcbnew.F_Cu and any({R(P(t.GetStart())), R(P(t.GetEnd()))} == set(k) for k in KILL)]
print('dvdd removed', len(rm))
for t in rm: b.Remove(t)
b.BuildConnectivity(); pcbnew.SaveBoard(PCB, b)
b = pcbnew.LoadBoard(PCB)

mv((35.3, 14.25), (35.6, 14.25), 'CS_A_N')
vd = escape('DVDD', u1(1), 36.1)
print('dvdd via', vd)
if vd: connect('DVDD', vd, (31.53, 13.44), existing_via=True)
save(b, PCB)
v4, _ = step('SCLK', u1(4), 36.1, pad('R11', 2))
save(b, PCB)
v6, sr = step('DQ_A1', u1(6), 36.1, pad('R25', 1))
if sr: connect('DQ_A1', sr, pad('R4', 2))
save(b, PCB)
