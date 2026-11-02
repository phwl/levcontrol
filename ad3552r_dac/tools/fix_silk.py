#!/usr/bin/env python3
"""Move silkscreen texts that DRC flags (silk_overlap / silk_over_copper) to the nearest clear spot. Run with /usr/bin/python3.

Reads tools/work/drc.json (run check.py first). For each offending reference field (or board text) it tries positions on a
0.25 mm spiral around the part (up to 5 mm), angles 0/90, and text sizes 0.8 -> 0.6 mm, and takes the first spot whose box
clears every pad on that side (+0.1 mm), every other silk item / text on the layer (+0.15 mm) and the board edge.
Backs the board up first.
"""
import json, sys, math
sys.path.insert(0, 'tools')
import pcbnew
from pcbnew import FromMM as MM, ToMM, VECTOR2I, EDA_ANGLE
from manual_route import backup, P, V, OX, OY

PCB = 'ad3552r_dac.kicad_pcb'
d = json.load(open('tools/work/drc.json'))
bad_refs, bad_texts = set(), set()
for v in d['violations']:
    if v['type'] not in ('silk_overlap', 'silk_over_copper'):
        continue
    for i in v['items']:
        s = i['description']
        if s.startswith('Reference field of '):
            bad_refs.add(s.split()[-1])
        elif s.startswith("PCB text"):
            bad_texts.add(i['uuid'])
print('texts to move:', sorted(bad_refs), len(bad_texts), 'board text(s)')

backup(PCB, 'pre_fix_silk')
b = pcbnew.LoadBoard(PCB)
fps = {f.GetReference(): f for f in b.GetFootprints()}

def box(item, m=0.0):
    bb = item.GetBoundingBox()
    return (ToMM(bb.GetLeft()) - OX - m, ToMM(bb.GetTop()) - OY - m, ToMM(bb.GetRight()) - OX + m, ToMM(bb.GetBottom()) - OY + m)

def hit(a, c):
    return not (a[2] <= c[0] or c[2] <= a[0] or a[3] <= c[1] or c[3] <= a[1])

def obstacles(layer, skip):
    """boxes the text on `layer` must avoid; `skip` = the text item itself"""
    side = pcbnew.F_Cu if layer == pcbnew.F_SilkS else pcbnew.B_Cu
    out = []
    for f in b.GetFootprints():
        for p in f.Pads():
            if p.IsOnLayer(side):
                out.append(box(p, 0.1))
        for g in f.GraphicalItems():
            if g.GetLayer() == layer and g.m_Uuid.AsString() != skip.m_Uuid.AsString():
                if isinstance(g, pcbnew.PCB_TEXT) and not g.IsVisible():
                    continue
                out.append(box(g, 0.15))
        for fld in (f.Reference(), f.Value()):
            if fld.GetLayer() == layer and fld.IsVisible() and fld.m_Uuid.AsString() != skip.m_Uuid.AsString():
                out.append(box(fld, 0.15))
    for g in b.GetDrawings():
        if g.GetLayer() == layer and g.m_Uuid.AsString() != skip.m_Uuid.AsString():
            out.append(box(g, 0.15))
    return out

EDGE = (-8.0 + 0.5, -3.0 + 0.5, 87.0 - 0.5, 57.0 - 0.5)
def inside(bx):
    return bx[0] >= EDGE[0] and bx[1] >= EDGE[1] and bx[2] <= EDGE[2] and bx[3] <= EDGE[3]

def place(t, anchor, sizes, angles, reach=5.0):
    obs = obstacles(t.GetLayer(), t)
    cands = []
    n = int(reach / 0.25)
    for i in range(-n, n + 1):
        for j in range(-n, n + 1):
            r = math.hypot(i, j) * 0.25
            if r <= reach:
                cands.append((r, i * 0.25, j * 0.25))
    cands.sort()
    old = (t.GetPosition(), t.GetTextAngle(), t.GetTextSize(), t.GetTextThickness())
    for sz in sizes:
        t.SetTextSize(VECTOR2I(MM(sz), MM(sz))); t.SetTextThickness(MM(sz * 0.15))
        for r, dx, dy in cands:
            for ang in angles:
                t.SetTextAngle(EDA_ANGLE(ang, pcbnew.DEGREES_T))
                t.SetPosition(V(anchor[0] + dx, anchor[1] + dy))
                bx = box(t)
                if inside(bx) and not any(hit(bx, o) for o in obs):
                    return (r, sz, ang)
    t.SetPosition(old[0]); t.SetTextAngle(old[1]); t.SetTextSize(old[2]); t.SetTextThickness(old[3])
    return None

for ref in sorted(bad_refs):
    f = fps[ref]
    t = f.Reference()
    res = place(t, P(f.GetPosition()), (0.8, 0.7, 0.6), (0, 90), reach=6.0)
    print('%-4s %s' % (ref, 'moved %.2f mm from part centre, size %.1f, angle %d' % res if res else 'NO free spot'))
for g in b.GetDrawings():
    if g.m_Uuid.AsString() in bad_texts:
        res = place(g, P(g.GetPosition()), (g.GetTextSize().x / 1e6, 0.9, 0.8), (0,), reach=6.0)
        print('board text', 'moved %.2f mm, size %.1f' % res[:2] if res else 'NO free spot')
b.BuildConnectivity(); pcbnew.SaveBoard(PCB, b)
