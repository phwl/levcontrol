#!/usr/bin/env python3
"""Re-place the AVDD LDO (U12 + C59-C62, R60, R61) and the 1.8 V block (U15, C76, C77, FB1, FB2) as close as possible to the DAC pins they feed.
FB1 -> DVDD pins (U1.1, U2.1), FB2 -> VLOGIC pins (U1.2, U2.2), U15 next to the ferrite beads, U12 towards the AVDD pins (U1.19, U2.19) and U7.
Search window = whole board; run with /usr/bin/python3 after tools/remove_group.py removed the old placement."""
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
assert 'U12' not in have and 'U15' not in have, 'already placed'

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


OBST['guard'] = (29.6, 5.6, 30.4, 46.6)
have_new = {}
def pxy(ref, pin):
    f = have_new.get(ref) or have[ref]
    return pad_xy(f, pin)
def mid(a, b): return ((a[0] + b[0]) / 2, (a[1] + b[1]) / 2)
WIN = (-6.0, 85.0, -2.0, 55.5)
def put_win(ref, targets, margin, win=WIN):
    fp = best_place(ref, targets, margin, win); have_new[ref] = fp; return fp
def part(ref, mapping, ic, margin=0.4, reach=9.0):
    tg = {pad: pxy(*(t if isinstance(t, tuple) else (ic, t))) + (1.0,) for pad, t in mapping.items()}
    fp = near(ref, tg, margin, around=P(have_new[ic].GetPosition()), reach=reach); have_new[ref] = fp; return fp

dvdd = mid(pxy('U1', 1), pxy('U2', 1)); vlog = mid(pxy('U1', 2), pxy('U2', 2)); avdd = mid(pxy('U1', 19), pxy('U2', 19))
# ferrite beads: output pad (2) towards the pins they feed
fb1 = put_win('FB1', {'2': dvdd + (1.0,)}, 0.6)
fb2 = put_win('FB2', {'2': vlog + (1.0,)}, 0.6)
u15 = put_win('U15', {'5': mid(pxy('FB1', 1), pxy('FB2', 1)) + (1.0,), '1': pxy('L1', 2) + (0.05,)}, 1.0)
part('C77', {'1': 5}, 'U15'); part('C76', {'1': 1}, 'U15')
for r in ('FB1', 'FB2', 'U15', 'C76', 'C77'):
    print('%-4s at (%5.1f, %5.1f)' % (r, *P(have_new[r].GetPosition())))
print('FB1 out to U1/U2 DVDD  %.1f / %.1f mm' % (math.dist(pxy('FB1', 2), pxy('U1', 1)), math.dist(pxy('FB1', 2), pxy('U2', 1))))
print('FB2 out to U1/U2 VLOGIC %.1f / %.1f mm' % (math.dist(pxy('FB2', 2), pxy('U1', 2)), math.dist(pxy('FB2', 2), pxy('U2', 2))))

# AVDD LDO: output pin towards the DAC AVDD pins and the reference input
u12 = put_win('U12', {'1': avdd + (1.0,), '8': pxy('D9', 1) + (0.02,)}, 1.0)
for ref, m in (('C60', {'1': 1}), ('C59', {'1': 8}), ('C61', {'1': 6}), ('R60', {'2': 2}), ('R61', {'1': 2}), ('C62', {'1': 1, '2': 2})):
    part(ref, m, 'U12')
print('U12 at (%.1f, %.1f); OUT to U1/U2 AVDD %.1f / %.1f mm, to U7 pin 2 %.1f mm' % (*P(u12.GetPosition()), math.dist(pxy('U12', 1), pxy('U1', 19)), math.dist(pxy('U12', 1), pxy('U2', 19)), math.dist(pxy('U12', 1), pxy('U7', 2))))
b.BuildConnectivity()
pcbnew.ZONE_FILLER(b).Fill(b.Zones())
pcbnew.SaveBoard(PCB, b)
print('saved; footprints now', len(list(b.GetFootprints())))
