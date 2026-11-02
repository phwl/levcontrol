#!/usr/bin/env python3
"""Re-place U10 (SCLK/CS/LDAC translator) directly above E1 pins 5-8, re-place the four U2-block parts it displaced (C12, C16, R23, R29)
next to the U2 pins they serve, then U10's own passives. Run with /usr/bin/python3 after tools/remove_group.py removed those parts."""
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
assert 'U10' not in have, 'U10 already present'

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

tg = {}
for pn in range(1, 17):
    nm = pad_net.get(('U10', str(pn)))
    if nm and nm.startswith('E1_'):
        tg[str(pn)] = j1pad_for(nm) + (1.0,)
u10 = best_place('U10', tg, 1.0, (31.0, 44.0, 35.0, 48.5))
u10.Reference().SetLayer(pcbnew.F_SilkS); u10.Reference().SetTextSize(VECTOR2I(MM(0.8), MM(0.8)))
mean = sum(math.dist(pad_xy(u10, int(k)), v[:2]) for k, v in tg.items()) / len(tg)
c = P(u10.GetPosition())
print('U10 at (%.1f, %.1f) rot %.0f  mean A-pin to E1 pad %.1f mm' % (c[0], c[1], u10.GetOrientationDegrees(), mean))

u2 = have['U2']
for ref, pad, pin in (('C16', '1', 12), ('C12', '1', 13), ('R23', '2', 11), ('R29', '1', 6)):
    f = near(ref, {pad: pad_xy(u2, pin) + (1.0,)}, 0.4, around=pad_xy(u2, pin), reach=12.0)
    print('%-4s at (%.1f, %.1f)  %.1f mm from U2 pin %d' % (ref, *P(f.GetPosition()), math.dist(pad_xy(f, int(pad)), pad_xy(u2, pin)), pin))

fp = {}
for r, pin in (('R11', 14), ('R12', 13), ('R13', 12), ('R14', 11)):
    fp[r] = near(r, {'1': pad_xy(u10, pin) + (2.0,)}, 0.4, around=c, reach=10.0)
near('C39', {'1': pad_xy(u10, 16) + (2.0,)}, 0.4, around=c, reach=10.0)
near('C43', {'1': pad_xy(u10, 15) + (2.0,)}, 0.4, around=c, reach=10.0)
near('R19', {'2': pad_xy(fp['R14'], 2) + (1.0,)}, 0.4, around=P(fp['R14'].GetPosition()), reach=10.0)
near('R20', {'1': pad_xy(fp['R11'], 2) + (1.0,)}, 0.4, around=P(fp['R11'].GetPosition()), reach=10.0)
b.BuildConnectivity()
pcbnew.ZONE_FILLER(b).Fill(b.Zones())
pcbnew.SaveBoard(PCB, b)
print('saved; footprints now', len(list(b.GetFootprints())))
