#!/usr/bin/env python3
"""Spread the DAC blocks to leave routing channels. Run with /usr/bin/python3 on the existing board (backs it up first).

* U1/U2 stay at x=39; they move to y=U1_Y / U2_Y.
* every passive of a chip's group keeps its rotation and its direction from the chip, but its distance is scaled by S.
* U7, C19, C20 move with the midpoint between the DACs (they keep their offsets from U7).
* the amplifier blocks (U3-U6, C21-C36) are removed so tools/add_amps.py can place them again with the larger clearances.
"""
import os, sys, shutil, time
import pcbnew
from pcbnew import FromMM as MM, ToMM, VECTOR2I

PRJ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
PCB = os.path.join(PRJ, 'ad3552r_dac.kicad_pcb')
S = float(sys.argv[1]) if len(sys.argv) > 1 else 1.35
U1_Y, U2_Y = float(sys.argv[2]) if len(sys.argv) > 2 else 15.0, float(sys.argv[3]) if len(sys.argv) > 3 else 34.5
U7_X = float(sys.argv[4]) if len(sys.argv) > 4 else 58.0
OX, OY = 20.0, 10.0
G1 = ['C1', 'C3', 'C5', 'C7', 'C9', 'C10', 'C13', 'C14', 'C17', 'R1', 'R17', 'R22', 'R24', 'R25', 'R26', 'R27']
G2 = ['C2', 'C4', 'C6', 'C8', 'C11', 'C12', 'C15', 'C16', 'C18', 'R2', 'R18', 'R23', 'R28', 'R29', 'R30', 'R31']
AMPS = ['U3', 'U4', 'U5', 'U6'] + ['C%d' % n for n in range(21, 37)]

os.makedirs(os.path.join(PRJ, 'tools', 'backups'), exist_ok=True)
shutil.copy(PCB, os.path.join(PRJ, 'tools', 'backups', 'board_%s.kicad_pcb' % time.strftime('%H%M%S')))
b = pcbnew.LoadBoard(PCB)
F = {f.GetReference(): f for f in b.GetFootprints()}
q = lambda v: round(v / 0.25) * 0.25
def mm(v): return ToMM(v)

def respace(chip, group, new_y):
    c = F[chip]; cx, cy = mm(c.GetPosition().x), mm(c.GetPosition().y)
    ny = new_y + OY
    for r in group:
        f = F[r]; dx, dy = mm(f.GetPosition().x) - cx, mm(f.GetPosition().y) - cy
        f.SetPosition(VECTOR2I(MM(cx + q(dx * S)), MM(ny + q(dy * S))))
    c.SetPosition(VECTOR2I(MM(cx), MM(ny)))

# reference group: keep offsets from U7
u7 = F['U7']; ux, uy = mm(u7.GetPosition().x), mm(u7.GetPosition().y)
tx, ty = U7_X + OX, (U1_Y + U2_Y) / 2 + OY
for r in ('U7', 'C19', 'C20'):
    f = F[r]
    f.SetPosition(VECTOR2I(MM(mm(f.GetPosition().x) - ux + tx), MM(mm(f.GetPosition().y) - uy + ty)))

respace('U1', G1, U1_Y); respace('U2', G2, U2_Y)
for r in AMPS:
    if r in F:
        b.Remove(F[r])
print('scale', S, 'U1_Y', U1_Y, 'U2_Y', U2_Y, 'U7 at', U7_X, (U1_Y + U2_Y) / 2)
b.BuildConnectivity(); pcbnew.ZONE_FILLER(b).Fill(b.Zones()); pcbnew.SaveBoard(PCB, b)
