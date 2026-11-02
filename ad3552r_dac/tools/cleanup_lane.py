import sys, math
sys.path.insert(0, 'tools')
import pcbnew
from manual_route import *
PCB = 'ad3552r_dac.kicad_pcb'
backup(PCB, 'pre_cleanup_lane')
b = pcbnew.LoadBoard(PCB)
R = lambda xy: tuple(round(v, 2) for v in xy)
KILL = [((36.1, 13.75), (39.0, 23.0)), ((39.0, 23.0), (39.0, 23.8)), ((39.0, 23.8), (38.8, 24.0)), ((38.8, 24.0), (37.4, 24.0)), ((37.4, 24.0), (34.99, 21.7)), ((34.78, 20.79), (35.51, 20.05))]
rm = []
for t in b.GetTracks():
    if t.Type() == pcbnew.PCB_VIA_T or t.GetNetname() != 'VLOGIC': continue
    if any({R(P(t.GetStart())), R(P(t.GetEnd()))} == set(k) for k in KILL): rm.append(t)
dv = [t for t in b.GetTracks() if t.Type() == pcbnew.PCB_VIA_T and t.GetNetname() == 'DQ_A0' and math.dist(P(t.GetPosition()), (35.6, 15.25)) < 0.1]
if len(dv) > 1: rm.append(dv[1])
print('removing', len(rm))
for t in rm: b.Remove(t)
b.BuildConnectivity(); pcbnew.SaveBoard(PCB, b)
