#!/usr/bin/env python3
"""usage: remove_group.py REF [REF ...]  -- delete footprints from the existing board (backs it up first). Run with /usr/bin/python3."""
import os, sys, shutil, time
import pcbnew
PRJ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
PCB = os.path.join(PRJ, 'ad3552r_dac.kicad_pcb')
os.makedirs(os.path.join(PRJ, 'tools', 'backups'), exist_ok=True)
shutil.copy(PCB, os.path.join(PRJ, 'tools', 'backups', 'board_%s.kicad_pcb' % time.strftime('%H%M%S')))
b = pcbnew.LoadBoard(PCB)
gone = [f for f in b.GetFootprints() if f.GetReference() in sys.argv[1:]]
for f in gone:
    b.Remove(f)
b.BuildConnectivity(); pcbnew.SaveBoard(PCB, b)
print('removed', len(gone), 'footprints')
