#!/usr/bin/env python3
"""Redraw the In4 power islands for the final placement. Run with /usr/bin/python3 (backs the board up first).
Islands are non-overlapping rectangles; the AVDD carve-outs (priority 1) sit inside the +5V island. Rails that do not cluster
(-5V, DVDD, +1V8, the +12V feed to U12, VNEG_PUMP) stay as wide tracks."""
import os, shutil, time
import pcbnew
from pcbnew import FromMM as MM, ToMM

PRJ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
PCB = os.path.join(PRJ, 'ad3552r_dac.kicad_pcb')
OX, OY = 20.0, 10.0
ISLANDS = [  # net, (x0, y0, x1, y1), priority
    ('+5V',    (44.4,  4.0, 78.0, 48.0), 0),
    ('AVDD',   (37.2,  5.0, 44.4, 46.0), 0),
    ('AVDD',   (52.5, 23.5, 60.5, 30.5), 1),
    ('AVDD',   (69.5, 23.0, 76.5, 28.0), 1),
    ('+12V',   ( 7.0, 11.0, 25.0, 26.5), 0),
    ('+2V5',   ( 7.0, 27.0, 26.0, 35.5), 0),
    ('VLOGIC', (26.5,  5.0, 37.0, 38.0), 0),
    ('+3V3',   ( 1.0, 36.0, 26.0, 55.0), 0),
]
os.makedirs(os.path.join(PRJ, 'tools', 'backups'), exist_ok=True)
shutil.copy(PCB, os.path.join(PRJ, 'tools', 'backups', 'board_%s.kicad_pcb' % time.strftime('%H%M%S')))
b = pcbnew.LoadBoard(PCB)
old = [z for z in b.Zones() if z.GetLayer() == pcbnew.In4_Cu]
for z in old:
    b.Remove(z)
print('removed', len(old), 'old In4 zones')
for net, (x0, y0, x1, y1), prio in ISLANDS:
    z = pcbnew.ZONE(b)
    z.SetLayer(pcbnew.In4_Cu); z.SetNet(b.FindNet(net)); z.SetAssignedPriority(prio)
    ol = z.Outline(); ol.NewOutline()
    for x, y in ((x0, y0), (x1, y0), (x1, y1), (x0, y1)):
        ol.Append(MM(x + OX), MM(y + OY))
    z.SetMinThickness(MM(0.2)); z.SetLocalClearance(MM(0.25))
    z.SetPadConnection(pcbnew.ZONE_CONNECTION_THERMAL)
    z.SetThermalReliefGap(MM(0.3)); z.SetThermalReliefSpokeWidth(MM(0.35))
    b.Add(z)
# report which pads fall inside each island
print('%-7s %-24s %6s %8s' % ('net', 'region', 'own', 'foreign'))
for net, (x0, y0, x1, y1), prio in ISLANDS:
    own = foreign = 0
    for f in b.GetFootprints():
        for p in f.Pads():
            x, y = ToMM(p.GetPosition().x) - OX, ToMM(p.GetPosition().y) - OY
            if x0 <= x <= x1 and y0 <= y <= y1:
                if p.GetNetname() == net: own += 1
                elif p.GetNetname() not in ('GND', ''): foreign += 1
    print('%-7s (%4.1f,%4.1f)-(%4.1f,%4.1f) %6d %8d%s' % (net, x0, y0, x1, y1, own, foreign, '' if own else '   <-- no pads of its own'))
b.BuildConnectivity(); pcbnew.ZONE_FILLER(b).Fill(b.Zones()); pcbnew.SaveBoard(PCB, b)
