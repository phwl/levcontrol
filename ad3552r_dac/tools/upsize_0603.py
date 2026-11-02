#!/usr/bin/env python3
"""Upsize the gain resistors R32-R39 from 0402 to 0603. Run with /usr/bin/python3.

usage: upsize_0603.py SRC DST
Swaps the footprints, rips up the 12 signal nets they sit on (OUTn_RFB/INV/NEG: nothing else), and moves each
part to the nearest clean spot (any 90 deg rotation): courtyard clear of other parts, pads >= 0.12 mm from foreign
copper on F.Cu and >= 0.3 mm from via centres. Then route those nets with route_stage.py (stage 'gain0603').
If DST is the project board it is backed up to tools/backups/ first.
"""
import sys, os, shutil, time, math
import pcbnew
from pcbnew import FromMM as MM, ToMM, VECTOR2I

src, dst = sys.argv[1:3]
OX, OY = 20.0, 10.0
PARTS = ['R33', 'R35', 'R32', 'R34', 'R36', 'R37', 'R38', 'R39']     # gain resistors, tightest first
NETS = {'OUT%d_%s' % (c, s) for c in range(4) for s in ('RFB', 'INV', 'NEG')}
LIB = {'R': ('Resistor_SMD', 'R_0603_1608Metric'), 'C': ('Capacitor_SMD', 'C_0603_1608Metric')}
CLR, VIA_R = 0.12, 0.3

if os.path.abspath(dst).endswith('ad3552r_dac/ad3552r_dac.kicad_pcb') and os.path.exists(dst):
    os.makedirs('tools/backups', exist_ok=True)
    shutil.copy(dst, 'tools/backups/board_%s_pre_upsize0603.kicad_pcb' % time.strftime('%H%M%S'))
b = pcbnew.LoadBoard(src)

# 1. rip up the parts' nets
rip = [t for t in b.GetTracks() if t.GetNetname() in NETS]
for t in rip:
    b.Remove(t)
print('ripped %d tracks/vias on %d nets' % (len(rip), len(NETS)))

# 2. swap footprints in place
fps = {f.GetReference(): f for f in b.GetFootprints()}
new = {}
for ref in PARTS:
    o = fps[ref]
    lib, name = LIB[ref[0]]
    n = pcbnew.FootprintLoad('/usr/share/kicad/footprints/%s.pretty' % lib, name)
    n.SetFPID(pcbnew.LIB_ID(lib, name))
    b.Add(n)
    n.SetPosition(o.GetPosition()); n.SetOrientation(o.GetOrientation())
    n.SetPath(o.GetPath()); n.SetAttributes(o.GetAttributes())
    n.SetReference(ref); n.SetValue(o.GetValue())
    for fld in o.GetFields():
        if fld.GetName() not in ('Reference', 'Value', 'Footprint'):
            n.SetField(fld.GetName(), fld.GetText()); n.GetField(fld.GetName()).SetVisible(fld.IsVisible())
    nets = {p.GetNumber(): p.GetNet() for p in o.Pads()}
    for p in n.Pads():
        p.SetNet(nets[p.GetNumber()])
    b.Remove(o)
    new[ref] = n

# 3. obstacles
others = [f for f in b.GetFootprints() if f.GetReference() not in new]
def crt(f):
    f.BuildCourtyardCaches()
    s = f.GetCourtyard(pcbnew.F_CrtYd)
    return s.BBox() if s.OutlineCount() else f.GetBoundingBox(False)
boxes = {f.GetReference(): crt(f) for f in others if not f.IsFlipped()}
fcu = [t for t in b.GetTracks() if t.Type() != pcbnew.PCB_VIA_T and t.GetLayer() == pcbnew.F_Cu]
vias = [t for t in b.GetTracks() if t.Type() == pcbnew.PCB_VIA_T]
fpads = [p for f in others for p in f.Pads() if p.IsOnLayer(pcbnew.F_Cu)]
# net -> pad positions on other parts (for the wire-length estimate)
anchors = {}
for f in others:
    for p in f.Pads():
        anchors.setdefault(p.GetNetname(), []).append(p.GetPosition())

