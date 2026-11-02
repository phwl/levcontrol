import sys, math
sys.path.insert(0, 'tools')
import pcbnew
from manual_route import *
PCB = 'ad3552r_dac.kicad_pcb'
backup(PCB, 'pre_fix_ldac')
b = pcbnew.LoadBoard(PCB)
R = lambda xy: tuple(round(v, 2) for v in xy)
rm = [t for t in b.GetTracks() if t.Type() != pcbnew.PCB_VIA_T and t.GetNetname() == 'LDAC_N' and t.GetLayer() == pcbnew.In2_Cu and {R(P(t.GetStart())), R(P(t.GetEnd()))} == {(32.42, 31.09), (36.8, 35.48)}]
print('removing', len(rm))
for t in rm: b.Remove(t)
b.BuildConnectivity(); pcbnew.SaveBoard(PCB, b)
b = pcbnew.LoadBoard(PCB)
for lay in (pcbnew.In2_Cu, pcbnew.In3_Cu, pcbnew.B_Cu):
    p = route_path(b, 'LDAC_N', lay, (32.42, 31.09), (36.8, 35.48), 0.15)
    if p: break
print(b.GetLayerName(lay) if p else None, p)
if p and lay == pcbnew.In2_Cu:
    for q, r in zip(p, p[1:]): add_track(b, 'LDAC_N', lay, q, r, 0.15)
    save(b, PCB)
