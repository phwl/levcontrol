#!/usr/bin/env python3
"""Add the power block (J2 barrel jack, input protection, U12 TPS7A4901, U13 LTC3260, U14 AP63201, U15 TLV75518P and their passives)
to the EXISTING board, in the quiet left region at the input edge, away from the TIAs and the reference (notebook section 14).
Order: jack -> input chain -> charge pump block -> buck block -> 1.8 V LDO block -> 5 V AVDD LDO block; every part goes to the free spot that
minimises the weighted distance between its pads and the pads they connect to. Run with /usr/bin/python3; backs the board up first.
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
assert 'U12' not in have and 'J2' not in have, 'power block already present'

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
def P3(ref, pin): return pad_xy(have_new[ref], pin)
have_new = {}
def put_win(ref, targets, margin, win):
    fp = best_place(ref, targets, margin, win); have_new[ref] = fp; return fp
def part(ref, mapping, ic, margin=0.4, reach=9.0, weights=None):
    """place `ref` so each of its pads is near the given pin of footprint `ic` (dict pad -> (ic_ref, pin) or pin)"""
    tg = {}
    for pad, tgt in mapping.items():
        r, pin = tgt if isinstance(tgt, tuple) else (ic, tgt)
        w = (weights or {}).get(pad, 1.0)
        tg[pad] = P3(r, pin) + (w,)
    around = P(have_new[ic].GetPosition())
    fp = near(ref, tg, margin, around=around, reach=reach); have_new[ref] = fp
    return fp

# --- barrel jack on the left edge, body towards the edge (rotation 0) ---
j2 = new_fp('J2'); j2.SetOrientation(EDA_ANGLE(0, pcbnew.DEGREES_T)); j2.SetPosition(V(6.6, 16.4))
OBST['J2'] = rect(j2); have_new['J2'] = j2
print('J2 bbox x %.1f..%.1f  y %.1f..%.1f' % (OBST['J2'][0], OBST['J2'][2], OBST['J2'][1], OBST['J2'][3]))

# --- input chain ---
f1 = near('F1', {'1': P3('J2', 1) + (1.0,)}, 0.5, around=P3('J2', 1), reach=14.0); have_new['F1'] = f1
d9 = near('D9', {'2': P3('F1', 2) + (1.0,)}, 0.5, around=P(f1.GetPosition()), reach=10.0); have_new['D9'] = d9
for r, m in (('C57', {'1': ('D9', 1)}), ('C58', {'1': ('D9', 1)}), ('D10', {'1': ('D9', 1)})):
    part(r, m, 'D9', margin=0.5, reach=12.0)
d9k = P3('D9', 1)

# --- charge pump block (U13, LTC3260) ---
u13 = put_win('U13', {'11': d9k + (0.2,)}, 1.0, (3.0, 20.0, 3.0, 12.5))
for ref, m in (('C64', {'1': 10, '2': 7}), ('C63', {'1': 11}), ('C65', {'1': 6}), ('C66', {'1': 12}), ('C67', {'1': 5}), ('C70', {'1': 5, '2': 4}),
               ('R62', {'2': 15}), ('R63', {'1': 15}), ('R64', {'2': 4}), ('R65', {'1': 4}), ('C68', {'1': 16}), ('C69', {'1': 3})):
    part(ref, m, 'U13', reach=10.0)

# --- buck block (U14, AP63201) ---
u14 = put_win('U14', {'3': d9k + (0.2,)}, 1.0, (3.0, 20.0, 17.5, 28.0))
for ref, m in (('L1', {'1': 5}), ('C71', {'1': 3}), ('C74', {'1': 5, '2': 6}), ('R68', {'2': 2}), ('R69', {'1': 2}), ('R66', {'2': 1}),
               ('R67', {'1': 1}), ('C75', {'2': 1})):
    part(ref, m, 'U14', weights={'1': 2.0} if ref == 'L1' else None)
for ref in ('C72', 'C73'):
    part(ref, {'1': ('L1', 2)}, 'L1')

# --- 1.8 V LDO block (U15, TLV75518P) with the DVDD / VLOGIC ferrite beads ---
u15 = put_win('U15', {'1': P3('L1', 2) + (0.3,)}, 1.0, (-6.0, 26.0, 3.0, 29.0))
for ref, m in (('C76', {'1': 1}), ('C77', {'1': 5}), ('FB1', {'1': 5}), ('FB2', {'1': 5})):
    part(ref, m, 'U15')

# --- 5 V AVDD LDO block (U12, TPS7A4901) ---
u12 = put_win('U12', {'8': d9k + (0.1,)}, 1.0, (-6.0, 26.0, 3.0, 29.0))
for ref, m in (('C60', {'1': 1}), ('C59', {'1': 8}), ('C61', {'1': 6}), ('R60', {'2': 2}), ('R61', {'1': 2}), ('C62', {'1': 1, '2': 2})):
    part(ref, m, 'U12')

for r in ('J2', 'F1', 'D9', 'D10', 'C57', 'C58', 'U13', 'U14', 'L1', 'U15', 'FB1', 'FB2', 'U12'):
    print('%-4s at (%5.1f, %5.1f) rot %3.0f' % (r, *P(have_new[r].GetPosition()), have_new[r].GetOrientationDegrees()))
b.BuildConnectivity()
pcbnew.ZONE_FILLER(b).Fill(b.Zones())
pcbnew.SaveBoard(PCB, b)
print('saved; footprints now', len(list(b.GetFootprints())))
