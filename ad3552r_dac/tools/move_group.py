#!/usr/bin/env python3
"""usage: move_group.py DX DY REF [REF ...]  -- shift footprints on the existing board (backs it up first). Run with /usr/bin/python3."""
import os, sys, shutil, time
import pcbnew
from pcbnew import FromMM as MM, ToMM, VECTOR2I
PRJ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
PCB = os.path.join(PRJ, 'ad3552r_dac.kicad_pcb')
dx, dy, refs = float(sys.argv[1]), float(sys.argv[2]), sys.argv[3:]
os.makedirs(os.path.join(PRJ, 'tools', 'backups'), exist_ok=True)
shutil.copy(PCB, os.path.join(PRJ, 'tools', 'backups', 'board_%s.kicad_pcb' % time.strftime('%H%M%S')))
b = pcbnew.LoadBoard(PCB)
for f in b.GetFootprints():
    if f.GetReference() in refs:
        f.SetPosition(f.GetPosition() + VECTOR2I(MM(dx), MM(dy)))
        print(f.GetReference(), '->', round(ToMM(f.GetPosition().x) - 20, 2), round(ToMM(f.GetPosition().y) - 10, 2))
b.BuildConnectivity(); pcbnew.ZONE_FILLER(b).Fill(b.Zones()); pcbnew.SaveBoard(PCB, b)
