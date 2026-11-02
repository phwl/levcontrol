#!/usr/bin/env python3
"""Generate ad3552r_dac.kicad_pcb from the schematic netlist (run with /usr/bin/python3: needs KiCad's pcbnew).

Board frame = Red Pitaya STEMlab 125-14 4-Input frame from the design notebook (section 10.4):
origin at the mounting hole beside E2, x towards the Ethernet end, y from E2 towards E1.
This board is a mezzanine: J1 (E1) and J12 (E2) are sockets on the bottom side at the Red Pitaya pin coordinates.
"""
import math, os, sys, json
import xml.etree.ElementTree as ET
import pcbnew
from pcbnew import FromMM as MM, ToMM, VECTOR2I, EDA_ANGLE

PRJ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
FPLIB = '/usr/share/kicad/footprints'
OUT = os.path.join(PRJ, 'ad3552r_dac.kicad_pcb')
OX, OY = 20.0, 10.0              # KiCad page offset: file coords = Red Pitaya frame + (OX, OY) (keeps everything on the page)
V = lambda x, y: VECTOR2I(MM(x + OX), MM(y + OY))
P = lambda v: (ToMM(v.x) - OX, ToMM(v.y) - OY)

# ---------------- notebook mechanical data (section 10.4) ----------------
PITCH = 2.54
PIN_X = [8.33 + PITCH * i for i in range(13)]
ROWS = {'E2': (0.372, 2.912), 'E1': (51.172, 53.712)}
HOLES = [(0.0, 0.0), (84.0, 0.0), (0.0, 54.0), (84.0, 54.0)]
XMIN, XMAX, YMIN, YMAX = -8.0, 87.0, -3.0, 57.0          # same rectangle as the Red Pitaya PCB
CORNER_R = 3.0

def pin_xy(hdr, n):
    col = 12 - (n - 1) // 2
    return PIN_X[col], ROWS[hdr][(n - 1) % 2]


if os.path.exists(OUT) and '--force' not in sys.argv:
    sys.exit('refusing to overwrite %s (it may contain hand placement). Use tools/add_*.py to extend it, or pass --force.' % OUT)

# ---------------- netlist ----------------
root = ET.parse(os.path.join(PRJ, 'tools', 'netlist.xml')).getroot()
comps = {}
for c in root.find('components'):
    ref = c.get('ref')
    if ref.startswith('#'):
        continue
    comps[ref] = dict(value=c.findtext('value', ''), fp=c.findtext('footprint', ''))
nets = {}                      # name -> [(ref, pin)]
pad_net = {}                   # (ref, pin) -> net name
for n in root.find('nets'):
    name = n.get('name')
    nodes = [(x.get('ref'), x.get('pin')) for x in n if not x.get('ref').startswith('#')]
    if not nodes:
        continue
    nets[name] = nodes
    if name.startswith('unconnected-'):
        continue
    for r, p in nodes:
        pad_net[(r, p)] = name

# ---------------- board ----------------
b = pcbnew.BOARD()
b.SetCopperLayerCount(6)
netitems = {}
for name in nets:
    if name.startswith('unconnected-'):
        continue
    ni = pcbnew.NETINFO_ITEM(b, name)
    b.Add(ni)
    netitems[name] = ni

def load_fp(libfp):
    lib, name = libfp.split(':')
    fp = pcbnew.FootprintLoad(os.path.join(FPLIB, lib + '.pretty'), name)
    if fp is None:
        raise RuntimeError('footprint not found: ' + libfp)
    fp.SetFPID(pcbnew.LIB_ID(lib, name))
    return fp

INC_FILE = os.path.join(PRJ, 'tools', 'include.txt')
INC = set(open(INC_FILE).read().split()) | {'J1', 'J12'} if os.path.exists(INC_FILE) else None
FP = {}
for ref, c in comps.items():
    if INC is not None and ref not in INC:
        continue
    fp = load_fp(c['fp'])
    fp.SetReference(ref)
    fp.SetValue(c['value'])
    for pad in fp.Pads():
        nm = pad_net.get((ref, pad.GetNumber()))
        if nm:
            pad.SetNet(netitems[nm])
    try:
        fp.SetLocalClearance(None)
    except Exception:
        fp.SetLocalClearance(0)
    b.Add(fp)
    FP[ref] = fp

