#!/usr/bin/env python3
"""Add the 2.5 V reference U7 (ADR4525) with C19 (input) and C20 (output) to the existing board. Run with /usr/bin/python3.

U7 goes to the right of the two DACs, on their analog (VREF) side and away from the SPI/SDIO pins on the left. It is rotated
180 deg so its output (pin 6) faces the DACs and its input (pin 2) faces the AVDD regulator. C19/C20 are placed on the
free spot nearest their pins, pushed away from U7.
"""
import os, sys, math, shutil, time
import xml.etree.ElementTree as ET
import pcbnew
from pcbnew import FromMM as MM, ToMM, VECTOR2I, EDA_ANGLE

PRJ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
PCB = os.path.join(PRJ, 'ad3552r_dac.kicad_pcb')
FPLIB = '/usr/share/kicad/footprints'
OX, OY = 20.0, 10.0
U7_POS, U7_ROT = (51.5, 21.75), 180
V = lambda x, y: VECTOR2I(MM(x + OX), MM(y + OY))
P = lambda v: (ToMM(v.x) - OX, ToMM(v.y) - OY)

root = ET.parse(os.path.join(PRJ, 'tools', 'netlist.xml')).getroot()
comps = {c.get('ref'): dict(value=c.findtext('value', ''), fp=c.findtext('footprint', '')) for c in root.find('components')}
pad_net = {}
for n in root.find('nets'):
    if not n.get('name').startswith('unconnected-'):
        for x in n:
            pad_net[(x.get('ref'), x.get('pin'))] = n.get('name')

os.makedirs(os.path.join(PRJ, 'tools', 'backups'), exist_ok=True)
shutil.copy(PCB, os.path.join(PRJ, 'tools', 'backups', 'board_%s.kicad_pcb' % time.strftime('%H%M%S')))
b = pcbnew.LoadBoard(PCB)

def _mknet(nm):
    ni = pcbnew.NETINFO_ITEM(b, nm); b.Add(ni); return ni

have = {f.GetReference(): f for f in b.GetFootprints()}
assert not any(r in have for r in ('U7', 'C19', 'C20')), 'reference group already present'

def new_fp(ref):
    lib, name = comps[ref]['fp'].split(':')
    fp = pcbnew.FootprintLoad(os.path.join(FPLIB, lib + '.pretty'), name)
    fp.SetFPID(pcbnew.LIB_ID(lib, name))
    fp.SetReference(ref); fp.SetValue(comps[ref]['value'])
    try:
        fp.SetLocalClearance(None)
    except Exception:
        fp.SetLocalClearance(0)
    for pad in fp.Pads():
        nm = pad_net.get((ref, pad.GetNumber()))
        if nm:
            pad.SetNet(b.FindNet(nm) or _mknet(nm))
    b.Add(fp)
    t = fp.Reference(); t.SetLayer(pcbnew.F_Fab); fp.Value().SetVisible(False)
    return fp

def rect(fp, m=0.0):
    bb = fp.GetBoundingBox(False)
    return (ToMM(bb.GetLeft()) - OX - m, ToMM(bb.GetTop()) - OY - m, ToMM(bb.GetRight()) - OX + m, ToMM(bb.GetBottom()) - OY + m)

def hit(a, c):
    return not (a[2] <= c[0] or c[2] <= a[0] or a[3] <= c[1] or c[3] <= a[1])

OBST = {r: rect(f) for r, f in have.items() if not r.startswith('H')}
OBST['J1'] = (6.0, 49.0, 41.0, 56.0); OBST['J12'] = (6.0, -2.0, 41.0, 5.0)
HOLE = [(x - 3.8, y - 3.8, x + 3.8, y + 3.8) for x, y in ((0, 0), (84, 0), (0, 54), (84, 54))]

def ok(fp, ignore=()):
    rc = rect(fp, 0.4)
    if rc[0] < -7.3 or rc[2] > 86.3 or rc[1] < -2.3 or rc[3] > 56.3:
        return False
    return not any(hit(rc, o) for r, o in OBST.items() if r not in ignore) and not any(hit(rc, o) for o in HOLE)

def pad_xy(fp, num):
    return next(P(p.GetPosition()) for p in fp.Pads() if p.GetNumber() == str(num))

u7 = new_fp('U7')
u7.SetOrientation(EDA_ANGLE(U7_ROT, pcbnew.DEGREES_T)); u7.SetPosition(V(*U7_POS))
u7.Reference().SetLayer(pcbnew.F_SilkS); u7.Reference().SetTextSize(VECTOR2I(MM(0.8), MM(0.8)))
assert ok(u7), 'U7 collides at the chosen position'
OBST['U7'] = rect(u7)

def place_near(ref, anchor_fp, pin):
    fp = new_fp(ref)
    ap = pad_xy(anchor_fp, pin)
    cx, cy = P(anchor_fp.GetPosition())
    vx, vy = ap[0] - cx, ap[1] - cy
    n = math.hypot(vx, vy); ux, uy = vx / n, vy / n
    bb = rect(fp); r = 0.6 + max(bb[2] - bb[0], bb[3] - bb[1]) / 2
    angs = [0] + [s * d for d in range(15, 181, 15) for s in (1, -1)]
    while r < 12:
        for a in angs:
            ca, sa = math.cos(math.radians(a)), math.sin(math.radians(a))
            dx, dy = ux * ca - uy * sa, ux * sa + uy * ca
            for rot in ((0, 90) if abs(dx) > abs(dy) else (90, 0)):
                fp.SetOrientation(EDA_ANGLE(rot, pcbnew.DEGREES_T))
                fp.SetPosition(V(ap[0] + dx * r, ap[1] + dy * r))
                if ok(fp):
                    OBST[ref] = rect(fp); return fp
        r += 0.25
    raise RuntimeError('no free spot for ' + ref)

c20 = place_near('C20', u7, 6)       # VREF output capacitor, at the output pin
c19 = place_near('C19', u7, 2)       # input capacitor, at the input pin
for fp in (u7, c19, c20):
    print(fp.GetReference(), 'at (%.2f, %.2f) rot %.0f' % (*P(fp.GetPosition()), fp.GetOrientationDegrees()))
print('U7 pins: 2 IN (%.2f,%.2f)  4 GND (%.2f,%.2f)  6 OUT (%.2f,%.2f)' % (*pad_xy(u7, 2), *pad_xy(u7, 4), *pad_xy(u7, 6)))
print('U1.20 (%.2f,%.2f)  U2.20 (%.2f,%.2f)' % (*pad_xy(have['U1'], 20), *pad_xy(have['U2'], 20)))
b.BuildConnectivity()
pcbnew.ZONE_FILLER(b).Fill(b.Zones())
pcbnew.SaveBoard(PCB, b)
