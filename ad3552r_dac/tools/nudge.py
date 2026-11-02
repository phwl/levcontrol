#!/usr/bin/env python3
"""Small-move search for a 2-terminal part whose pad VIAPAD cannot get a via (GND pads: to reach the plane). Run with /usr/bin/python3.

usage: nudge.py REF VIAPAD [max_shift=1.5] [--apply]
For every candidate (shift on a 0.25 mm grid up to max_shift, 4 rotations, smallest move first) checks that
  * the courtyard does not overlap any other part,
  * every pad clears foreign copper (the part's own stubs are taken out first and re-made afterwards),
  * a 0.4/0.2 via fits next to VIAPAD with a straight F.Cu stub,
  * every other pad can be re-connected to where its old stub went (straight line, else A* on F.Cu).
Prints the first few feasible candidates; with --apply the best one is committed (board backed up first).
"""
import sys, math
sys.path.insert(0, 'tools')
import pcbnew
from pcbnew import EDA_ANGLE
from manual_route import *

PCB = 'ad3552r_dac.kicad_pcb'
ref, gpad = sys.argv[1], sys.argv[2]
args = [a for a in sys.argv[3:] if not a.startswith('--')]
MAXS = float(args[0]) if args else 1.5
APPLY = '--apply' in sys.argv

b = pcbnew.LoadBoard(PCB)
f = next(x for x in b.GetFootprints() if x.GetReference() == ref)
pos0, rot0 = P(f.GetPosition()), f.GetOrientationDegrees()

# tracks attached to the part's pads: remember (pad, far end) and take them out
attached = []
for t in list(b.GetTracks()):
    if t.Type() == pcbnew.PCB_VIA_T or t.GetLayer() != pcbnew.F_Cu:
        continue
    for p in f.Pads():
        for a, c in ((t.GetStart(), t.GetEnd()), (t.GetEnd(), t.GetStart())):
            if p.HitTest(a) and not p.HitTest(c):
                attached.append((p.GetNumber(), P(c), ToMM(t.GetWidth()), t))
for _, _, _, t in attached:
    b.Remove(t)
print('%s at (%.2f, %.2f) rot %.0f; re-making %d stubs: %s' % (ref, pos0[0], pos0[1], rot0, len(attached),
      [(n, tuple(round(v, 2) for v in e)) for n, e, _, _ in attached]))

nets = {p.GetNumber(): p.GetNetname() for p in f.Pads()}
VNET = nets[gpad]
ras = {n: Raster(b, pcbnew.F_Cu, n, 0.0, ignore_refs=(ref,)) for n in set(nets.values())}
stub = {n: Raster(b, pcbnew.F_Cu, n, 0.075, ignore_refs=(ref,)) for n in set(nets.values())}
gvia = [Raster(b, l, VNET, 0.2, same_net_pads=True, ignore_refs=(ref,)) for l in (pcbnew.F_Cu, pcbnew.In2_Cu, pcbnew.In3_Cu, pcbnew.B_Cu)]
others = []
for x in b.GetFootprints():
    if x.GetReference() == ref or x.GetReference().startswith('H'):
        continue
    bb = x.GetCourtyard(pcbnew.F_Cu).BBox() if x.GetCourtyard(pcbnew.F_Cu).OutlineCount() else x.GetBoundingBox(False)
    others.append((x.GetReference(), ToMM(bb.GetLeft()) - OX, ToMM(bb.GetTop()) - OY, ToMM(bb.GetRight()) - OX, ToMM(bb.GetBottom()) - OY))

def court():
    c = f.GetCourtyard(pcbnew.F_Cu)
    bb = c.BBox() if c.OutlineCount() else f.GetBoundingBox(False)
    return ToMM(bb.GetLeft()) - OX, ToMM(bb.GetTop()) - OY, ToMM(bb.GetRight()) - OX, ToMM(bb.GetBottom()) - OY

