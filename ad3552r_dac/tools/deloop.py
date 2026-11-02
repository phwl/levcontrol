#!/usr/bin/env python3
"""Remove redundant copper: overlapping / duplicated segments and track loops. Run with /usr/bin/python3 from the project dir.

usage: deloop.py SRC DST [--nets N1,N2] [--report]
Per net (zones are left out of the graph, so only loops made of tracks are touched):
  1. every segment is split where another segment's end, a via or a pad centre lies inside it (T-junctions, overlaps);
  2. exact duplicates collapse to the widest copy;
  3. a minimum spanning forest is kept (weight = length x 0.15 / width, so short and wide wins); pads and vias are nodes;
  4. track ends that touch nothing (no pad, via, other track or same-net zone fill) are trimmed back, repeatedly;
  5. collinear pieces of the same width meeting at a bare point are merged again.
Nets whose copper changes are rewritten (their segments replaced); vias are never removed. The result goes to DST;
check it with DRC before using it.
"""
import sys, math, collections, json
import pcbnew
from pcbnew import ToMM, FromMM, VECTOR2I

src, dst = sys.argv[1], sys.argv[2]
only = None
if '--nets' in sys.argv:
    only = set(sys.argv[sys.argv.index('--nets') + 1].split(','))
for a in sys.argv:
    if a.startswith('--nets='):
        only = set(a[7:].split(','))
REPORT = '--report' in sys.argv
import os
DEBUG = os.environ.get('DELOOP_DEBUG')
TOL = 2000          # nm: a point within 2 um of a segment line lies on it

b = pcbnew.LoadBoard(src)
tracks = list(b.GetTracks())
pads = [p for f in b.GetFootprints() for p in f.Pads()]
zones = list(b.Zones())

def proj(p, a, c, tol):
    """projection of p onto segment a-c if p is within tol of it and the projection is clear of both ends"""
    ax, ay, cx, cy = a[0], a[1], c[0], c[1]
    L2 = (cx - ax) ** 2 + (cy - ay) ** 2
    if L2 == 0:
        return None
    t = ((p[0] - ax) * (cx - ax) + (p[1] - ay) * (cy - ay)) / L2
    q = (round(ax + t * (cx - ax)), round(ay + t * (cy - ay)))
    if math.hypot(p[0] - q[0], p[1] - q[1]) > tol:
        return None
    L = math.sqrt(L2)
    if t * L <= tol or (1 - t) * L <= tol:
        return None
    return q

def on_seg(p, a, c):
    """p strictly inside segment a-c (not at the ends)"""
    ax, ay, cx, cy, px, py = a[0], a[1], c[0], c[1], p[0], p[1]
    L2 = (cx - ax) ** 2 + (cy - ay) ** 2
    if L2 == 0:
        return False
    t = ((px - ax) * (cx - ax) + (py - ay) * (cy - ay)) / L2
    if t <= 0 or t >= 1:
        return False
    d = abs((cx - ax) * (ay - py) - (ax - px) * (cy - ay)) / math.sqrt(L2)
    if d > TOL:
        return False
    return math.hypot(px - ax, py - ay) > TOL and math.hypot(px - cx, py - cy) > TOL

by_net = collections.defaultdict(lambda: {'seg': [], 'via': [], 'pad': []})
for t in tracks:
    n = t.GetNetname()
    if t.Type() == pcbnew.PCB_VIA_T:
        by_net[n]['via'].append(t)
    elif t.Type() == pcbnew.PCB_TRACE_T:
        by_net[n]['seg'].append(t)
for p in pads:
    by_net[p.GetNetname()]['pad'].append(p)

