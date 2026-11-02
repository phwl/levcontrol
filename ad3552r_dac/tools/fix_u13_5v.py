import sys, math
sys.path.insert(0, 'tools')
import pcbnew
from manual_route import *
PCB = 'ad3552r_dac.kicad_pcb'
backup(PCB, 'pre_u13_5v')
b = pcbnew.LoadBoard(PCB)
# remove ADJN diagonal stub + via at (10.8,11.2) + its In2 link
rm = []
for t in b.GetTracks():
    if t.GetNetname() != '/Power/ADJN': continue
    if t.Type() == pcbnew.PCB_VIA_T:
        if math.dist(P(t.GetPosition()), (10.8, 11.2)) < 0.1: rm.append(t)
    else:
        s, e = P(t.GetStart()), P(t.GetEnd())
        if t.GetLayer() == pcbnew.In2_Cu and (math.dist(s, (10.8, 11.2)) < 0.1 or math.dist(e, (10.8, 11.2)) < 0.1): rm.append(t)
        if t.GetLayer() == pcbnew.F_Cu and {tuple(map(lambda v: round(v, 2), s)), tuple(map(lambda v: round(v, 2), e))} == {(11.25, 10.75), (10.8, 11.2)}: rm.append(t)
for t in rm: b.Remove(t)
print('removed', len(rm))
b.BuildConnectivity()
pcbnew.SaveBoard(PCB, b)