# mounting holes (M3, same positions as the Red Pitaya)
for i, (x, y) in enumerate(HOLES, 1):
    h = load_fp('MountingHole:MountingHole_3.2mm_M3')
    h.SetReference('H%d' % i)
    h.SetValue('M3')
    h.SetPosition(V(x, y))
    b.Add(h)
    FP['H%d' % i] = h

# ---------------- outline (rounded rectangle on Edge.Cuts) ----------------
def seg(p, q):
    s = pcbnew.PCB_SHAPE(b)
    s.SetShape(pcbnew.SHAPE_T_SEGMENT)
    s.SetLayer(pcbnew.Edge_Cuts)
    s.SetWidth(MM(0.1))
    s.SetStart(V(*p)); s.SetEnd(V(*q))
    b.Add(s)

def arc(c, a0, a1):
    s = pcbnew.PCB_SHAPE(b)
    s.SetShape(pcbnew.SHAPE_T_ARC)
    s.SetLayer(pcbnew.Edge_Cuts)
    s.SetWidth(MM(0.1))
    am = (a0 + a1) / 2
    pt = lambda a: (c[0] + CORNER_R * math.cos(math.radians(a)), c[1] + CORNER_R * math.sin(math.radians(a)))
    s.SetArcGeometry(V(*pt(a0)), V(*pt(am)), V(*pt(a1)))
    b.Add(s)

r = CORNER_R
seg((XMIN + r, YMIN), (XMAX - r, YMIN)); seg((XMAX, YMIN + r), (XMAX, YMAX - r))
seg((XMAX - r, YMAX), (XMIN + r, YMAX)); seg((XMIN, YMAX - r), (XMIN, YMIN + r))
arc((XMAX - r, YMIN + r), -90, 0); arc((XMAX - r, YMAX - r), 0, 90)
arc((XMIN + r, YMAX - r), 90, 180); arc((XMIN + r, YMIN + r), 180, 270)

# ---------------- sockets on the bottom side at the Red Pitaya pin coordinates ----------------
def place_socket(ref, hdr):
    fp = FP[ref]
    targets = {str(n): pin_xy(hdr, n) for n in range(1, 27)}
    for flip in (False, True):
        for rot in (0, 90, 180, 270):
            fp.SetPosition(V(0, 0)); fp.SetOrientation(EDA_ANGLE(0, pcbnew.DEGREES_T))
            if fp.GetLayer() != pcbnew.F_Cu:
                fp.Flip(fp.GetPosition(), pcbnew.FLIP_DIRECTION_LEFT_RIGHT)
            if flip:
                fp.Flip(fp.GetPosition(), pcbnew.FLIP_DIRECTION_LEFT_RIGHT)
            fp.SetOrientation(EDA_ANGLE(rot, pcbnew.DEGREES_T))
            pos = {p.GetNumber(): P(p.GetPosition()) for p in fp.Pads()}
            t = (targets['1'][0] - pos['1'][0], targets['1'][1] - pos['1'][1])
            err = max(math.hypot(pos[k][0] + t[0] - targets[k][0], pos[k][1] + t[1] - targets[k][1]) for k in targets)
            if err < 1e-3:
                fp.SetPosition(V(t[0], t[1]))
                return flip, rot
    raise RuntimeError('no orientation matches ' + ref)

print('J1 (E1):', place_socket('J1', 'E1'), ' J12 (E2):', place_socket('J12', 'E2'))
print('J1 layer', FP['J1'].GetLayerName())

# ---------------- placement engine ----------------
OBST = []                       # top-side obstacles (x0, y0, x1, y1)
PLACED = {}                     # ref -> rect

def rect_of(fp, m=0.0):
    bb = fp.GetBoundingBox(False)
    return (ToMM(bb.GetLeft()) - OX - m, ToMM(bb.GetTop()) - OY - m, ToMM(bb.GetRight()) - OX + m, ToMM(bb.GetBottom()) - OY + m)

def overlap(a, c):
    return not (a[2] <= c[0] or c[2] <= a[0] or a[3] <= c[1] or c[3] <= a[1])

def inside_board(rc, margin=0.7):
    return rc[0] >= XMIN + margin and rc[2] <= XMAX - margin and rc[1] >= YMIN + margin and rc[3] <= YMAX - margin

def free(rc, ignore=None):
    if not inside_board(rc):
        return False
    for o in OBST:
        if overlap(rc, o):
            return False
    for k, v in PLACED.items():
        if k != ignore and overlap(rc, v):
            return False
    return True

