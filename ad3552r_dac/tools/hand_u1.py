import sys, math
sys.path.insert(0, 'tools')
import pcbnew
from manual_route import *
PCB = 'ad3552r_dac.kicad_pcb'
backup(PCB, 'pre_hand_u1')
b = pcbnew.LoadBoard(PCB)
R = lambda xy: tuple(round(v, 2) for v in xy)
# 1. remove the F.Cu copper that walls off U1's left pins
KILL = {'VLOGIC': [((35.51, 20.05), (35.51, 14.73)), ((35.51, 14.73), (35.51, 14.55)), ((35.67, 14.07), (35.99, 13.75)), ((35.67, 14.4), (35.67, 14.07)), ((35.99, 13.75), (36.56, 13.75)), ((35.51, 14.55), (35.67, 14.4))],
        'DQ_A0': [((35.97, 15.55), (35.97, 19.97)), ((36.27, 15.25), (35.97, 15.55)), ((36.56, 15.25), (36.27, 15.25))]}
rm = []
for t in b.GetTracks():
    if t.Type() == pcbnew.PCB_VIA_T or t.GetLayer() != pcbnew.F_Cu or t.GetNetname() not in KILL: continue
    k = {R(P(t.GetStart())), R(P(t.GetEnd()))}
    if any(k == set(s) for s in KILL[t.GetNetname()]): rm.append(t)
print('removing', len(rm), 'of', sum(map(len, KILL.values())))
for t in rm: b.Remove(t)
b.BuildConnectivity(); pcbnew.SaveBoard(PCB, b)
