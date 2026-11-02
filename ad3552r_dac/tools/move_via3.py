import sys, math
sys.path.insert(0, 'tools')
import pcbnew
from manual_route import *
PCB = 'ad3552r_dac.kicad_pcb'
backup(PCB, 'pre_move_via3')
b = pcbnew.LoadBoard(PCB)
old, new = (35.6, 14.4), (35.3, 14.25)
seen = False; rm = []
for t in b.GetTracks():
    if t.GetNetname() != 'CS_A_N': continue
    if t.Type() == pcbnew.PCB_VIA_T:
        if math.dist(P(t.GetPosition()), old) < 0.1:
            if seen: rm.append(t)
            else: t.SetPosition(V(*new)); seen = True
    else:
        if math.dist(P(t.GetStart()), old) < 0.1: t.SetStart(V(*new))
        if math.dist(P(t.GetEnd()), old) < 0.1: t.SetEnd(V(*new))
print('moved', seen, 'dups', len(rm))
for t in rm: b.Remove(t)
b.BuildConnectivity(); pcbnew.SaveBoard(PCB, b)
