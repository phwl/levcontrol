#!/usr/bin/env python3
"""Add the four level translators U8-U11 and their passives near the E1 header (sockets J1) on the EXISTING board.

Each translator's A-side pins are pulled towards the J1 pads that carry the same nets (E1 side), so U8 (DQ_A) sits above E1 pins 9-12,
U9 above 13-16, U10 (SCLK/CS/LDAC) above 5-8, U11 (RESET/ALERT) above 19-21. Then, per translator: 33 ohm series resistors at its B outputs,
VCCA/VCCB decoupling at its supply pins, plus R16 (OE pull-up), R19/R20/R21 (LDAC/SCLK/RESET pulls on the 1.8 V side) and test point TP1 at E1 pin 23.
Run with /usr/bin/python3. Backs the board up first; existing placement is untouched.
"""
import os, math, shutil, time
import xml.etree.ElementTree as ET
import pcbnew
from pcbnew import FromMM as MM, ToMM, VECTOR2I, EDA_ANGLE

PRJ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
PCB = os.path.join(PRJ, 'ad3552r_dac.kicad_pcb')
FPLIB = '/usr/share/kicad/footprints'
OX, OY = 20.0, 10.0
V = lambda x, y: VECTOR2I(MM(x + OX), MM(y + OY))
P = lambda v: (ToMM(v.x) - OX, ToMM(v.y) - OY)
JACK_X = [45.0, 55.0, 65.0, 75.0]            # pitch 10 mm
JACK_Y_TOP, JACK_Y_BOT = 2.8, 51.2

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
assert 'U8' not in have, 'translators already present'

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
    fp.Value().SetVisible(False)
    fp.Reference().SetLayer(pcbnew.F_Fab)
    return fp

def rect(fp):
    bb = fp.GetBoundingBox(False)
    return (ToMM(bb.GetLeft()) - OX, ToMM(bb.GetTop()) - OY, ToMM(bb.GetRight()) - OX, ToMM(bb.GetBottom()) - OY)

OBST = {r: rect(f) for r, f in have.items() if not r.startswith('H')}
OBST['J1'] = (6.0, 49.0, 41.0, 56.0); OBST['J12'] = (6.0, -2.0, 41.0, 5.0)
OBST['guard'] = (29.6, 5.6, 30.4, 46.6)
HOLE = [(x - 3.4, y - 3.4, x + 3.4, y + 3.4) for x, y in ((0, 0), (84, 0), (0, 54), (84, 54))]

def hit(a, c):
    return not (a[2] <= c[0] or c[2] <= a[0] or a[3] <= c[1] or c[3] <= a[1])

def pad_xy(fp, num):
    return next(P(p.GetPosition()) for p in fp.Pads() if p.GetNumber() == str(num))

def best_place(ref, targets, margin, win, step=0.5, fixed=None):
    fp = new_fp(ref)
    best = None
    x0, x1, y0, y1 = win
    for rot in (0, 90, 180, 270):
        fp.SetOrientation(EDA_ANGLE(rot, pcbnew.DEGREES_T)); fp.SetPosition(V(0, 0))
        off = {p.GetNumber(): P(p.GetPosition()) for p in fp.Pads()}
        rc0 = rect(fp); rel = (rc0[0] - margin, rc0[1] - margin, rc0[2] + margin, rc0[3] + margin)
        yy = y0
        while yy <= y1:
            xx = x0
            while xx <= x1:
                rc = (xx + rel[0], yy + rel[1], xx + rel[2], yy + rel[3])
                if rc[0] >= -7.3 and rc[2] <= 86.3 and rc[1] >= -2.3 and rc[3] <= 56.3:
                    if not any(hit(rc, o) for o in OBST.values()) and not any(hit(rc, o) for o in HOLE):
                        cost = 0.0
                        for pn, t in targets.items():
                            w = t[2] if len(t) > 2 else 1.0
                            cost += w * math.hypot(xx + off[pn][0] - t[0], yy + off[pn][1] - t[1])
                        if best is None or cost < best[0]:
                            best = (cost, xx, yy, rot)
                xx += step
            yy += step
    if best is None:
        raise RuntimeError('no free spot for ' + ref)
    cost, xx, yy, rot = best
    fp.SetOrientation(EDA_ANGLE(rot, pcbnew.DEGREES_T)); fp.SetPosition(V(xx, yy))
    OBST[ref] = rect(fp)
    return fp

