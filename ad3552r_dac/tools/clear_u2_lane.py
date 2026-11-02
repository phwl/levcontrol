import sys, math
sys.path.insert(0, 'tools')
import pcbnew
from manual_route import *
PCB = 'ad3552r_dac.kicad_pcb'
backup(PCB, 'pre_clear_u2')
b = pcbnew.LoadBoard(PCB)
R = lambda xy: tuple(round(v, 2) for v in xy)
KILL = [((35.44, 33.45), (36.36, 33.45)), ((36.36, 33.45), (36.56, 33.25)), ((35.36, 33.45), (35.44, 33.45)), ((35.44, 35.07), (35.44, 33.45)), ((35.08, 35.43), (35.44, 35.07)), ((35.08, 36.03), (35.08, 35.43))]
rm = [t for t in b.GetTracks() if t.Type() != pcbnew.PCB_VIA_T and t.GetNetname() == 'VLOGIC' and t.GetLayer() == pcbnew.F_Cu and any({R(P(t.GetStart())), R(P(t.GetEnd()))} == set(k) for k in KILL)]
print('removing', len(rm), 'of', len(KILL))
for t in rm: b.Remove(t)
b.BuildConnectivity(); pcbnew.SaveBoard(PCB, b)
