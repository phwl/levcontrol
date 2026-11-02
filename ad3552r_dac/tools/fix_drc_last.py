"""last DRC clean-ups: nudge two vias, merge the OUT1_IOUT via pair, lift the AVDD stub off U7 pad 1"""
import sys, math
sys.path.insert(0, 'tools')
import pcbnew
from manual_route import *
PCB = 'ad3552r_dac.kicad_pcb'
backup(PCB, 'pre_drc_last')
b = pcbnew.LoadBoard(PCB)
def move(net, old, new):
    n = 0
    for t in b.GetTracks():
        if t.GetNetname() != net: continue
        if t.Type() == pcbnew.PCB_VIA_T:
            if math.dist(P(t.GetPosition()), old) < 0.01: t.SetPosition(V(*new)); n += 1
        else:
            if math.dist(P(t.GetStart()), old) < 0.01: t.SetStart(V(*new)); n += 1
            if math.dist(P(t.GetEnd()), old) < 0.01: t.SetEnd(V(*new)); n += 1
    return n
print('IOUT via', move('OUT1_IOUT', (43.35, 21.387), (43.45, 21.32)))
print('GND via', move('GND', (40.57, 39.35), (40.62, 39.35)))
print('IOUT merge', move('OUT1_IOUT', (47.2, 20.0), (47.473, 20.052)))       # both vias now coincide; the duplicate is removed below
print('AVDD lift', move('AVDD', (73.203, 26.179), (73.203, 26.1)), move('AVDD', (72.269, 26.179), (72.269, 26.1)))
rm = [t for t in b.GetTracks() if t.Type() != pcbnew.PCB_VIA_T and t.GetNetname() == 'AVDD' and t.GetLayer() == pcbnew.F_Cu
      and {tuple(round(v, 2) for v in P(t.GetStart())), tuple(round(v, 2) for v in P(t.GetEnd()))} == {(72.3, 26.2), (72.8, 26.2)}]
vs = [t for t in b.GetTracks() if t.Type() == pcbnew.PCB_VIA_T and t.GetNetname() == 'OUT1_IOUT' and math.dist(P(t.GetPosition()), (47.473, 20.052)) < 0.01]
rm += vs[1:]
rm += [t for t in b.GetTracks() if t.Type() != pcbnew.PCB_VIA_T and t.GetStart() == t.GetEnd()]         # zero-length leftovers
print('removing', len(rm))
for t in rm: b.Remove(t)
b.BuildConnectivity(); pcbnew.ZONE_FILLER(b).Fill(b.Zones()); pcbnew.SaveBoard(PCB, b)
