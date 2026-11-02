import sys, math
sys.path.insert(0, 'tools')
import pcbnew
from manual_route import *
PCB = 'ad3552r_dac.kicad_pcb'
backup(PCB, 'pre_hand_pins3')
b = pcbnew.LoadBoard(PCB)

# clear the DVDD branch that walls the lane (re-made afterwards)
R = lambda xy: tuple(round(v, 2) for v in xy)
KILL = [((35.11, 14.06), (35.11, 16.08)), ((35.11, 16.08), (33.49, 17.69)), ((33.49, 17.69), (32.35, 17.69)), ((32.35, 17.69), (32.35, 19.41))]
rm = [t for t in b.GetTracks() if t.Type() != pcbnew.PCB_VIA_T and t.GetNetname() == 'DVDD' and t.GetLayer() == pcbnew.F_Cu and any({R(P(t.GetStart())), R(P(t.GetEnd()))} == set(k) for k in KILL)]
print('removing', len(rm))
for t in rm: b.Remove(t)
b.BuildConnectivity(); pcbnew.SaveBoard(PCB, b)
