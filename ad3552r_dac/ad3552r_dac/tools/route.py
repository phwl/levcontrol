#!/usr/bin/env python3
"""Route ad3552r_dac.kicad_pcb with Freerouting (CLI build in tools/freerouting/cli). Run with /usr/bin/python3.

usage: route.py export          -> tools/work/board.dsn
       route.py import <ses>    -> merge the routed session back into the board, refill zones, save
"""
import os, sys
import pcbnew

PRJ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
PCB = os.path.join(PRJ, 'ad3552r_dac.kicad_pcb')
WORK = os.path.join(PRJ, 'tools', 'work')
os.makedirs(WORK, exist_ok=True)

b = pcbnew.LoadBoard(PCB)
if sys.argv[1] == 'export':
    ok = pcbnew.ExportSpecctraDSN(b, os.path.join(WORK, 'board.dsn'))
    print('DSN export:', ok)
    dsn = os.path.join(WORK, 'board.dsn')
    t = open(dsn).read()
    # In1.Cu carries the continuous ground plane: forbid signal routing on it
    for lay in ('In1.Cu', 'In4.Cu'):          # the two ground planes
        k = t.index('(layer %s' % lay)
        t = t[:k] + t[k:].replace('(type signal)', '(type power)', 1)
    open(dsn, 'w').write(t)
elif sys.argv[1] == 'import':
    ses = sys.argv[2]
    ok = pcbnew.ImportSpecctraSES(b, ses)
    print('SES import:', ok)
    # B.Cu ground pour (added after routing so the router keeps B.Cu as a signal layer)
    gnd = b.FindNet('GND')
    z = pcbnew.ZONE(b); z.SetLayer(pcbnew.B_Cu); z.SetNet(gnd)
    ol = z.Outline(); ol.NewOutline()
    OX, OY = 20.0, 10.0
    for x, y in ((-7.7, -2.7), (86.7, -2.7), (86.7, 56.7), (-7.7, 56.7)):
        ol.Append(pcbnew.FromMM(x + OX), pcbnew.FromMM(y + OY))
    z.SetMinThickness(pcbnew.FromMM(0.2)); z.SetLocalClearance(pcbnew.FromMM(0.25))
    z.SetPadConnection(pcbnew.ZONE_CONNECTION_THERMAL)
    z.SetThermalReliefGap(pcbnew.FromMM(0.3)); z.SetThermalReliefSpokeWidth(pcbnew.FromMM(0.35))
    b.Add(z)
    b.BuildConnectivity()
    pcbnew.ZONE_FILLER(b).Fill(b.Zones())
    pcbnew.SaveBoard(PCB, b)
    print('tracks:', len(list(b.GetTracks())))
