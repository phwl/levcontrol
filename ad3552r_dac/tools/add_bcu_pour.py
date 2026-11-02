#!/usr/bin/env python3
"""Add a GND pour on B.Cu, stitched to the In1 plane. Run with /usr/bin/python3 from the project dir (backs the board up first).

* one GND zone over the whole board on B.Cu: 0.3 mm clearance, 0.25 mm min width, thermal reliefs, isolated islands removed
* no keep-outs: no TIA input / feedback / IOUT net is routed on B.Cu (only SCLK, SYNC_OUT, DQ_*, DVDD and OUT0_NINV are)
* stitching vias (0.4/0.2, GND): a grid of free spots >= STITCH mm apart, then one via in every pour fragment
  that would otherwise be an unconnected island
"""
import sys, math
sys.path.insert(0, 'tools')
import pcbnew
from pcbnew import FromMM as MM, ToMM
from manual_route import Raster, backup, add_via, save, P, V, OX, OY

PCB = 'ad3552r_dac.kicad_pcb'
STITCH, MIN_GND_VIA = 4.0, 1.5      # mm between new stitching vias / to an existing GND via
backup(PCB, 'pre_bcu_pour')
b = pcbnew.LoadBoard(PCB)
if any(z.GetLayerSet().Contains(pcbnew.B_Cu) for z in b.Zones()):
    sys.exit('B.Cu already has a zone - nothing done')

z = pcbnew.ZONE(b)
z.SetLayer(pcbnew.B_Cu); z.SetNet(b.FindNet('GND')); z.SetAssignedPriority(0)
ol = z.Outline(); ol.NewOutline()
for x, y in ((-8, -3), (87, -3), (87, 57), (-8, 57)):
    ol.Append(MM(x + OX), MM(y + OY))
z.SetLocalClearance(MM(0.3)); z.SetMinThickness(MM(0.25))
z.SetPadConnection(pcbnew.ZONE_CONNECTION_THERMAL)
z.SetThermalReliefGap(MM(0.3)); z.SetThermalReliefSpokeWidth(MM(0.3))
z.SetIslandRemovalMode(pcbnew.ISLAND_REMOVAL_MODE_NEVER)   # first fill keeps every fragment so we can find them
b.Add(z)

def fill():
    b.BuildConnectivity(); pcbnew.ZONE_FILLER(b).Fill([z])

# spots a GND via may take: clear of foreign copper on every routed layer, and outside part courtyards
ras = [Raster(b, l, 'GND', 0.2, same_net_pads=True) for l in (pcbnew.F_Cu, pcbnew.In2_Cu, pcbnew.In3_Cu, pcbnew.In4_Cu, pcbnew.B_Cu)]
courts = []
for f in b.GetFootprints():
    c = f.GetCourtyard(pcbnew.F_Cu)
    if c.OutlineCount():
        bb = c.BBox(); courts.append((ToMM(bb.GetLeft()) - OX, ToMM(bb.GetTop()) - OY, ToMM(bb.GetRight()) - OX, ToMM(bb.GetBottom()) - OY))
vias = [(P(t.GetPosition()), t.GetNetname()) for t in b.GetTracks() if t.Type() == pcbnew.PCB_VIA_T]
holes = [P(p.GetPosition()) for f in b.GetFootprints() for p in f.Pads() if p.GetDrillSize().x > 0]
new = []

def free(x, y):
    if any(r.blocked(x, y) for r in ras) or any(c[0] - 0.3 <= x <= c[2] + 0.3 and c[1] - 0.3 <= y <= c[3] + 0.3 for c in courts):
        return False
    if any(math.dist((x, y), q) < (MIN_GND_VIA if n == 'GND' else 0.8) for q, n in vias):
        return False
    return all(math.dist((x, y), q) >= 0.9 for q in holes)

def take(x, y):
    add_via(b, 'GND', (x, y)); new.append((x, y)); vias.append(((x, y), 'GND'))

# 1. grid stitching
step = 0.5
y = -1.5
while y <= 55.5:
    x = -6.5
    while x <= 85.5:
        if free(x, y) and all(math.dist((x, y), q) >= STITCH for q in new):
            take(x, y)
        x += step
    y += step
print('grid stitching vias:', len(new))

# 2. one via in each fragment that has no GND pad / via in it
fill()
n_grid = len(new)
gnd_pts = [V(*q) for q, n in vias if n == 'GND'] + [p.GetPosition() for f in b.GetFootprints() for p in f.Pads()
                                                     if p.GetNetname() == 'GND' and p.IsOnLayer(pcbnew.B_Cu)]
fp = z.GetFilledPolysList(pcbnew.B_Cu)
orphans = 0
for k in range(fp.OutlineCount()):
    one = pcbnew.SHAPE_POLY_SET(); one.AddOutline(fp.Outline(k))
    if any(one.Contains(q) for q in gnd_pts):
        continue
    orphans += 1
    bb = fp.Outline(k).BBox()
    x0, y0, x1, y1 = ToMM(bb.GetLeft()) - OX, ToMM(bb.GetTop()) - OY, ToMM(bb.GetRight()) - OX, ToMM(bb.GetBottom()) - OY
    spot = None
    for j in range(int((y1 - y0) / 0.1) + 1):
        for i in range(int((x1 - x0) / 0.1) + 1):
            x, y = x0 + i * 0.1, y0 + j * 0.1
            # the whole via pad (+0.05) must sit inside the fragment
            if all(one.Contains(V(x + dx, y + dy)) for dx, dy in ((0, 0), (0.25, 0), (-0.25, 0), (0, 0.25), (0, -0.25))) and free(x, y):
                spot = (x, y); break
        if spot: break
    if spot:
        take(*spot)
print('fragments without a GND connection: %d, rescued with a via: %d' % (orphans, len(new) - n_grid))

z.SetIslandRemovalMode(pcbnew.ISLAND_REMOVAL_MODE_ALWAYS)   # whatever is still floating goes
save(b, PCB)
a = sum(abs(z.GetFilledPolysList(pcbnew.B_Cu).Outline(k).Area()) for k in range(z.GetFilledPolysList(pcbnew.B_Cu).OutlineCount())) / 1e12
print('B.Cu GND pour: %d fragments, %.0f mm^2; %d stitching vias added' % (z.GetFilledPolysList(pcbnew.B_Cu).OutlineCount(), a, len(new)))
