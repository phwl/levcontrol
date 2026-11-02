#!/usr/bin/env python3
"""Fill the gaps between the In4 power islands with GND, so In3 / B.Cu signals always have a plane under them.
Run with /usr/bin/python3 from the project dir (backs the board up first).

The islands are raised by one priority level and a board-sized GND zone goes in at priority 0 underneath them:
it fills only where no island is (the gaps and the margins), keeps 0.25 mm from them, connects solidly to GND vias
and drops fragments that touch no GND via.
"""
import sys
sys.path.insert(0, 'tools')
import pcbnew
from pcbnew import FromMM as MM
from manual_route import backup, OX, OY

PCB = 'ad3552r_dac.kicad_pcb'
b = pcbnew.LoadBoard(PCB)
in4 = [z for z in b.Zones() if z.GetLayerSet().Contains(pcbnew.In4_Cu)]
if any(z.GetNetname() == 'GND' for z in in4):
    sys.exit('In4 already has a GND zone - nothing done')
backup(PCB, 'pre_in4_gnd')
for z in in4:
    z.SetAssignedPriority(z.GetAssignedPriority() + 1)
g = pcbnew.ZONE(b)
g.SetLayer(pcbnew.In4_Cu); g.SetNet(b.FindNet('GND')); g.SetAssignedPriority(0)
ol = g.Outline(); ol.NewOutline()
for x, y in ((-8, -3), (87, -3), (87, 57), (-8, 57)):
    ol.Append(MM(x + OX), MM(y + OY))
g.SetLocalClearance(MM(0.25)); g.SetMinThickness(MM(0.25))
g.SetPadConnection(pcbnew.ZONE_CONNECTION_FULL)
g.SetIslandRemovalMode(pcbnew.ISLAND_REMOVAL_MODE_ALWAYS)
b.Add(g)
b.BuildConnectivity(); pcbnew.ZONE_FILLER(b).Fill(b.Zones())
fp = g.GetFilledPolysList(pcbnew.In4_Cu)
area = sum(abs(fp.Outline(k).Area()) for k in range(fp.OutlineCount())) / 1e12
print('In4 GND fill: %d pieces, %.0f mm^2; islands raised to priorities %s' % (fp.OutlineCount(), area, sorted({z.GetAssignedPriority() for z in in4})))
pcbnew.SaveBoard(PCB, b)
