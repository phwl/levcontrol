#!/usr/bin/env python3
"""Digital/analog ground guard: shift the left-column digital passives 3 mm left, then add a 0.5 mm GND wall (F.Cu) at x = 30
stitched to the ground plane with 0.5/0.25 mm vias every 2.5 mm. C9/C11 and everything else stay where they are.
Run with /usr/bin/python3 on the existing board (backs it up first)."""
import os, shutil, time
import pcbnew
from pcbnew import FromMM as MM, ToMM, VECTOR2I

PRJ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
PCB = os.path.join(PRJ, 'ad3552r_dac.kicad_pcb')
OX, OY = 20.0, 10.0
SHIFT = -3.0
LEFT = ['C1', 'C3', 'R1', 'R17', 'R24', 'R26', 'R27', 'C2', 'C4', 'R2', 'R18', 'R28', 'R30', 'R31']   # left column, both chips
WALL_X, WALL_Y0, WALL_Y1, WIDTH, PITCH = 30.0, 5.8, 46.4, 0.5, 2.5
V = lambda x, y: VECTOR2I(MM(x + OX), MM(y + OY))

os.makedirs(os.path.join(PRJ, 'tools', 'backups'), exist_ok=True)
shutil.copy(PCB, os.path.join(PRJ, 'tools', 'backups', 'board_%s.kicad_pcb' % time.strftime('%H%M%S')))
b = pcbnew.LoadBoard(PCB)
F = {f.GetReference(): f for f in b.GetFootprints()}
for r in LEFT:
    F[r].SetPosition(F[r].GetPosition() + VECTOR2I(MM(SHIFT), 0))

gnd = b.FindNet('GND')
t = pcbnew.PCB_TRACK(b)
t.SetStart(V(WALL_X, WALL_Y0)); t.SetEnd(V(WALL_X, WALL_Y1)); t.SetWidth(MM(WIDTH)); t.SetLayer(pcbnew.F_Cu); t.SetNet(gnd)
b.Add(t)
n = 0
y = WALL_Y0 + 0.7
while y <= WALL_Y1 - 0.2:
    v = pcbnew.PCB_VIA(b)
    v.SetPosition(V(WALL_X, y)); v.SetDrill(MM(0.25))
    try:
        v.SetWidth(MM(0.5))
    except TypeError:
        v.SetWidth(pcbnew.F_Cu, MM(0.5))
    v.SetLayerPair(pcbnew.F_Cu, pcbnew.B_Cu); v.SetNet(gnd)
    b.Add(v); n += 1; y += PITCH
print('moved', len(LEFT), 'passives by', SHIFT, 'mm; wall x=%.1f y %.1f..%.1f; %d stitching vias' % (WALL_X, WALL_Y0, WALL_Y1, n))
b.BuildConnectivity(); pcbnew.ZONE_FILLER(b).Fill(b.Zones()); pcbnew.SaveBoard(PCB, b)
