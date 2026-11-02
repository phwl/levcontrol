#!/usr/bin/env python3
"""Add U2 (second AD3552R) and its passives to the EXISTING board, copying the hand-placed U1 group's layout.

Run with /usr/bin/python3. Loads ad3552r_dac.kicad_pcb as it is (keeps manual edits), backs it up first.
Each U1 passive is mapped to its U2 twin; the mapping is verified against the netlist (same U pin numbers)
before anything is placed. Position = U2 + (U1-group part - U1), same rotation and reference-text offset.
"""
import os, sys, shutil, time
import xml.etree.ElementTree as ET
import pcbnew
from pcbnew import FromMM as MM, ToMM, VECTOR2I, EDA_ANGLE

PRJ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
PCB = os.path.join(PRJ, 'ad3552r_dac.kicad_pcb')
FPLIB = '/usr/share/kicad/footprints'
OX, OY = 20.0, 10.0
U2_POS = (39.0, 30.0)            # board frame (Red Pitaya frame); U1 is at (39, 13)

PAIRS = [('U1', 'U2'), ('C1', 'C2'), ('C3', 'C4'), ('C5', 'C6'), ('C7', 'C8'),
         ('C9', 'C11'), ('C10', 'C12'), ('C13', 'C15'), ('C14', 'C16'), ('C17', 'C18'),
         ('R1', 'R2'), ('R17', 'R18'), ('R22', 'R23'),
         ('R24', 'R28'), ('R25', 'R29'), ('R26', 'R30'), ('R27', 'R31')]

# ---- netlist ----
root = ET.parse(os.path.join(PRJ, 'tools', 'netlist.xml')).getroot()
comps = {c.get('ref'): dict(value=c.findtext('value', ''), fp=c.findtext('footprint', '')) for c in root.find('components')}
pad_net, nets = {}, {}
for n in root.find('nets'):
    nodes = [(x.get('ref'), x.get('pin')) for x in n]
    nets[n.get('name')] = nodes
    if not n.get('name').startswith('unconnected-'):
        for r, p in nodes:
            pad_net[(r, p)] = n.get('name')

def signature(part, ic):
    """set of pin numbers of `ic` that `part`'s pads reach through their nets (GND excluded)"""
    sig = set()
    for (r, p), name in pad_net.items():
        if r == part and name != 'GND':
            sig |= {q for a, q in nets[name] if a == ic}
    return frozenset(sig)

bad = []
for s, d in PAIRS[1:]:
    if signature(s, 'U1') != signature(d, 'U2') or not signature(s, 'U1'):
        bad.append((s, d, sorted(signature(s, 'U1')), sorted(signature(d, 'U2'))))
if bad:
    sys.exit('mapping mismatch: %s' % bad)
print('mapping verified for', len(PAIRS) - 1, 'passive pairs')

# ---- board ----
os.makedirs(os.path.join(PRJ, 'tools', 'backups'), exist_ok=True)
shutil.copy(PCB, os.path.join(PRJ, 'tools', 'backups', 'board_%s.kicad_pcb' % time.strftime('%H%M%S')))
b = pcbnew.LoadBoard(PCB)

def _mknet(nm):
    ni = pcbnew.NETINFO_ITEM(b, nm); b.Add(ni); return ni

have = {f.GetReference(): f for f in b.GetFootprints()}
assert all(s in have for s, _ in PAIRS), 'U1 group missing from board'
assert not any(d in have for _, d in PAIRS), 'U2 group already present'

def load_fp(libfp):
    lib, name = libfp.split(':')
    fp = pcbnew.FootprintLoad(os.path.join(FPLIB, lib + '.pretty'), name)
    fp.SetFPID(pcbnew.LIB_ID(lib, name))
    return fp

u1 = have['U1']
u1p = u1.GetPosition()
u2p = VECTOR2I(MM(U2_POS[0] + OX), MM(U2_POS[1] + OY))
for s, d in PAIRS:
    src = have[s]
    fp = load_fp(comps[d]['fp'])
    fp.SetReference(d); fp.SetValue(comps[d]['value'])
    try:
        fp.SetLocalClearance(None)
    except Exception:
        fp.SetLocalClearance(0)
    for pad in fp.Pads():
        nm = pad_net.get((d, pad.GetNumber()))
        if nm:
            pad.SetNet(b.FindNet(nm) or _mknet(nm))
    b.Add(fp)
    fp.SetOrientation(src.GetOrientation())
    off = src.GetPosition() - u1p
    fp.SetPosition(u2p + off)
    # copy reference-text placement and layer/visibility
    st, dt = src.Reference(), fp.Reference()
    dt.SetLayer(st.GetLayer()); dt.SetTextSize(st.GetTextSize()); dt.SetTextThickness(st.GetTextThickness())
    dt.SetVisible(st.IsVisible()); dt.SetTextAngle(st.GetTextAngle())
    dt.SetPosition(fp.GetPosition() + (st.GetPosition() - src.GetPosition()))
    fp.Value().SetVisible(False)
    print(f'{s:4s} -> {d:4s} at ({ToMM(fp.GetPosition().x) - OX:6.2f}, {ToMM(fp.GetPosition().y) - OY:6.2f}) rot {fp.GetOrientationDegrees():6.1f}')

b.BuildConnectivity()
pcbnew.ZONE_FILLER(b).Fill(b.Zones())
pcbnew.SaveBoard(PCB, b)
print('saved; footprints now', len(list(b.GetFootprints())))
