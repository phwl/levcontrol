"""B_DQ_B1 part 2: C42.1 reaches the VLOGIC column with an L (right, then down) instead of the diagonal, freeing a via spot above R8 pad 1."""
import sys, math
sys.path.insert(0, 'tools')
import pcbnew
from manual_route import *
PCB = 'ad3552r_dac.kicad_pcb'
R = lambda xy: tuple(round(v, 2) for v in xy)
if sys.argv[1:] == ['remove']:
    backup(PCB, 'pre_bdqb1b')
    b = pcbnew.LoadBoard(PCB)
    rm = [t for t in b.GetTracks() if t.Type() != pcbnew.PCB_VIA_T and t.GetNetname() == 'VLOGIC' and t.GetLayer() == pcbnew.F_Cu and {R(P(t.GetStart())), R(P(t.GetEnd()))} == {(11.98, 37.0), (12.88, 37.9)}]
    print('removed', len(rm))
    for t in rm: b.Remove(t)
    b.BuildConnectivity(); pcbnew.SaveBoard(PCB, b)
else:
    b = pcbnew.LoadBoard(PCB)
    add_track(b, 'VLOGIC', pcbnew.F_Cu, (11.98, 37.0), (12.88, 37.0), 0.15)
    add_track(b, 'VLOGIC', pcbnew.F_Cu, (12.88, 37.0), (12.88, 37.9), 0.15)
    va, vb = (12.3, 37.75), (14.17, 41.84)
    for lay in (pcbnew.In3_Cu, pcbnew.In2_Cu, pcbnew.B_Cu):
        p = route_path(b, 'B_DQ_B1', lay, va, vb, 0.15)
        if p: break
    print(b.GetLayerName(lay) if p else None, p)
    if p:
        add_track(b, 'B_DQ_B1', pcbnew.F_Cu, pad_xy(b, 'R8', 1), va, 0.15); add_via(b, 'B_DQ_B1', va)
        add_track(b, 'B_DQ_B1', pcbnew.F_Cu, pad_xy(b, 'U9', 13), vb, 0.15); add_via(b, 'B_DQ_B1', vb)
        for q, r in zip(p, p[1:]): add_track(b, 'B_DQ_B1', lay, q, r, 0.15)
    save(b, PCB)