def pad_clear(p):
    bb = p.GetBoundingBox(); r = ras[p.GetNetname()]
    x0, y0, x1, y1 = ToMM(bb.GetLeft()) - OX, ToMM(bb.GetTop()) - OY, ToMM(bb.GetRight()) - OX, ToMM(bb.GetBottom()) - OY
    n = 4
    return all(not r.blocked(x0 + (x1 - x0) * i / n, y0 + (y1 - y0) * j / n) for i in range(n + 1) for j in range(n + 1))

def gnd_via(pt, own):
    best = None
    for i in range(-12, 13):
        for j in range(-12, 13):
            x, y = pt[0] + i * 0.1, pt[1] + j * 0.1
            d = math.hypot(i, j) * 0.1
            if d < 0.45 or d > 1.2 or (best and d >= best[0]):
                continue
            if any(r.blocked(x, y) for r in gvia) or any(math.dist((x, y), q) < 0.75 for q in own):
                continue
            if not stub[VNET].seg_free(pt, (x, y), skip=0.3):
                continue
            best = (d, (x, y))
    return best and best[1]

cands = []
k = int(MAXS / 0.25)
for i in range(-k, k + 1):
    for j in range(-k, k + 1):
        for dr in (0, 180, 90, -90):
            cands.append((math.hypot(i, j) * 0.25 + (0 if dr == 0 else 0.3), i * 0.25, j * 0.25, dr))
cands.sort()
found = []
for cost, dx, dy, dr in cands:
    if cost == 0:
        continue
    f.SetOrientation(EDA_ANGLE(rot0 + dr, pcbnew.DEGREES_T)); f.SetPosition(V(pos0[0] + dx, pos0[1] + dy))
    c = court()
    if any(not (c[2] <= o[1] or o[3] <= c[0] or c[3] <= o[2] or o[4] <= c[1]) for o in others):
        continue
    if not all(pad_clear(p) for p in f.Pads()):
        continue
    pads = {p.GetNumber(): P(p.GetPosition()) for p in f.Pads()}
    own = [q for n, q in pads.items() if n != gpad]
    v = gnd_via(pads[gpad], own)
    if not v:
        continue
    links, ok = [], True
    for n, end, w, _ in attached:
        a = pads[n]
        if stub[nets[n]].seg_free(a, end, skip=0.0):
            links.append((n, [a, end], w)); continue
        pth = route_path(b, nets[n], pcbnew.F_Cu, a, end, w, cell=0.1)
        if not pth or sum(math.dist(q, r) for q, r in zip(pth, pth[1:])) > 3 * math.dist(a, end) + 1.5:
            ok = False; break
        links.append((n, pth, w))
    if not ok:
        continue
    found.append((cost, dx, dy, dr, v, links))
    print('feasible: shift (%+.2f, %+.2f) rot %+d  via (%.2f, %.2f)  re-links %s' % (dx, dy, dr, v[0], v[1], [(n, len(p) - 1) for n, p, _ in links]))
    if len(found) >= 3:
        break

if not found:
    print('no feasible small move for', ref)
elif APPLY:
    cost, dx, dy, dr, v, links = found[0]
    backup(PCB, 'pre_nudge_' + ref)
    f.SetOrientation(EDA_ANGLE(rot0 + dr, pcbnew.DEGREES_T)); f.SetPosition(V(pos0[0] + dx, pos0[1] + dy))
    gp = P(next(p for p in f.Pads() if p.GetNumber() == gpad).GetPosition())
    add_track(b, VNET, pcbnew.F_Cu, gp, v, 0.15); add_via(b, VNET, v)
    for n, pth, w in links:
        for q, r in zip(pth, pth[1:]):
            add_track(b, nets[n], pcbnew.F_Cu, q, r, w)
    save(b, PCB)
    print('applied: %s moved by (%+.2f, %+.2f), rot %+d' % (ref, dx, dy, dr))