def put(ref, x, y, rot=0, force=False):
    fp = FP[ref]
    fp.SetOrientation(EDA_ANGLE(rot, pcbnew.DEGREES_T))
    fp.SetPosition(V(x, y))
    rc = rect_of(fp, 0.5)
    if not force and not free(rc, ignore=ref):
        return False
    PLACED[ref] = rc
    return True

def pad_pos(ref, pin):
    for p in FP[ref].Pads():
        if p.GetNumber() == str(pin):
            return P(p.GetPosition())
    raise KeyError((ref, pin))

# obstacles: socket pad fields (through-hole copper on the top side), mounting-hole keep-outs
OBST += [(6.0, -2.0, 41.0, 5.0), (6.0, 49.0, 41.0, 56.0)]
OBST += [(x - 3.8, y - 3.8, x + 3.8, y + 3.8) for x, y in HOLES]
PLACED['J1'] = (6.0, 49.0, 41.0, 56.0)
PLACED['J12'] = (6.0, -2.0, 41.0, 5.0)

def fixed(ref, x, y, rot=0):
    if ref not in FP:
        return None
    put(ref, x, y, rot, force=True)
    return rect_of(FP[ref])

# --- fixed parts (connectors and main ICs) ---
for i, (ref, y) in enumerate((('J4', 10.0), ('J6', 21.3), ('J8', 32.6), ('J10', 43.9))):
    fixed(ref, -3.0, y)                              # OUTn+ column
    fixed({'J4': 'J5', 'J6': 'J7', 'J8': 'J9', 'J10': 'J11'}[ref], 9.7, y)   # OUTn- column (12.7 mm from its partner)
fixed('J2', 79.0, 9.0, 0)                            # +12 V barrel jack at the right edge
fixed('U1', 39.0, 13.0); fixed('U2', 39.0, 30.0)
for ref, x in (('U8', 21.0), ('U9', 33.0), ('U10', 45.0), ('U11', 57.0)):
    fixed(ref, x, 44.5)
fixed('C57', 60.0, 5.0, 90)                          # 47 uF input electrolytic, beside the barrel jack
fixed('U12', 62.0, 16.0); fixed('U13', 73.0, 31.0); fixed('U14', 69.0, 47.0); fixed('U15', 80.0, 44.0)

# --- connectivity-driven placement of everything else ---
BIG = 14                         # nets bigger than this are "rails" (never used as anchors unless nothing else)
ANCH = {}
ANCH.update({'U16': ('U3', '1'), 'U17': ('U4', '1'), 'U18': ('U5', '1'), 'U19': ('U6', '1')})
ANCH.update({'R44': ('U3', '1'), 'R45': ('U4', '1'), 'R46': ('U5', '1'), 'R47': ('U6', '1')})
ANCH.update({'R48': ('U16', '1'), 'R49': ('U17', '1'), 'R50': ('U18', '1'), 'R51': ('U19', '1')})
ANCH.update({'C1': ('U1', '1'), 'C2': ('U2', '1'), 'C3': ('U1', '2'), 'C4': ('U2', '2'),
             'C5': ('U1', '19'), 'C6': ('U2', '19'), 'C7': ('U1', '19'), 'C8': ('U2', '19'),
             'C19': ('U7', '2'), 'U7': ('U1', '20'),
             'R1': ('U1', '31'), 'R2': ('U2', '31')})
for i in range(4):
    ANCH['C%d' % (29 + i)] = ('U%d' % (3 + i), '6'); ANCH['C%d' % (33 + i)] = ('U%d' % (3 + i), '2')
    ANCH['C%d' % (49 + i)] = ('U%d' % (16 + i), '6'); ANCH['C%d' % (53 + i)] = ('U%d' % (16 + i), '2')
for i, u in enumerate(('U8', 'U9', 'U10', 'U11')):
    ANCH['C%d' % (37 + i)] = (u, '16'); ANCH['C%d' % (41 + i)] = (u, '15')
ANCH.update({'R16': ('U8', '9'), 'TP1': ('U8', '3'),
             'D10': ('D9', '1'), 'C57': ('D9', '1'), 'C58': ('D9', '1'),
             'C59': ('U12', '8'), 'C60': ('U12', '1'), 'C63': ('U13', '11'), 'C66': ('U13', '12'), 'C67': ('U13', '5'),
             'C71': ('U14', '3'), 'C72': ('L1', '2'), 'C73': ('L1', '2'), 'C76': ('U15', '1'), 'C77': ('U15', '5')})
