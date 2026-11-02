import sys
sys.path.insert(0, 'tools')
import pcbnew
from manual_route import *
PCB = 'ad3552r_dac.kicad_pcb'
backup(PCB, 'pre_n5')
b = pcbnew.LoadBoard(PCB)
rm = [t for t in b.GetTracks() if t.Type() != pcbnew.PCB_VIA_T and t.GetNetname() == '-5V' and t.GetLayer() == pcbnew.F_Cu
      and {tuple(round(v, 2) for v in P(t.GetStart())), tuple(round(v, 2) for v in P(t.GetEnd()))} == {(50.89, 31.52), (52.75, 31.52)}]
print(len(rm))
for t in rm: b.Remove(t)
b.BuildConnectivity(); pcbnew.SaveBoard(PCB, b)