def near(ref, targets, margin=0.5, around=None, reach=14.0):
    cx, cy = around
    return best_place(ref, targets, margin, (max(-6.0, cx - reach), min(85.0, cx + reach), max(-2.0, cy - reach), min(55.5, cy + reach)))

def put(ref, x, y, rot=0):
    fp = new_fp(ref)
    fp.SetOrientation(EDA_ANGLE(rot, pcbnew.DEGREES_T)); fp.SetPosition(V(x, y))
    OBST[ref] = rect(fp)
    return fp


j1 = have['J1']
def j1pad_for(net):
    return next((pad_xy(j1, p.GetNumber()) for p in j1.Pads() if p.GetNetname() == net), None)

OBST['guard'] = (29.6, 5.6, 30.4, 46.6)
def a_targets(ref):
    t = {}
    for pn in range(1, 17):
        nm = pad_net.get((ref, str(pn)))
        if nm and nm != 'GND' and (nm.startswith('E1_') or nm in ('DIR_A', 'DIR_B', 'XLAT_OE_N')):
            xy = j1pad_for(nm)
            if xy:
                t[str(pn)] = xy + (1.0,)
    return t

placed_ic = {}
for ref in ('U8', 'U9', 'U10', 'U11'):
    tg = a_targets(ref)
    ics = best_place(ref, tg, 1.2, (-4.0, 44.0, 28.0, 48.5))
    ics.Reference().SetLayer(pcbnew.F_SilkS); ics.Reference().SetTextSize(VECTOR2I(MM(0.8), MM(0.8)))
    placed_ic[ref] = ics
    c = P(ics.GetPosition())
    dist = sum(math.dist(pad_xy(ics, int(k)), v[:2]) for k, v in tg.items()) / max(1, len(tg))
    print('%-4s at (%5.1f,%5.1f) rot %3.0f  mean A-pin to E1 pad %.1f mm' % (ref, c[0], c[1], ics.GetOrientationDegrees(), dist))

B = {'U8': [('R3', 14), ('R4', 13), ('R5', 12), ('R6', 11)], 'U9': [('R7', 14), ('R8', 13), ('R9', 12), ('R10', 11)],
     'U10': [('R11', 14), ('R12', 13), ('R13', 12), ('R14', 11)], 'U11': [('R15', 14)]}
for ic_ref, rs in B.items():
    ics = placed_ic[ic_ref]; ic = P(ics.GetPosition())
    for r, pin in rs:
        near(r, {'1': pad_xy(ics, pin) + (2.0,)}, 0.4, around=ic, reach=10.0)        # source termination at the translator's B output
for i, u in enumerate(('U8', 'U9', 'U10', 'U11')):
    ics = placed_ic[u]; ic = P(ics.GetPosition())
    near('C%d' % (37 + i), {'1': pad_xy(ics, 16) + (2.0,)}, 0.4, around=ic, reach=10.0)   # VCCA decoupling
    near('C%d' % (41 + i), {'1': pad_xy(ics, 15) + (2.0,)}, 0.4, around=ic, reach=10.0)   # VCCB decoupling
near('R16', {'2': pad_xy(placed_ic['U8'], 9) + (1.0,)}, 0.4, around=P(placed_ic['U8'].GetPosition()), reach=10.0)     # OE pull-up
fbs = {r: next(f for f in b.GetFootprints() if f.GetReference() == r) for r in ('R11', 'R14', 'R15')}
near('R19', {'2': pad_xy(fbs['R14'], 2) + (1.0,)}, 0.4, around=P(fbs['R14'].GetPosition()), reach=10.0)               # LDAC_N pull-up (1.8 V side)
near('R20', {'1': pad_xy(fbs['R11'], 2) + (1.0,)}, 0.4, around=P(fbs['R11'].GetPosition()), reach=10.0)               # SCLK pull-down
near('R21', {'1': pad_xy(fbs['R15'], 2) + (1.0,)}, 0.4, around=P(fbs['R15'].GetPosition()), reach=10.0)               # RESET_N pull-down
near('TP1', {'1': j1pad_for('SYNC_OUT') + (1.0,)}, 0.4, around=j1pad_for('SYNC_OUT'), reach=22.0)                    # SYNC_OUT test point at E1 pin 23

b.BuildConnectivity()
pcbnew.ZONE_FILLER(b).Fill(b.Zones())
pcbnew.SaveBoard(PCB, b)
print('saved; footprints now', len(list(b.GetFootprints())))
