import sys, math
sys.path.insert(0, 'tools')
import pcbnew
from manual_route import *
PCB = 'ad3552r_dac.kicad_pcb'
backup(PCB, 'pre_fix_dqa0')
b = pcbnew.LoadBoard(PCB)
R = lambda xy: tuple(round(v, 2) for v in xy)
for t in list(b.GetTracks()):
    if t.Type() != pcbnew.PCB_VIA_T and t.GetNetname() == 'DQ_A0' and t.GetLayer() == pcbnew.In3_Cu and R(P(t.GetStart())) == (35.6, 15.25):
        e = P(t.GetEnd()); print('replacing', R(e))
        t.SetEnd(V(36.3, 15.25)); add_track(b, 'DQ_A0', pcbnew.In3_Cu, (36.3, 15.25), e, 0.15)
b.BuildConnectivity(); pcbnew.SaveBoard(PCB, b)
