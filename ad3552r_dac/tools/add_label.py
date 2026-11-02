#!/usr/bin/env python3
"""Put a board-level silkscreen legend in the first clear spot. Run with /usr/bin/python3 from the project dir.

usage: add_label.py "TEXT" [--apply]
Tries F.Silkscreen then B.Silkscreen (mirrored), text heights 1.2 / 1.0 / 0.8 mm, horizontal, on a 0.5 mm grid over the board,
nearest the board's lower-left first. The text box (+0.15) must clear every pad on that side (+0.1), every other silk item
and visible field, and stay 0.5 mm inside the edge (same tests as fix_silk.py). Backs the board up before saving.
"""
import sys, math
sys.path.insert(0, 'tools')
import pcbnew
from pcbnew import FromMM as MM, ToMM, VECTOR2I
from manual_route import backup, V, OX, OY

PCB = 'ad3552r_dac.kicad_pcb'
TEXT = sys.argv[1]
APPLY = '--apply' in sys.argv
b = pcbnew.LoadBoard(PCB)

def box(item, m=0.0):
    bb = item.GetBoundingBox()
    return (ToMM(bb.GetLeft()) - OX - m, ToMM(bb.GetTop()) - OY - m, ToMM(bb.GetRight()) - OX + m, ToMM(bb.GetBottom()) - OY + m)

def hit(a, c):
    return not (a[2] <= c[0] or c[2] <= a[0] or a[3] <= c[1] or c[3] <= a[1])

def obstacles(layer):
    side = pcbnew.F_Cu if layer == pcbnew.F_SilkS else pcbnew.B_Cu
    out = []
    for f in b.GetFootprints():
        out += [box(p, 0.1) for p in f.Pads() if p.IsOnLayer(side) or p.GetDrillSize().x > 0]
        for g in f.GraphicalItems():
            if g.GetLayer() == layer and not (isinstance(g, pcbnew.PCB_TEXT) and not g.IsVisible()):
                out.append(box(g, 0.15))
        out += [box(t, 0.15) for t in (f.Reference(), f.Value()) if t.GetLayer() == layer and t.IsVisible()]
    out += [box(g, 0.15) for g in b.GetDrawings() if g.GetLayer() == layer]
    # vias are tented, so silk may cross them; --avoid-vias keeps clear anyway
    if "--avoid-vias" in sys.argv:
        out += [box(t, 0.1) for t in b.GetTracks() if t.Type() == pcbnew.PCB_VIA_T]
    return out

EDGE = (-8.0 + 0.5, -3.0 + 0.5, 87.0 - 0.5, 57.0 - 0.5)
t = pcbnew.PCB_TEXT(b); t.SetText(TEXT)
found = None
for layer in (pcbnew.F_SilkS, pcbnew.B_SilkS):
    obs = obstacles(layer)
    t.SetLayer(layer); t.SetMirrored(layer == pcbnew.B_SilkS)
    for sz in (1.2, 1.0, 0.8):
        t.SetTextSize(VECTOR2I(MM(sz), MM(sz))); t.SetTextThickness(MM(max(0.15, sz * 0.15)))
        cands = sorted(((math.hypot(x * 0.5 + 8, 57 - y * 0.5), x * 0.5, y * 0.5) for x in range(-16, 175) for y in range(-6, 115)))
        for _, x, y in cands:
            t.SetPosition(V(x, y)); bx = box(t)
            if bx[0] >= EDGE[0] and bx[1] >= EDGE[1] and bx[2] <= EDGE[2] and bx[3] <= EDGE[3] and not any(hit(bx, o) for o in obs):
                found = (layer, sz, x, y); break
        if found: break
    if found: break

if not found:
    sys.exit('no clear spot for the text')
print('%s, %.1f mm text at (%.1f, %.1f)' % (b.GetLayerName(found[0]), found[1], found[2], found[3]))
if APPLY:
    backup(PCB, 'pre_label')
    b.Add(t); pcbnew.SaveBoard(PCB, b); print('added')
