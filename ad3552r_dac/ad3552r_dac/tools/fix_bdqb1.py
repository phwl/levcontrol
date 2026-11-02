"""B_DQ_B1: drop the duplicate VLOGIC track beside R8 pad 1 (C42.1 is also fed via the x=12.88 column), then via + inner link to U9 pin 13."""
import sys, math
sys.path.insert(0, 'tools')
import pcbnew
from manual_route import *
PCB = 'ad3552r_dac.kicad_pcb'
R = lambda xy: tuple(round(v, 2) for v in xy)
if sys.argv[1:] == ['remove']:
    backup(PCB, 'pre_bdqb1')
    b = pcbnew.LoadBoard(PCB)
    KILL = [((11.98, 37.0), (12.46, 37.48)), ((12.46, 37.48), (12.46, 38.13)), ((12.46, 38.13), (12.46, 38.81)), ((12.46, 38.81), (12.6, 38.96)), ((12.6, 38.96), (12.88, 39.23))]
    rm = [t for t in b.GetTracks() if t.Type() != pcbnew.PCB_VIA_T and t.GetNetname() == 'VLOGIC' and t.GetLayer() == pcbnew.F_Cu and any({R(P(t.GetStart())), R(P(t.GetEnd()))} == set(k) for k in KILL)]
    print('VLOGIC duplicate segments removed', len(rm))
    for t in rm: b.Remove(t)
    b.BuildConnectivity(); pcbnew.SaveBoard(PCB, b)
else:
    b = pcbnew.LoadBoard(PCB)
    print(link(b, 'B_DQ_B1', pad_xy(b, 'R8', 1), pad_xy(b, 'U9', 13), label='B_DQ_B1', width=0.15, stub_w=0.15))
    save(b, PCB)
