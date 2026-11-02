import sys, math
sys.path.insert(0, 'tools')
import pcbnew
from manual_route import *
PCB = 'ad3552r_dac.kicad_pcb'
backup(PCB, 'pre_misc')
b = pcbnew.LoadBoard(PCB)
old, new = (11.1, 11.4), (11.1, 11.3)
for t in b.GetTracks():
    if t.GetNetname() != '-5V': continue
    if t.Type() == pcbnew.PCB_VIA_T:
        if math.dist(P(t.GetPosition()), old) < 0.05: t.SetPosition(V(*new))
    else:
        if math.dist(P(t.GetStart()), old) < 0.05: t.SetStart(V(*new))
        if math.dist(P(t.GetEnd()), old) < 0.05: t.SetEnd(V(*new))
# duplicate / near-coincident vias: keep the first of each cluster per net
vias = [t for t in b.GetTracks() if t.Type() == pcbnew.PCB_VIA_T]
dead = []
for i, a in enumerate(vias):
    if a in dead: continue
    for c in vias[i+1:]:
        if c not in dead and c.GetNetname() == a.GetNetname() and math.dist(P(a.GetPosition()), P(c.GetPosition())) < 0.35:
            dead.append(c)
print('dup vias', len(dead))
for c in dead: b.Remove(c)
b.BuildConnectivity(); pcbnew.SaveBoard(PCB, b)