# electrode connectors: BAV99 clamp and bleeder sit at the SMA jack (notebook rule 6)
for k, (jp, jn) in enumerate((('J4', 'J5'), ('J6', 'J7'), ('J8', 'J9'), ('J10', 'J11'))):
    ANCH['D%d' % (1 + 2 * k)] = (jp, '1'); ANCH['D%d' % (2 + 2 * k)] = (jn, '1')
    ANCH['R%d' % (52 + 2 * k)] = (jp, '1'); ANCH['R%d' % (53 + 2 * k)] = (jn, '1')

netsize = {n: len(v) for n, v in nets.items()}
refs_of = {}
for n, nodes in nets.items():
    for r_, p_ in nodes:
        refs_of.setdefault(r_, []).append((n, p_))

def is_ic(ref):
    return len(list(FP[ref].Pads())) >= 5

def choose_anchor(ref):
    if ref in ANCH:
        a = ANCH[ref]
        return (a[0], a[1]) if a[0] in PLACED else None
    best = None
    for n, p_ in refs_of.get(ref, []):
        if n.startswith('unconnected-'):
            continue
        for r2, p2 in nets[n]:
            if r2 == ref or r2 not in PLACED or r2 in ('J1', 'J12') or r2.startswith('H'):
                continue
            key = (netsize[n] > BIG, netsize[n], 0 if is_ic(r2) else 1, r2)
            if best is None or key < best[0]:
                best = (key, (r2, p2))
    return best[1] if best else None

def try_place(ref, anchor):
    a_ref, a_pin = anchor
    ap = pad_pos(a_ref, a_pin)
    cen = P(FP[a_ref].GetPosition())
    vx, vy = ap[0] - cen[0], ap[1] - cen[1]
    nrm = math.hypot(vx, vy)
    ux, uy = (vx / nrm, vy / nrm) if nrm > 0.3 else (0.0, -1.0)
    fp = FP[ref]
    bb = rect_of(fp)
    half = max(bb[2] - bb[0], bb[3] - bb[1]) / 2
    r0 = 0.6 + half
    ang = [0]
    for d in range(15, 181, 15):
        ang += [d, -d]
    r = r0
    while r < r0 + 22:
        for a in ang:
            ca, sa = math.cos(math.radians(a)), math.sin(math.radians(a))
            dx, dy = ux * ca - uy * sa, ux * sa + uy * ca
            x, y = ap[0] + dx * r, ap[1] + dy * r
            for rot in ((0, 90) if abs(dx) > abs(dy) else (90, 0)):
                if put(ref, round(x * 2) / 2.0 if False else x, y, rot):
                    return True
        r += 0.4
    return False

todo = [r_ for r_ in FP if r_ not in PLACED and not r_.startswith('H')]
rounds = 0
while todo and rounds < 60:
    rounds += 1
    progress = False
    order = sorted(todo, key=lambda r_: (0 if is_ic(r_) else 1, r_))
    for ref in order:
        anc = choose_anchor(ref)
        if anc and try_place(ref, anc):
            todo.remove(ref); progress = True
    if not progress:
        break
print('unplaced after connectivity placement:', todo)
# whole-board fallback: biggest leftovers first, scan for any free spot (1 mm grid)
def area(r_):
    rc = rect_of(FP[r_]); return (rc[2] - rc[0]) * (rc[3] - rc[1])
for ref in sorted(todo, key=area, reverse=True):
    done = False
    for yy in [YMIN + 2 + i * 1.0 for i in range(int(YMAX - YMIN - 4))]:
        for xx in [XMIN + 2 + i * 1.0 for i in range(int(XMAX - XMIN - 4))]:
            for rot in (0, 90):
                if put(ref, xx, yy, rot):
                    done = True; break
            if done: break
        if done: break
    if done:
        todo.remove(ref)
print('still unplaced:', todo)


# ---------------- silkscreen tidy: reference text off the silk for small parts ----------------
for ref, fp in FP.items():
    if ref.startswith('H'):
        continue
    t = fp.Reference()
    if is_ic(ref) or ref[0] in 'JU':
        t.SetTextSize(VECTOR2I(MM(0.8), MM(0.8))); t.SetTextThickness(MM(0.12))
    else:
        t.SetLayer(pcbnew.F_Fab if fp.GetLayer() == pcbnew.F_Cu else pcbnew.B_Fab)
    fp.Value().SetVisible(False)

