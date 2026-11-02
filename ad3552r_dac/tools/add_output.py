#!/usr/bin/env python3
"""Add the electrode output stage to the EXISTING board: SMA jacks J4-J11, inverters U16-U19 and all their passives/clamps.

Per channel k (0..3):
  jacks   J(4+2k) = OUTk+, J(5+2k) = OUTk-            on the top edge (k=0,1) or bottom edge (k=2,3), 10 mm pitch
  inverter U(16+k): input resistor R(32+k), feedback R(36+k)+C(45+k), bias R(40+k), bypass C(49+k) (+5V) and C(53+k) (-5V)
  isolation R(44+k) at the TIA output, R(48+k) at the inverter output
  at the jack: clamp D(1+2k)/D(2+2k) (BAV99) and bleeders R(52+2k)/R(53+2k)
Each part goes to the free spot (0.5 mm grid, 4 rotations) that minimises the weighted distance between its pads and the pads they connect to
(notebook rule 6: inverter next to its TIA, R_ISO at the amplifier output, BAV99 + bleeder at the jack).
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
assert 'U16' not in have and 'J4' not in have, 'output stage already present'

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

# jacks first (fixed)
J = {}
for k in range(4):
    y = JACK_Y_TOP if k < 2 else JACK_Y_BOT
    base = JACK_X[(k % 2) * 2: (k % 2) * 2 + 2]
    J[4 + 2 * k] = put('J%d' % (4 + 2 * k), base[0], y)
    J[5 + 2 * k] = put('J%d' % (5 + 2 * k), base[1], y)
    for r in ('J%d' % (4 + 2 * k), 'J%d' % (5 + 2 * k)):
        pass

for k in range(4):                       # clamp + bleeder at each jack first, so they get the nearest spots (notebook rule 6)
    for jr, d, rb in ((4 + 2 * k, 1 + 2 * k, 52 + 2 * k), (5 + 2 * k, 2 + 2 * k, 53 + 2 * k)):
        jx = pad_xy(J[jr], 1)
        near('D%d' % d, {'3': jx + (2.0,)}, 0.4, around=jx, reach=18.0)      # BAV99
        near('R%d' % rb, {'1': jx + (2.0,)}, 0.4, around=jx, reach=18.0)     # bleeder

for k in range(4):
    tia = have['U%d' % (3 + k)]
    tout = pad_xy(tia, 1); tc = P(tia.GetPosition())
    jp, jn = J[4 + 2 * k], J[5 + 2 * k]
    jpp, jnp_ = pad_xy(jp, 1), pad_xy(jn, 1)
    inv_ref = 'U%d' % (16 + k)
    inv = near(inv_ref, {'4': tout + (1.0,), '1': jnp_ + (0.05,)}, 0.7, around=tc, reach=16.0)
    ipin = {n: pad_xy(inv, n) for n in range(1, 7)}
    inv.Reference().SetLayer(pcbnew.F_SilkS); inv.Reference().SetTextSize(VECTOR2I(MM(0.8), MM(0.8)))
    ic = P(inv.GetPosition())
    near('R%d' % (32 + k), {'1': tout + (1.0,), '2': ipin[4] + (1.0,)}, 0.4, around=ic)       # R_G
    near('R%d' % (36 + k), {'1': ipin[4] + (1.0,), '2': ipin[1] + (1.0,)}, 0.4, around=ic)    # R_F
    near('C%d' % (45 + k), {'1': ipin[4] + (1.5,), '2': ipin[1] + (1.5,)}, 0.4, around=ic)    # C_F (across R_F)
    near('R%d' % (40 + k), {'1': ipin[3] + (1.0,)}, 0.4, around=ic)                           # R_B
    near('C%d' % (49 + k), {'1': ipin[6] + (1.0,)}, 0.4, around=ic)                           # +5V bypass
    near('C%d' % (53 + k), {'2': ipin[2] + (1.0,)}, 0.4, around=ic)                           # -5V bypass
    near('R%d' % (44 + k), {'1': tout + (2.0,), '2': jpp + (0.15,)}, 0.4, around=tc)          # R_ISO+ at the TIA output
    near('R%d' % (48 + k), {'1': ipin[1] + (2.0,), '2': jnp_ + (0.15,)}, 0.4, around=ic)      # R_ISO- at the inverter output
    print('ch%d: inverter %s at (%.1f,%.1f), TIA out (%.1f,%.1f), jacks (%.0f,%.0f) (%.0f,%.0f)'
          % (k, inv_ref, ic[0], ic[1], tout[0], tout[1], *P(jp.GetPosition()), *P(jn.GetPosition())))

b.BuildConnectivity()
pcbnew.ZONE_FILLER(b).Fill(b.Zones())
pcbnew.SaveBoard(PCB, b)
print('saved; footprints now', len(list(b.GetFootprints())))