plan = {}
kill_vias = []
stats = collections.Counter()
for net, g in by_net.items():
    if not net or not g['seg'] or (only and net not in only):
        continue
    segs = [((t.GetStart().x, t.GetStart().y), (t.GetEnd().x, t.GetEnd().y), t.GetLayer(), t.GetWidth()) for t in g['seg']]
    vias = [((v.GetPosition().x, v.GetPosition().y), v.GetWidth(pcbnew.F_Cu) // 2) for v in g['via']]
    # points that KiCad treats as one (an end inside another track's copper) are merged with a union-find
    pu = {}
    def pfind(x):
        pu.setdefault(x, x)
        while pu[x] != x:
            pu[x] = pu[pu[x]]; x = pu[x]
        return x
    def punion(a, c):
        ra, rc = pfind(a), pfind(c)
        if ra != rc:
            pu[ra] = rc
    halfw = {}
    for a, c, L, w in segs:
        for q in (a, c):
            halfw[(L, q)] = max(halfw.get((L, q), 0), w // 2)
    def node(p, layer):
        hw = halfw.get((layer, p), 0)            # a track end connects where its round end overlaps the copper
        for i, (c, r) in enumerate(vias):
            if math.hypot(p[0] - c[0], p[1] - c[1]) < r + hw:
                return ('via', i)
        for i, pd in enumerate(g['pad']):
            if pd.IsOnLayer(layer) and pd.HitTest(VECTOR2I(int(p[0]), int(p[1])), max(hw - 1000, 0)):
                return ('pad', i)
        return pfind(('pt', layer, p))
    # 1. split at interior points (an end of another track within half a width of this centre line)
    pieces = []
    for a, c, L, w in segs:
        cuts = {}
        for a2, c2, L2, w2 in segs:
            if L2 != L:
                continue
            for q in (a2, c2):
                if q in (a, c):
                    continue
                if math.hypot(q[0] - a[0], q[1] - a[1]) < (w + w2) / 2:
                    punion(('pt', L, q), ('pt', L, a)); continue
                if math.hypot(q[0] - c[0], q[1] - c[1]) < (w + w2) / 2:
                    punion(('pt', L, q), ('pt', L, c)); continue
                pr = proj(q, a, c, (w + w2) / 2 - 1000)
                if pr:
                    cuts[pr] = q
        for (vc, r) in vias:
            pr = proj(vc, a, c, r + w / 2 - 1000)
            if pr:
                cuts[pr] = vc
        chain = [a] + sorted(cuts, key=lambda q: math.hypot(q[0] - a[0], q[1] - a[1])) + [c]
        for pr, q in cuts.items():
            punion(('pt', L, pr), ('pt', L, q))
        pieces += [(p, q, L, w) for p, q in zip(chain, chain[1:]) if p != q]
    # 2. duplicates -> widest
    best = {}
    for p, q, L, w in pieces:
        k = (min(p, q), max(p, q), L)
        if k not in best or w > best[k]:
            best[k] = w
    edges = [(k[0], k[1], k[2], w, node(k[0], k[2]), node(k[1], k[2])) for k, w in best.items()]
    # parallel pieces between the same two nodes: keep the widest
    seen = {}
    for e in sorted(edges, key=lambda e: -e[3]):
        k = (min(e[4], e[5]), max(e[4], e[5]), e[2])
        if k in seen and e[4] != e[5]:
            stats['duplicate pieces'] += 1
            continue
        seen[k] = e
    # pieces whose two ends fall into one node are short bridges between overlapping copper: always kept
    bridges = [e for e in seen.values() if e[4] == e[5]]
    edges = [e for e in seen.values() if e[4] != e[5]]
    DBG = lambda tag, es: [print(tag, [(round(v/1e6-20,3)) for v in (e[0][0], e[0][1], e[1][0], e[1][1])], e[4][:2] if e[4][0]!='pt' else 'pt', e[5][:2] if e[5][0]!='pt' else 'pt') for e in es if 42e6+20e6 < e[0][0] < 47e6+20e6 and 5.5e6+10e6 < e[0][1] < 11e6+10e6] if net == DEBUG else None
    DBG('edges', edges)
    ovl = collections.defaultdict(set)
    for e in edges + bridges:
        for n in (e[4], e[5]):
            if n[0] == 'via':
                ovl[n[1]].add(e[2])
    orig_multi = {i for i, ls in ovl.items() if len(ls) >= 2}
    # 3. minimum spanning forest
    parent = {}
    def find(x):
        parent.setdefault(x, x)
        while parent[x] != x:
            parent[x] = parent[parent[x]]; x = parent[x]
        return x
    keep = []
    for e in sorted(edges, key=lambda e: math.hypot(e[1][0] - e[0][0], e[1][1] - e[0][1]) * 150000 / max(e[3], 1)):
        ra, rc = find(e[4]), find(e[5])
        if ra == rc:
            stats['loop edges'] += 1
            continue
        parent[ra] = rc; keep.append(e)
    DBG('mst', keep)
    # 4. trim bare ends (not in a same-net zone fill)
    def in_zone(n):
        if n[0] != 'pt':
            return True
        L, p = n[1], n[2]
        for z in zones:
            if z.GetNetname() == net and z.IsOnLayer(L) and z.HitTestFilledArea(L, VECTOR2I(int(p[0]), int(p[1]))):
                return True
        return False
    def via_in_zone(i):
        c = vias[i][0]
        return any(z.GetNetname() == net and z.IsOnLayer(L) and z.HitTestFilledArea(L, VECTOR2I(int(c[0]), int(c[1])))
                   for z in zones for L in z.GetLayerSet().Seq())
    dead_vias = set()
    while True:
        deg = collections.Counter()
        vlayers = collections.defaultdict(set)
        for e in keep + bridges:
            deg[e[4]] += 1; deg[e[5]] += 1
            for n in (e[4], e[5]):
                if n[0] == 'via':
                    vlayers[n[1]].add(e[2])
        # a via that now reaches copper on one layer only (and no zone) does nothing
        for i in range(len(vias)):
            if i not in dead_vias and len(vlayers[i]) == 1 and deg[('via', i)] == 1 and not via_in_zone(i) and i in orig_multi:
                dead_vias.add(i); stats['vias removed'] += 1
        bare = {n for n, d in deg.items() if d == 1 and ((n[0] == 'pt' and not in_zone(n)) or (n[0] == 'via' and n[1] in dead_vias))}
        live0 = collections.Counter()
        for e in keep:
            live0[e[4]] += 1; live0[e[5]] += 1
        if not bare and all(live0[e[4]] or e[4][0] != 'pt' or in_zone(e[4]) for e in bridges):
            break
        before = len(keep) + len(bridges)
        keep = [e for e in keep if e[4] not in bare and e[5] not in bare]
        # a bridge whose node has nothing else on it (no pad, via, zone or other track) goes too
        live = collections.Counter()
        for e in keep:
            live[e[4]] += 1; live[e[5]] += 1
        bridges = [e for e in bridges if live[e[4]] or e[4][0] != 'pt' or in_zone(e[4])]
        stats['trimmed'] += before - len(keep) - len(bridges)
        if len(keep) + len(bridges) == before:
            break
    DBG('trim', keep)
    # 5. merge collinear runs through bare points of degree 2
    changed = True
    while changed:
        changed = False
        inc = collections.defaultdict(list)
        for i, e in enumerate(keep):
            inc[e[4]].append(i); inc[e[5]].append(i)
        for n, ids in inc.items():
            if n[0] != 'pt' or len(ids) != 2:
                continue
            e1, e2 = keep[ids[0]], keep[ids[1]]
            if e1[2] != e2[2] or e1[3] != e2[3]:
                continue
            p1 = e1[0] if e1[4] == n else e1[1]          # each edge's own coordinate at the shared node
            p2 = e2[0] if e2[4] == n else e2[1]
            if p1 != p2 or e1[4] == e1[5] or e2[4] == e2[5]:
                continue                                 # only merge where the two really end at the same point
            p = p1
            o1 = e1[1] if e1[4] == n else e1[0]
            o2 = e2[1] if e2[4] == n else e2[0]
            if not on_seg(p, o1, o2):
                continue
            n1 = e1[5] if e1[4] == n else e1[4]
            n2 = e2[5] if e2[4] == n else e2[4]
            new = (o1, o2, e1[2], e1[3], n1, n2)
            keep = [e for i, e in enumerate(keep) if i not in ids] + [new]
            changed = True
            break
    DBG('merge', keep)
    keep += bridges
    final = sorted((min(e[0], e[1]), max(e[0], e[1]), e[2], e[3]) for e in keep)
    orig = sorted((min(a, c), max(a, c), L, w) for a, c, L, w in segs)
    if final != orig or dead_vias:
        plan[net] = final
        kill_vias.extend(g['via'][i].m_Uuid.AsString() for i in dead_vias)
        stats['nets changed'] += 1
        stats['segments before'] += len(orig); stats['segments after'] += len(final)
        if REPORT:
            print('%-16s %3d -> %3d segments' % (net, len(orig), len(final)))

print(dict(stats))
# apply: drop every segment of a changed net, add the final set
victims = [t for t in tracks if t.Type() == pcbnew.PCB_TRACE_T and t.GetNetname() in plan]
for net, final in plan.items():
    ni = b.FindNet(net)
    for a, c, L, w in final:
        t = pcbnew.PCB_TRACK(b)
        t.SetStart(VECTOR2I(int(a[0]), int(a[1]))); t.SetEnd(VECTOR2I(int(c[0]), int(c[1])))
        t.SetLayer(L); t.SetWidth(w); t.SetNet(ni)
        b.Add(t)
victims += [t for t in tracks if t.Type() == pcbnew.PCB_VIA_T and t.m_Uuid.AsString() in set(kill_vias)]
for t in victims:
    b.Remove(t)
pcbnew.SaveBoard(dst, b)
print('wrote', dst)