def silk_text(txt, x, y, size=1.2, layer=pcbnew.F_SilkS, mirror=False):
    t = pcbnew.PCB_TEXT(b)
    t.SetText(txt); t.SetLayer(layer); t.SetPosition(V(x, y))
    t.SetTextSize(VECTOR2I(MM(size), MM(size))); t.SetTextThickness(MM(0.15))
    if mirror: t.SetMirrored(True)
    b.Add(t)
silk_text('AD3552R 4-ch DAC mezzanine for STEMlab 125-14 4-Input   rev A', 40.0, 55.6, 1.0)
silk_text('E1', 5.0, 52.4, 1.2, pcbnew.B_SilkS, True); silk_text('E2', 5.0, 1.6, 1.2, pcbnew.B_SilkS, True)

# ---------------- planes: In1 = solid ground, In4 = split power plane ----------------
def add_zone(layer, netname, rect=None, prio=0):
    x0, y0, x1, y1 = rect or (XMIN + 0.3, YMIN + 0.3, XMAX - 0.3, YMAX - 0.3)
    z = pcbnew.ZONE(b)
    z.SetLayer(layer); z.SetNet(netitems[netname]); z.SetAssignedPriority(prio)
    ol = z.Outline(); ol.NewOutline()
    for x, y in ((x0, y0), (x1, y0), (x1, y1), (x0, y1)):
        ol.Append(MM(x + OX), MM(y + OY))
    z.SetMinThickness(MM(0.2)); z.SetLocalClearance(MM(0.25))
    z.SetPadConnection(pcbnew.ZONE_CONNECTION_THERMAL)
    z.SetThermalReliefGap(MM(0.3)); z.SetThermalReliefSpokeWidth(MM(0.35))
    b.Add(z)
add_zone(pcbnew.In1_Cu, 'GND')          # continuous ground plane (notebook rule 3)
# power islands on In4, drawn where each rail's loads cluster (-5V, VLOGIC, DVDD are routed as wide tracks)
POWER_ISLANDS = [('+5V',   (XMIN + 0.3, YMIN + 0.3, 33.0, YMAX - 0.3), 0),     # left analog area: amplifiers, clamps
                 ('AVDD',  (33.0, YMIN + 0.3, 52.0, 38.0), 0),                  # DACs, reference, AVDD regulator side
                 ('+3V3',  (33.0, 38.0, 63.0, YMAX - 0.3), 0),                  # translator row, from E1 pins 1-2
                 ('+12V',  (55.0, YMIN + 0.3, XMAX - 0.3, 26.0), 0),            # input corner
                 ('+2V5',  (63.0, 26.0, XMAX - 0.3, YMAX - 0.3), 0),            # buck output and 1.8 V LDO input
                 ('+1V8',  (76.0, 37.0, XMAX - 0.3, 50.0), 1)]                  # carve-out inside the +2V5 island
for net, rect, prio in POWER_ISLANDS:
    add_zone(pcbnew.In4_Cu, net, rect, prio)
b.GetDesignSettings().SetAuxOrigin(V(0, 0))
b.BuildConnectivity()
pcbnew.ZONE_FILLER(b).Fill(b.Zones())
pcbnew.SaveBoard(OUT, b)

