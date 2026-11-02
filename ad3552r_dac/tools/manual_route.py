#!/usr/bin/env python3
"""Small manual-routing helpers on the EXISTING board (pcbnew). Import from other scripts or run a job list. Use /usr/bin/python3.

* Raster 0.1 mm per cell, per (layer, net): foreign copper (pads, tracks, vias, board edge, holes) inflated by clearance + half the new copper.
* find_via_spot(net, near, stub_from): nearest spot for a 0.4/0.2 via whose straight F.Cu stub to `stub_from` is also clear.
* route_path(net, layer, a, b, width): A* (8 directions) on a 0.2 mm grid, returns a simplified polyline.
"""
import math, heapq, os, shutil, time
import pcbnew
from pcbnew import FromMM as MM, ToMM, VECTOR2I

OX, OY = 20.0, 10.0
CLR = 0.1
V = lambda x, y: VECTOR2I(MM(x + OX), MM(y + OY))
P = lambda v: (ToMM(v.x) - OX, ToMM(v.y) - OY)
X0, Y0, X1, Y1, CELL = -8.0, -3.0, 87.0, 57.0, 0.1

class Raster:
    def __init__(self, b, layer, net, inflate, ignore_refs=(), same_net_pads=False):
        self.nx = int((X1 - X0) / CELL) + 1; self.ny = int((Y1 - Y0) / CELL) + 1
        self.g = [bytearray(self.nx) for _ in range(self.ny)]
        lid = layer
        # board edge keep-out (rounded corners approximated by the rectangle margin)
        m = int(0.6 / CELL)
        for j in range(self.ny):
            row = self.g[j]
            if j < m or j >= self.ny - m:
                row[:] = b'\x01' * self.nx
            else:
                row[:m] = b'\x01' * m; row[self.nx - m:] = b'\x01' * m
        for f in b.GetFootprints():
            if f.GetReference() in ignore_refs:
                continue
            for p in f.Pads():
                if (p.GetNetname() == net and not same_net_pads) or not p.IsOnLayer(lid):
                    continue
                bb = p.GetBoundingBox()
                self.rect(ToMM(bb.GetLeft()) - OX, ToMM(bb.GetTop()) - OY, ToMM(bb.GetRight()) - OX, ToMM(bb.GetBottom()) - OY, inflate + CLR)
        for t in b.GetTracks():
            if t.GetNetname() == net:
                continue
            if t.Type() == pcbnew.PCB_VIA_T:
                x, y = P(t.GetPosition()); r = ToMM(t.GetWidth(pcbnew.F_Cu)) / 2
                self.rect(x - r, y - r, x + r, y + r, inflate + CLR)
            elif t.IsOnLayer(lid):
                (xa, ya), (xb, yb) = P(t.GetStart()), P(t.GetEnd())
                w = ToMM(t.GetWidth()) / 2
                n = max(1, int(math.hypot(xb - xa, yb - ya) / 0.1))
                for i in range(n + 1):
                    x = xa + (xb - xa) * i / n; y = ya + (yb - ya) * i / n
                    self.rect(x - w, y - w, x + w, y + w, inflate + CLR)
    def rect(self, xa, ya, xb, yb, m):
        i0 = max(0, int((xa - m - X0) / CELL)); i1 = min(self.nx - 1, int((xb + m - X0) / CELL))
        j0 = max(0, int((ya - m - Y0) / CELL)); j1 = min(self.ny - 1, int((yb + m - Y0) / CELL))
        if i1 < i0: return
        fill = b'\x01' * (i1 - i0 + 1)
        for j in range(j0, j1 + 1):
            self.g[j][i0:i1 + 1] = fill
    def blocked(self, x, y):
        i = int(round((x - X0) / CELL)); j = int(round((y - Y0) / CELL))
        return not (0 <= i < self.nx and 0 <= j < self.ny) or self.g[j][i] != 0
    def seg_free(self, a, b, skip=0.0):
        n = max(1, int(math.dist(a, b) / CELL))
        d = math.dist(a, b)
        return all(not self.blocked(a[0] + (b[0] - a[0]) * i / n, a[1] + (b[1] - a[1]) * i / n) for i in range(n + 1) if d * i / n >= skip)

def find_via_spot(b, net, near, stub_from=None, max_r=3.5, via_d=0.4, track_w=0.2, step=0.1, stub_layer=pcbnew.F_Cu, zone_rect=None):
    """nearest free via spot (all copper layers) whose straight stub on `stub_layer` from `stub_from` is free as well"""
    rv = {lay: Raster(b, lay, net, via_d / 2, same_net_pads=True) for lay in (pcbnew.F_Cu, pcbnew.B_Cu, pcbnew.In2_Cu, pcbnew.In3_Cu)}
    rs = Raster(b, stub_layer, net, track_w / 2)
    best = None
    n = int(max_r / step)
    for iy in range(-n, n + 1):
        for ix in range(-n, n + 1):
            x, y = near[0] + ix * step, near[1] + iy * step
            d = math.hypot(x - near[0], y - near[1])
            if d > max_r or (best and d >= best[0]):
                continue
            if zone_rect and not (zone_rect[0] <= x <= zone_rect[2] and zone_rect[1] <= y <= zone_rect[3]):
                continue
            if any(r.blocked(x, y) for r in rv.values()):
                continue
            if stub_from and not rs.seg_free(stub_from, (x, y), skip=0.35):
                continue
            best = (d, x, y)
    return None if best is None else (best[1], best[2])