def near(f, R):
    """static obstacles within R mm of footprint f"""
    c = f.GetPosition(); r = MM(R)
    box = pcbnew.BOX2I(VECTOR2I(c.x - r, c.y - r), VECTOR2I(2 * r, 2 * r))
    return ([o for o in boxes.values() if box.Intersects(o)],
            [t for t in fcu if box.Intersects(t.GetBoundingBox())],
            [q for q in fpads if box.Intersects(q.GetBoundingBox())],
            [v for v in vias if box.Contains(v.GetPosition())])

def ok(f, obs):
    bxs, trk, pads, vs = obs
    bb = crt(f)
    if any(bb.Intersects(o) for o in bxs):
        return False
    for p in f.Pads():
        ps = p.GetEffectiveShape(pcbnew.F_Cu)
        if any(ps.Collide(t.GetEffectiveShape(pcbnew.F_Cu), MM(CLR)) for t in trk):
            return False
        if any(q.GetNetCode() != p.GetNetCode() and ps.Collide(q.GetEffectiveShape(pcbnew.F_Cu), MM(CLR)) for q in pads):
            return False
        if any(ps.Collide(pcbnew.SHAPE_CIRCLE(v.GetPosition(), MM(0.2)), MM(VIA_R - 0.2)) for v in vs):
            return False
    return True

def wl(f):
    s = 0.0
    for p in f.Pads():
        a = anchors.get(p.GetNetname(), [])
        if a:
            s += min(math.hypot(ToMM(p.GetPosition().x - q.x), ToMM(p.GetPosition().y - q.y)) for q in a)
    return s

# 4. clean spots for each part against the fixed board (0.1 mm grid, any 90 deg rotation), best KEEP by cost:
#    distance moved + 0.3 x estimated wire length to the pads it connects to
STEP, R, KEEP = 0.1, 4.0, 200
cands = {}
for ref in PARTS:
    f = new[ref]
    x0, y0 = f.GetPosition().x, f.GetPosition().y
    rot0 = f.GetOrientationDegrees()
    obs = near(f, R + 2.5)
    k = int(R / STEP); cs = []
    for rot in (rot0, rot0 + 90, rot0 + 180, rot0 + 270):
        f.SetOrientationDegrees(rot)
        for i in range(-k, k + 1):
            for j in range(-k, k + 1):
                d = math.hypot(i * STEP, j * STEP)
                if d > R:
                    continue
                f.SetPosition(VECTOR2I(x0 + MM(i * STEP), y0 + MM(j * STEP)))
                if ok(f, obs):
                    cs.append((0.5 * d + 0.3 * wl(f) + (0 if rot % 180 == rot0 % 180 else 0.05), f.GetPosition(), rot % 360, d, crt(f)))
    f.SetPosition(VECTOR2I(x0, y0)); f.SetOrientationDegrees(rot0)
    cs.sort(key=lambda c: c[0])
    cands[ref] = (rot0, cs[:KEEP])
    print('%s: %d clean spots' % (ref, len(cs)), flush=True)

# 5. cheapest combination in which the moved parts' courtyards do not overlap each other (depth-first, bounded)
order = sorted(PARTS, key=lambda r: len(cands[r][1]))
best = [float('inf'), None]
rest = [sum(cands[r][1][0][0] for r in order[i:] if cands[r][1]) for i in range(len(order) + 1)]   # lower bound
def dfs(i, chosen, cost):
    if i == len(order):
        best[0], best[1] = cost, dict(chosen); return
    ref = order[i]
    for c in cands[ref][1]:                  # sorted by cost, so stop at the first that cannot beat the best
        if cost + c[0] + rest[i + 1] >= best[0]:
            break
        if any(c[4].Intersects(chosen[o][4]) for o in chosen):
            continue
        chosen[ref] = c
        dfs(i + 1, chosen, cost + c[0])
        del chosen[ref]
dfs(0, {}, 0.0)
if best[1] is None:
    raise SystemExit('no combination found: nothing saved')
for ref in PARTS:
    c = best[1][ref]; f = new[ref]
    f.SetPosition(c[1]); f.SetOrientationDegrees(c[2])
    print('%s: moved %.2f mm, rot %g -> %g' % (ref, c[3], cands[ref][0] % 360, c[2]))

b.BuildConnectivity()
pcbnew.ZONE_FILLER(b).Fill(b.Zones())
pcbnew.SaveBoard(dst, b)
print('saved', dst)
