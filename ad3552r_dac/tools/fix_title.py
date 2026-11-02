"""move the board title to a clear spot (0.8 mm text): pads, silk, texts and part courtyards are avoided; F side first, then B"""
import sys, math
sys.path.insert(0, 'tools')
import pcbnew
from pcbnew import FromMM as MM, VECTOR2I, EDA_ANGLE
import fix_silk_lib as L
L.backup(L.PCB, 'pre_fix_title')
b = L.b
g = next(g for g in b.GetDrawings() if isinstance(g, pcbnew.PCB_TEXT) and g.GetText().startswith('AD3552R'))
g.SetTextSize(VECTOR2I(MM(0.8), MM(0.8))); g.SetTextThickness(MM(0.12)); g.SetTextAngle(EDA_ANGLE(0, pcbnew.DEGREES_T))
best = None
for layer in (pcbnew.F_SilkS, pcbnew.B_SilkS):
    g.SetLayer(layer); g.SetMirrored(layer == pcbnew.B_SilkS)
    side = pcbnew.F_Cu if layer == pcbnew.F_SilkS else pcbnew.B_Cu
    obs = L.obstacles(layer, g)
    for f in b.GetFootprints():
        if f.GetSide() == (0 if side == pcbnew.F_Cu else 1) or f.GetReference().startswith('H'):
            obs.append(L.box(f, 0.1) if f.GetCourtyard(side).OutlineCount() == 0 else (lambda bb: (pcbnew.ToMM(bb.GetLeft()) - L.OX - 0.1, pcbnew.ToMM(bb.GetTop()) - L.OY - 0.1, pcbnew.ToMM(bb.GetRight()) - L.OX + 0.1, pcbnew.ToMM(bb.GetBottom()) - L.OY + 0.1))(f.GetCourtyard(side).BBox()))
    for yy in [56.0 - 0.25 * k for k in range(0, 240)]:          # bottom edge first, then upwards
        for xx in [39.5 + 0.5 * s * k for k in range(0, 100) for s in (1, -1)]:
            g.SetPosition(L.V(xx, yy))
            bx = L.box(g)
            if L.inside(bx) and not any(L.hit(bx, o) for o in obs):
                best = (layer, xx, yy); break
        if best: break
    if best: break
if best:
    layer, xx, yy = best
    g.SetLayer(layer); g.SetMirrored(layer == pcbnew.B_SilkS); g.SetPosition(L.V(xx, yy))
    print('title on %s at (%.2f, %.2f)' % (b.GetLayerName(layer), xx, yy))
    b.BuildConnectivity(); pcbnew.SaveBoard(L.PCB, b)
else:
    print('no spot found')
