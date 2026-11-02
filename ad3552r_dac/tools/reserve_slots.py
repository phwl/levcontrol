#!/usr/bin/env python3
"""Free the two corner slots on the analog (right) side of each DAC for the transimpedance amplifiers.

Moves the right-side capacitors (AVDD, CVREF, NCAP caps) to the nearest free spot outside the slots, keeping them near the pin
they serve, and removes the amplifier blocks so tools/add_amps.py can place them again. Run with /usr/bin/python3.
Slots (relative to the chip centre): upper dx 2.8..11, dy -10..-2.8 ; lower dx 2.8..11, dy 2.8..10.
"""
import os, math, shutil, time
import xml.etree.ElementTree as ET
import pcbnew
from pcbnew import FromMM as MM, ToMM, VECTOR2I, EDA_ANGLE

PRJ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
PCB = os.path.join(PRJ, 'ad3552r_dac.kicad_pcb')
OX, OY = 20.0, 10.0
V = lambda x, y: VECTOR2I(MM(x + OX), MM(y + OY))
P = lambda v: (ToMM(v.x) - OX, ToMM(v.y) - OY)
MOVE = {'U1': {'C5': 19, 'C7': 19, 'C17': 21, 'C9': 28, 'C10': 13},
        'U2': {'C6': 19, 'C8': 19, 'C18': 21, 'C11': 28, 'C12': 13}}
AMPS = ['U3', 'U4', 'U5', 'U6'] + ['C%d' % n for n in range(21, 37)]

os.makedirs(os.path.join(PRJ, 'tools', 'backups'), exist_ok=True)
shutil.copy(PCB, os.path.join(PRJ, 'tools', 'backups', 'board_%s.kicad_pcb' % time.strftime('%H%M%S')))
b = pcbnew.LoadBoard(PCB)
F = {f.GetReference(): f for f in b.GetFootprints()}
import sys
if sys.argv[1:] == ['remove']:          # step 1 (separate process: KiCad's Python wrappers get unreliable after Remove)
    for r in AMPS:
        if r in F:
            b.Remove(F[r])
    b.BuildConnectivity(); pcbnew.SaveBoard(PCB, b)
    print('amplifier blocks removed'); sys.exit(0)

def rect(fp):
    bb = fp.GetBoundingBox(False)
    return (ToMM(bb.GetLeft()) - OX, ToMM(bb.GetTop()) - OY, ToMM(bb.GetRight()) - OX, ToMM(bb.GetBottom()) - OY)
def hit(a, c):
    return not (a[2] <= c[0] or c[2] <= a[0] or a[3] <= c[1] or c[3] <= a[1])
def pad_xy(fp, num):
    return next(P(p.GetPosition()) for p in fp.Pads() if p.GetNumber() == str(num))

moving = {r for g in MOVE.values() for r in g}
OBST = {r: rect(f) for r, f in F.items() if not r.startswith('H') and r not in moving}
OBST['J1'] = (6.0, 49.0, 41.0, 56.0); OBST['J12'] = (6.0, -2.0, 41.0, 5.0)
for i, (x, y) in enumerate(((0, 0), (84, 0), (0, 54), (84, 54))):
    OBST['H%d' % i] = (x - 3.8, y - 3.8, x + 3.8, y + 3.8)
for chip in MOVE:
    cx, cy = P(F[chip].GetPosition())
    OBST['slot_up_' + chip] = (cx + 2.8, cy - 10.0, cx + 11.0, cy - 2.8)
    OBST['slot_dn_' + chip] = (cx + 2.8, cy + 2.8, cx + 11.0, cy + 10.0)

def place(ref, anchor, margin, step=0.25, reach=13.0):
    fp = F[ref]
    sig = next(p.GetNumber() for p in fp.Pads() if p.GetNetname() != 'GND')
    fp0 = fp.GetOrientation()
    best = None
    ax, ay = anchor
    for rot in (0, 90, 180, 270):
        fp.SetOrientation(EDA_ANGLE(rot, pcbnew.DEGREES_T)); fp.SetPosition(V(0, 0))
        off = {p.GetNumber(): P(p.GetPosition()) for p in fp.Pads()}
        rc0 = rect(fp); rel = (rc0[0] - margin, rc0[1] - margin, rc0[2] + margin, rc0[3] + margin)
        yy = ay - reach
        while yy <= ay + reach:
            xx = ax - reach
            while xx <= ax + reach:
                rc = (xx + rel[0], yy + rel[1], xx + rel[2], yy + rel[3])
                if rc[0] >= -7.3 and rc[2] <= 86.3 and rc[1] >= -2.3 and rc[3] <= 56.3 and not any(hit(rc, o) for o in OBST.values()):
                    cost = math.hypot(xx + off[sig][0] - ax, yy + off[sig][1] - ay)
                    if best is None or cost < best[0]:
                        best = (cost, xx, yy, rot)
                xx += step
            yy += step
    cost, xx, yy, rot = best
    fp.SetOrientation(EDA_ANGLE(rot, pcbnew.DEGREES_T)); fp.SetPosition(V(xx, yy))
    OBST[ref] = rect(fp)
    return cost

for chip, caps in MOVE.items():
    for ref, pin in caps.items():
        c = place(ref, pad_xy(F[chip], pin), 0.5 if ref in ('C9', 'C10', 'C11', 'C12') else 0.4)
        print('%-4s -> (%6.2f,%6.2f) rot %5.0f   %.1f mm from %s pin %d' % (ref, *P(F[ref].GetPosition()), F[ref].GetOrientationDegrees(), c, chip, pin))
b.BuildConnectivity(); pcbnew.ZONE_FILLER(b).Fill(b.Zones()); pcbnew.SaveBoard(PCB, b)
