import sys, math
sys.path.insert(0, 'tools')
import pcbnew
from manual_route import *
PCB = 'ad3552r_dac.kicad_pcb'
backup(PCB, 'pre_avdd')
b = pcbnew.LoadBoard(PCB)
rm = []
for t in b.GetTracks():
    if t.GetNetname() != 'AVDD' or t.Type() == pcbnew.PCB_VIA_T: continue
    s, e = tuple(round(v, 2) for v in P(t.GetStart())), tuple(round(v, 2) for v in P(t.GetEnd()))
    if t.GetLayer() == pcbnew.F_Cu and s == (54.49, 28.5) and e == (54.49, 29.2): rm.append(t)   # duplicate of the 54.49 stub
for t in rm: b.Remove(t)
print('removed', len(rm))
b.BuildConnectivity(); pcbnew.SaveBoard(PCB, b)