def route_path(b, net, layer, a, c, width=0.3, cell=0.2):
    r = Raster(b, layer, net, width / 2)
    def free(i, j):
        x, y = X0 + i * cell, Y0 + j * cell
        return not r.blocked(x, y)
    nx, ny = int((X1 - X0) / cell), int((Y1 - Y0) / cell)
    si, sj = int(round((a[0] - X0) / cell)), int(round((a[1] - Y0) / cell))
    ti, tj = int(round((c[0] - X0) / cell)), int(round((c[1] - Y0) / cell))
    # the end points sit on vias we placed ourselves: always allowed
    open_ = [(0, 0, si, sj, None)]; best = {(si, sj): 0.0}; prev = {}
    dirs = [(1, 0), (-1, 0), (0, 1), (0, -1), (1, 1), (1, -1), (-1, 1), (-1, -1)]
    while open_:
        f, g, i, j, d0 = heapq.heappop(open_)
        if (i, j) == (ti, tj):
            break
        if g > best.get((i, j), 1e9):
            continue
        for k, (di, dj) in enumerate(dirs):
            ni, nj = i + di, j + dj
            if not (0 <= ni < nx and 0 <= nj < ny):
                continue
            if (ni, nj) != (ti, tj) and not free(ni, nj):
                continue
            step = math.hypot(di, dj) + (0.4 if (d0 is not None and d0 != k) else 0.0)
            ng = g + step
            if ng < best.get((ni, nj), 1e9):
                best[(ni, nj)] = ng; prev[(ni, nj)] = (i, j)
                h = max(abs(ni - ti), abs(nj - tj)) + 0.41 * min(abs(ni - ti), abs(nj - tj))
                heapq.heappush(open_, (ng + h, ng, ni, nj, k))
    if (ti, tj) not in prev and (si, sj) != (ti, tj):
        return None
    pts = [(ti, tj)]
    while pts[-1] != (si, sj):
        pts.append(prev[pts[-1]])
    pts = [(X0 + i * cell, Y0 + j * cell) for i, j in reversed(pts)]
    pts[0], pts[-1] = a, c
    out = [pts[0]]; k = 0
    while k < len(pts) - 1:                      # greedy line-of-sight simplification
        m = len(pts) - 1
        while m > k + 1 and not r.seg_free(pts[k], pts[m]):
            m -= 1
        out.append(pts[m]); k = m
    return out

def add_track(b, net, layer, a, c, width):
    t = pcbnew.PCB_TRACK(b)
    t.SetStart(V(*a)); t.SetEnd(V(*c)); t.SetWidth(MM(width)); t.SetLayer(layer); t.SetNet(b.FindNet(net)); b.Add(t)

def add_via(b, net, at, dia=0.4, drill=0.2):
    v = pcbnew.PCB_VIA(b)
    v.SetPosition(V(*at)); v.SetDrill(MM(drill))
    try:
        v.SetWidth(MM(dia))
    except TypeError:
        v.SetWidth(pcbnew.F_Cu, MM(dia))
    v.SetLayerPair(pcbnew.F_Cu, pcbnew.B_Cu); v.SetNet(b.FindNet(net)); b.Add(v)

def pad_xy(b, ref, num):
    f = next(f for f in b.GetFootprints() if f.GetReference() == ref)
    return next(P(p.GetPosition()) for p in f.Pads() if p.GetNumber() == str(num))

def backup(pcb, tag='manual'):
    d = os.path.join(os.path.dirname(pcb), 'tools', 'backups'); os.makedirs(d, exist_ok=True)
    shutil.copy(pcb, os.path.join(d, 'board_%s_%s.kicad_pcb' % (time.strftime('%H%M%S'), tag)))

def save(b, pcb):
    b.BuildConnectivity(); pcbnew.ZONE_FILLER(b).Fill(b.Zones()); pcbnew.SaveBoard(pcb, b)

def link(b, net, a_pt, b_pt, layers=(pcbnew.In3_Cu, pcbnew.In2_Cu), label='', width=0.3, a_zone=None, b_zone=None, stub_w=0.15):
    """via near a_pt (with a stub from it) + via near b_pt (with a stub) + an inner-layer path between them"""
    sa = find_via_spot(b, net, a_pt, stub_from=a_pt, zone_rect=a_zone, max_r=6.0, track_w=stub_w)
    sb = find_via_spot(b, net, b_pt, stub_from=b_pt, zone_rect=b_zone, max_r=6.0, track_w=stub_w)
    if not (sa and sb):
        print('FAILED vias for', label, sa, sb); return False
    for lay in layers:
        path = route_path(b, net, lay, sa, sb, width)
        if path:
            break
    else:
        print('FAILED path for', label); return False
    for pt, sp in ((a_pt, sa), (b_pt, sb)):
        if math.dist(pt, sp) > 0.05:
            add_track(b, net, pcbnew.F_Cu, pt, sp, stub_w)
    add_via(b, net, sa); add_via(b, net, sb)
    for p, q in zip(path, path[1:]):
        add_track(b, net, lay, p, q, width)
    print('%-28s %5.1f mm on %s, %d segments' % (label, sum(math.dist(p, q) for p, q in zip(path, path[1:])), b.GetLayerName(lay), len(path) - 1))
    return True