# ---------------- stackup (JLCPCB-style 1.6 mm 4-layer, verify with the fab) ----------------
STACKUP = """(stackup
\t\t\t(layer "F.SilkS" (type "Top Silk Screen"))
\t\t\t(layer "F.Paste" (type "Top Solder Paste"))
\t\t\t(layer "F.Mask" (type "Top Solder Mask") (thickness 0.01))
\t\t\t(layer "F.Cu" (type "copper") (thickness 0.035))
\t\t\t(layer "dielectric 1" (type "prepreg") (thickness 0.1) (material "FR4") (epsilon_r 4.2) (loss_tangent 0.02))
\t\t\t(layer "In1.Cu" (type "copper") (thickness 0.0175))
\t\t\t(layer "dielectric 2" (type "core") (thickness 0.5) (material "FR4") (epsilon_r 4.6) (loss_tangent 0.02))
\t\t\t(layer "In2.Cu" (type "copper") (thickness 0.0175))
\t\t\t(layer "dielectric 3" (type "prepreg") (thickness 0.26) (material "FR4") (epsilon_r 4.4) (loss_tangent 0.02))
\t\t\t(layer "In3.Cu" (type "copper") (thickness 0.0175))
\t\t\t(layer "dielectric 4" (type "core") (thickness 0.5) (material "FR4") (epsilon_r 4.6) (loss_tangent 0.02))
\t\t\t(layer "In4.Cu" (type "copper") (thickness 0.0175))
\t\t\t(layer "dielectric 5" (type "prepreg") (thickness 0.1) (material "FR4") (epsilon_r 4.2) (loss_tangent 0.02))
\t\t\t(layer "B.Cu" (type "copper") (thickness 0.035))
\t\t\t(layer "B.Mask" (type "Bottom Solder Mask") (thickness 0.01))
\t\t\t(layer "B.Paste" (type "Bottom Solder Paste"))
\t\t\t(layer "B.SilkS" (type "Bottom Silk Screen"))
\t\t\t(copper_finish "ENIG")
\t\t\t(dielectric_constraints no)
\t\t)"""
txt = open(OUT).read()
if '(stackup' not in txt:
    i = txt.index('(setup')
    j = txt.index('\n', i)
    txt = txt[:j + 1] + '\t\t' + STACKUP + '\n' + txt[j + 1:]
    open(OUT, 'w').write(txt)

# ---------------- project rules and net classes ----------------
pro_path = os.path.join(PRJ, 'ad3552r_dac.kicad_pro')
pro = json.load(open(pro_path))
ds = pro.setdefault('board', {}).setdefault('design_settings', {})
ds['rules'] = {'min_clearance': 0.1, 'min_track_width': 0.1, 'min_via_diameter': 0.4, 'min_through_hole_diameter': 0.2,
               'min_via_annular_width': 0.1, 'min_copper_edge_clearance': 0.3, 'min_hole_clearance': 0.25,
               'min_hole_to_hole': 0.25, 'min_microvia_diameter': 0.2, 'min_microvia_drill': 0.1,
               'min_silk_clearance': 0.0, 'min_text_height': 0.8, 'min_text_thickness': 0.12}
ds['defaults'] = {'copper_line_width': 0.2, 'copper_text_size_h': 1.5, 'copper_text_size_v': 1.5, 'copper_text_thickness': 0.3,
                  'silk_line_width': 0.12, 'silk_text_size_h': 0.8, 'silk_text_size_v': 0.8, 'silk_text_thickness': 0.12,
                  'other_line_width': 0.1, 'board_outline_line_width': 0.1, 'pads': {'drill': 0.8, 'height': 1.6, 'width': 1.6}}
def ncls(name, track, clr, via=0.5, drill=0.25):
    return {'name': name, 'track_width': track, 'clearance': clr, 'via_diameter': via, 'via_drill': drill,
            'diff_pair_width': 0.2, 'diff_pair_gap': 0.25, 'diff_pair_via_gap': 0.25, 'microvia_diameter': 0.3,
            'microvia_drill': 0.1, 'bus_width': 12, 'wire_width': 6, 'line_style': 0,
            'pcb_color': 'rgba(0, 0, 0, 0.000)', 'schematic_color': 'rgba(0, 0, 0, 0.000)'}
pro['net_settings'] = {
    'classes': [ncls('Default', 0.15, 0.1, 0.4, 0.2), ncls('Power', 0.3, 0.15, 0.5, 0.25), ncls('Coax50', 0.16, 0.2)],
    'meta': {'version': 4}, 'net_colors': None, 'netclass_assignments': None,
    'netclass_patterns': [{'netclass': 'Power', 'pattern': p} for p in
                          ('+12V', '+5V', '-5V', '+2V5', '+1V8', '+3V3', 'AVDD', 'DVDD', 'VLOGIC', 'VNEG_PUMP', 'VIN_*', 'BUCK_SW')]
                         + [{'netclass': 'Coax50', 'pattern': p} for p in ('OUT?_P', 'OUT?_N')]}
json.dump(pro, open(pro_path, 'w'), indent=2)

json.dump({r_: [round(P(FP[r_].GetPosition())[0], 2), round(P(FP[r_].GetPosition())[1], 2)] for r_ in FP},
          open(os.path.join(PRJ, 'tools', 'placement.json'), 'w'), indent=0)
print('saved', OUT, 'footprints:', len(FP))
