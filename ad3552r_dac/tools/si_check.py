#!/usr/bin/env python3
"""Signal-integrity figures for the analog output nets. Run with /usr/bin/python3.

usage: si_check.py BOARD [BOARD ...]      (e.g. a backup and the current board, to compare)
Per net group (sensitive summing nodes IOUT/INV, low-impedance RFB/NEG, and the outputs P/N):
* length and vias, length per layer
* return path: length whose reference plane (F.Cu/In2 -> In1 GND, In3/B.Cu -> In4) has no filled copper under it,
  and length over In4 copper that is not GND (a power island)
* coupling: length running within 0.5 mm (edge to edge) of a digital or switching net on the same layer
"""
import sys, math, re, collections
import pcbnew
from pcbnew import ToMM

GROUPS = {'summing nodes (IOUT, INV)': r'OUT\d_(IOUT|INV)$', 'feedback / outputs (RFB, NEG)': r'OUT\d_(RFB|NEG)$',
          'connector nets (P, N)': r'OUT\d_(P|N)$'}
AGGR = re.compile(r'(DQ_|SCLK|CS_|LDAC|RESET|ALERT|QSPI|SYNC|XLAT|DIR_|BUCK_SW|BUCK_BST|CP_PLUS|CP_MINUS)')
REF = {pcbnew.F_Cu: pcbnew.In1_Cu, pcbnew.In2_Cu: pcbnew.In1_Cu, pcbnew.In3_Cu: pcbnew.In4_Cu, pcbnew.B_Cu: pcbnew.In4_Cu}
STEP, NEAR = 0.2, 0.5

def segdist(px, py, ax, ay, bx, by):
    dx, dy = bx - ax, by - ay
    L = dx * dx + dy * dy
    t = 0 if L == 0 else max(0, min(1, ((px - ax) * dx + (py - ay) * dy) / L))
    return math.hypot(px - ax - t * dx, py - ay - t * dy)

def run(path):
    b = pcbnew.LoadBoard(path)
    zones = [z for z in b.Zones() if not z.GetIsRuleArea()]
    trk = [t for t in b.GetTracks() if t.Type() != pcbnew.PCB_VIA_T]
    aggr = collections.defaultdict(list)
    for t in trk:
        if AGGR.search(t.GetNetname()):
            aggr[t.GetLayer()].append((ToMM(t.GetStart().x), ToMM(t.GetStart().y), ToMM(t.GetEnd().x), ToMM(t.GetEnd().y), ToMM(t.GetWidth()) / 2, t.GetNetname()))
    def ref(layer, pt):
        hit = [z.GetNetname() for z in zones if z.IsOnLayer(layer) and z.HitTestFilledArea(layer, pt)]
        return 'GND' if 'GND' in hit else (hit[0] if hit else None)
    out = {}
    for g, pat in GROUPS.items():
        r = dict(length=0.0, vias=0, layers=collections.Counter(), void=0.0, island=0.0, coupled=0.0, aggressors=collections.Counter())
        for t in b.GetTracks():
            if not re.match(pat, t.GetNetname()):
                continue
            if t.Type() == pcbnew.PCB_VIA_T:
                r['vias'] += 1; continue
            L = ToMM(t.GetLength()); r['length'] += L; r['layers'][t.GetLayerName()] += L
            ax, ay, bx, by = ToMM(t.GetStart().x), ToMM(t.GetStart().y), ToMM(t.GetEnd().x), ToMM(t.GetEnd().y)
            n = max(1, int(L / STEP)); w = ToMM(t.GetWidth()) / 2
            for k in range(n):
                s = (k + 0.5) / n; x, y = ax + s * (bx - ax), ay + s * (by - ay)
                rn = ref(REF[t.GetLayer()], pcbnew.VECTOR2I(pcbnew.FromMM(x), pcbnew.FromMM(y)))
                if rn is None:
                    r['void'] += L / n
                elif rn != 'GND':
                    r['island'] += L / n
                for (sx, sy, ex, ey, aw, an) in aggr[t.GetLayer()]:
                    if segdist(x, y, sx, sy, ex, ey) - aw - w < NEAR:
                        r['coupled'] += L / n; r['aggressors'][an] += L / n; break
        out[g] = r
    return out

res = [(p, run(p)) for p in sys.argv[1:]]
for g in GROUPS:
    print('\n== %s' % g)
    for p, o in res:
        r = o[g]
        print('  %-45s %6.1f mm %3d vias | no ref plane %5.1f mm | over power island %5.1f mm | <0.5 mm from digital %5.1f mm %s'
              % (p.split('/')[-1][:45], r['length'], r['vias'], r['void'], r['island'], r['coupled'],
                 dict((k, round(v, 1)) for k, v in r['aggressors'].most_common(4))))
        print('  %45s layers: %s' % ('', {k: round(v, 1) for k, v in sorted(r['layers'].items())}))
