#!/usr/bin/env python3
"""Redraw a schematic sheet from a layout script, keeping every component (uuid, fields, footprint) and every net.

Layout scripts (tools/sch_layout_*.py) call:
    sh = Sheet('dac_power.kicad_sch', paper='A3', title=..., comment=...)
    sh.place('U12', x, y, rot=0, mirror=None)        # components keep their uuid; fields are re-placed
    sh.wire('U12.1', (x, y), 'C60.1')                 # orthogonal polyline; 'REF.PIN' = that pin's end point
    sh.label('AVDD', (x, y), 0)                       # explicit net tag (power symbol / global / local label by net)
    sh.text(...), sh.box(...)
    sh.write()
write() drops the old wires, labels, power symbols, junctions and no-connect flags, then
  * every pin not reached by a wire gets its net's tag: a power symbol, a global label or a local label (same kind as the
    net had before, so net names do not change); single-pin 'unconnected-' nets get a no-connect flag;
  * unnamed nets (Net-(...)) must be fully wired by the layout script (asserted);
  * junctions go wherever three or more wire ends / pins meet or a wire end lands inside another wire.
The netlist is checked against tools/work/sch/before.xml by tools/sch_check.py, not here.
"""
import math, uuid, re, os, sys, copy, collections
import xml.etree.ElementTree as ET
import sexpdata
from sexpdata import Symbol as S
sys.path.insert(0, os.path.dirname(__file__))
from schlib import kids, kid, head, prop, lib_pins, xform

NETLIST = os.path.join(os.path.dirname(__file__), 'work', 'sch', 'before.xml')
POWER_LIB = '/usr/share/kicad/symbols/power.kicad_sym'
POWER_NETS = {'GND', '+12V', '+5V', '-5V', '+2V5', '+1V8', '+3V3'}
# rails that were global labels; drawn as power symbols (power:VCC with the value set to the net name - same net name)
RAIL_NETS = {'AVDD', 'DVDD', 'VLOGIC'}
G = 1.27

def U():
    return str(uuid.uuid4())

def r4(v):
    return round(v + 0.0, 4)

def _font(size=1.27, bold=False, italic=False):
    f = [S('font'), [S('size'), size, size]]
    if bold:
        f.append([S('bold'), S('yes')])
    if italic:
        f.append([S('italic'), S('yes')])
    return f

def _effects(size=1.27, justify=None, hide=False, bold=False):
    e = [S('effects'), _font(size, bold)]
    if justify:
        e.append([S('justify')] + [S(j) for j in justify.split()])
    if hide:
        e.append([S('hide'), S('yes')])
    return e

def _dir_angle(dx, dy):
    """screen direction (y down) -> KiCad angle (0 right, 90 up, 180 left, 270 down)"""
    if abs(dx) > abs(dy):
        return 0 if dx > 0 else 180
    return 270 if dy > 0 else 90

class Sheet:
    def __init__(self, path, paper='A3', title='', comment=(), date='2026-11-02', rev='A', company='CEL'):
        self.path = path
        self.tree = sexpdata.loads(open(path).read())
        self.paper, self.title, self.comment, self.date, self.rev, self.company = paper, title, comment, date, rev, company
        self.lp = lib_pins(self.tree)
        self.comps = {}
        for e in kids(self.tree, 'symbol'):
            lib = kid(e, 'lib_id')[1]
            if lib.startswith('power:'):
                continue
            self.comps[prop(e, 'Reference')] = e
        # instance path for new power symbols: same as the components'
        any_c = next(iter(self.comps.values()))
        self.inst_path = kid(kid(kid(any_c, 'instances'), 'project'), 'path')[1]
        self.proj_name = kid(kid(any_c, 'instances'), 'project')[1]
        # nets
        r = ET.parse(NETLIST).getroot()
        self.pin_net = {}
        for n in r.find('nets'):
            for x in n:
                self.pin_net[(x.get('ref'), x.get('pin'))] = n.get('name')
        self.global_names = set()
        for f in ('dac_power', 'dac_digital', 'dac_analog', 'dac_output', 'dac_translators'):
            t = sexpdata.loads(open(os.path.join(os.path.dirname(os.path.abspath(path)), f + '.kicad_sch')).read())
            self.global_names |= {g[1] for g in kids(t, 'global_label')}
        self.placed = {}
        self.wires = []          # [(a, b)]
        self.tags = []           # (net, (x, y), angle)
        self.extra = []          # texts, rectangles (already s-expressions)
        self.flags = []          # PWR_FLAG positions (x, y)
        self.pwr_n = 0

    # ---------------------------------------------------------------- placement
    def place(self, ref, x, y, rot=0, mirror=None, fields='auto'):
        assert ref in self.comps, ref
        e = self.comps[ref]
        at = kid(e, 'at'); at[1], at[2] = r4(x), r4(y)
        if len(at) > 3:
            at[3] = rot
        else:
            at.append(rot)
        m = kid(e, 'mirror')
        if m is not None:
            e.remove(m)
        if mirror:
            e.insert(e.index(at) + 1, [S('mirror'), S(mirror)])
        self.placed[ref] = (x, y, rot, mirror)
        self._fields(ref, fields)

    def _fields(self, ref, mode):
        x, y, rot, mirror = self.placed[ref]
        e = self.comps[ref]
        lib = kid(e, 'lib_id')[1]
        pins = self.lp[lib]
        pts = [xform((x, y, rot), mirror, p[0], p[1]) for p in pins.values()]
        x0, x1 = min(p[0] for p in pts), max(p[0] for p in pts)
        y0, y1 = min(p[1] for p in pts), max(p[1] for p in pts)
        two = len(pins) <= 3 and (x1 - x0 < 0.1 or y1 - y0 < 0.1)
        fa = 90 if rot in (90, 270) else 0          # field angle is relative to the symbol: keep text horizontal
        if mode == 'auto':
            if two and x1 - x0 < 0.1:                # vertical 2-pin part: text to the right
                pos = {'Reference': (x + 2.54, y - 1.27, 'left'), 'Value': (x + 2.54, y + 1.27, 'left')}
            elif two:                                # horizontal 2-pin part: text above
                pos = {'Reference': (x, y - 4.445, None), 'Value': (x, y - 2.54, None)}
            else:                                    # IC: reference above the body, value below
                pos = {'Reference': (x, y0 - 2.54 if y0 < y - 2 else y - 7.62, None),
                       'Value': (x, y1 + 2.54 if y1 > y + 2 else y + 7.62, None)}
        elif mode == 'left':
            pos = {'Reference': (x - 2.54, y - 1.27, 'right'), 'Value': (x - 2.54, y + 1.27, 'right')}
        elif mode == 'below':
            pos = {'Reference': (x, y + 4.445, None), 'Value': (x, y + 6.35, None)}
        elif isinstance(mode, dict):
            pos = mode
        else:
            raise ValueError(mode)
        for c in kids(e, 'property'):
            name = c[1]
            a = kid(c, 'at')
            if name in pos and pos[name] is None:      # field hidden on purpose
                if kid(c, 'hide') is None:
                    c.insert(3, [S('hide'), S('yes')])
                continue
            if name in pos:
                px, py, just = pos[name]
                a[1], a[2] = r4(px), r4(py)
                if len(a) > 3:
                    a[3] = fa
                else:
                    a.append(fa)
                h = kid(c, 'hide')
                if h is not None:
                    c.remove(h)
                eff = kid(c, 'effects')
                j = kid(eff, 'justify')
                if j is not None:
                    eff.remove(j)
                if just:
                    # with the symbol rotated by 90/270 the text frame turns as well; KiCad mirrors justification
                    jj = just
                    if (rot + fa) % 360 == 180:      # KiCad shows a 180-degree field upright with mirrored justification
                        jj = {'left': 'right', 'right': 'left'}[just]
                    eff.append([S('justify'), S(jj)])
            elif name not in ('Reference', 'Value'):
                if kid(c, 'hide') is None:
                    c.insert(3, [S('hide'), S('yes')])
                a[1], a[2] = r4(x), r4(y)

    # ---------------------------------------------------------------- pins
    def pin(self, spec):
        ref, num = spec.split('.', 1)
        lib = kid(self.comps[ref], 'lib_id')[1]
        pins = self.lp[lib]
        if num not in pins:      # pin given by name
            num = next(k for k, v in pins.items() if v[4] == num)
        x, y, rot, mirror = self.placed[ref]
        px, py = pins[num][0], pins[num][1]
        return xform((x, y, rot), mirror, px, py)

    def pin_dir(self, ref, num):
        """outward direction (dx, dy) of a pin on screen"""
        lib = kid(self.comps[ref], 'lib_id')[1]
        px, py, ang, ln, nm, et = self.lp[lib][num]
        x, y, rot, mirror = self.placed[ref]
        ox, oy = -math.cos(math.radians(ang)), -math.sin(math.radians(ang))   # lib frame, y up
        a = xform((0, 0, rot), mirror, ox, oy)
        return (round(a[0]), round(a[1]))

    def P(self, v):
        return self.pin(v) if isinstance(v, str) else (r4(v[0]), r4(v[1]))

    # ---------------------------------------------------------------- drawing
    def wire(self, *pts):
        """orthogonal polyline; a diagonal step is turned into an L (horizontal first, or 'v' before the point = vertical first)"""
        out = []
        vfirst = False
        for p in pts:
            if p == 'v':
                vfirst = True; continue
            q = self.P(p)
            if out and q[0] != out[-1][0] and q[1] != out[-1][1]:
                a = out[-1]
                out.append((a[0], q[1]) if vfirst else (q[0], a[1]))
            vfirst = False
            out.append(q)
        for a, b in zip(out, out[1:]):
            if a != b:
                self.wires.append((a, b))
        return out[-1]

    def label(self, net, at, angle=0):
        self.tags.append((net, self.P(at), angle))

    def tag_off(self, pin, net=None, dv=-2.54, dh=-5.08):
        """net tag on a short dog-leg: from the pin `dv` vertically, then `dh` horizontally (keeps label text horizontal)"""
        p = self.P(pin)
        q = (p[0], r4(p[1] + dv)); r = (r4(p[0] + dh), q[1])
        self.wire(p, q, r)
        if net is None:
            ref, num = pin.split('.', 1)
            net = self.pin_net[(ref, num)]
        self.label(net, r, 0 if dh > 0 else 180)

    def flag(self, at, net=None):
        """PWR_FLAG at `at`; with `net`, also that net's power symbol there (GND below the flag, a rail above a flipped flag)"""
        p = self.P(at)
        if net is None:
            self.flags.append((p, 0))
        else:
            self.tags.append((net, p, 270 if net == 'GND' else 90))
            self.flags.append((p, 0 if net == 'GND' else 180))

    def text(self, s, x, y, size=1.524, bold=False, justify='left', italic=False):
        e = [S('text'), s, [S('exclude_from_sim'), S('no')], [S('at'), r4(x), r4(y), 0],
             [S('effects'), _font(size, bold, italic), [S('justify'), S(justify), S('top')] if justify else None], [S('uuid'), U()]]
        e[4] = [x for x in e[4] if x is not None]
        self.extra.append(e)

    def box(self, x0, y0, x1, y1, title=None, color=(0, 0, 0, 0)):
        self.extra.append([S('rectangle'), [S('start'), r4(x0), r4(y0)], [S('end'), r4(x1), r4(y1)],
                           [S('stroke'), [S('width'), 0.254], [S('type'), S('dash')], [S('color'), *color]],
                           [S('fill'), [S('type'), S('none')]], [S('uuid'), U()]])
        if title:
            self.text(title, x0 + 1.27, y0 + 1.27, size=2.0, bold=True)

    # ---------------------------------------------------------------- output helpers
    def _net_kind(self, net):
        if net.startswith('Net-('):
            return 'unnamed'
        if net.startswith('unconnected-'):
            return 'nc'
        if net in POWER_NETS or net in RAIL_NETS:
            return 'power'
        if net.startswith('/'):
            return 'local'
        assert net in self.global_names, net
        return 'global'

    def _power_lib(self):
        """copies of power-library symbols the sheet needs but whose cache entry is missing"""
        need = {('power:' + n) for n in POWER_NETS} | {'power:VCC', 'power:PWR_FLAG'}
        ls = kid(self.tree, 'lib_symbols')
        for s in [s for s in ls[1:] if head(s) == 'symbol' and s[1] in need]:
            ls.remove(s)                          # refresh cached power symbols from the library
        have = {s[1] for s in ls[1:]}
        lib = None
        for name in sorted(need - have):
            if lib is None:
                lib = sexpdata.loads(open(POWER_LIB).read())
            src = next(s for s in kids(lib, 'symbol') if s[1] == name.split(':')[1])
            s = copy.deepcopy(src); s[1] = name
            # sub-symbols keep their short names
            ls.append(s)

    def _power_symbol(self, net, at, body_angle):
        """power symbol whose pin is at `at` and whose body points along body_angle"""
        lib = 'power:VCC' if net in RAIL_NETS else 'power:' + net
        natural = 270 if net == 'GND' else 90
        rot = (body_angle - natural) % 360
        self.pwr_n += 1
        ref = '#PWR%s%03d' % (os.path.basename(self.path)[4:7].upper(), self.pwr_n)
        # value text sits beyond the body
        d = {0: (1, 0), 90: (0, -1), 180: (-1, 0), 270: (0, 1)}[body_angle]
        vx, vy = at[0] + d[0] * (5.08 if body_angle in (0, 180) else 3.81), at[1] + d[1] * (5.08 if net == 'GND' else 3.81)
        just = {0: 'left', 180: 'right'}.get(body_angle)
        fa = 90 if rot in (90, 270) else 0
        return [S('symbol'), [S('lib_id'), lib], [S('at'), r4(at[0]), r4(at[1]), rot], [S('unit'), 1], [S('body_style'), 1],
                [S('exclude_from_sim'), S('no')], [S('in_bom'), S('yes')], [S('on_board'), S('yes')], [S('dnp'), S('no')],
                [S('uuid'), U()],
                [S('property'), 'Reference', ref, [S('at'), r4(at[0]), r4(at[1]), fa], _effects(hide=True)],
                [S('property'), 'Value', net, [S('at'), r4(vx), r4(vy), fa],
                 _effects(1.27, ('left' if just == 'left' and rot in (0, 90) else 'right' if just else None)
                          if just else None)],
                [S('property'), 'Footprint', '', [S('at'), r4(at[0]), r4(at[1]), 0], _effects(hide=True)],
                [S('property'), 'Datasheet', '', [S('at'), r4(at[0]), r4(at[1]), 0], _effects(hide=True)],
                [S('pin'), '1', [S('uuid'), U()]],
                [S('instances'), [S('project'), self.proj_name, [S('path'), self.inst_path, [S('reference'), ref], [S('unit'), 1]]]]]

    def _flag_symbol(self, at, rot=0):
        self.pwr_n += 1
        ref = '#FLG%s%03d' % (os.path.basename(self.path)[4:7].upper(), self.pwr_n)
        dy = -1 if rot == 0 else 1
        return [S('symbol'), [S('lib_id'), 'power:PWR_FLAG'], [S('at'), r4(at[0]), r4(at[1]), rot], [S('unit'), 1], [S('body_style'), 1],
                [S('exclude_from_sim'), S('no')], [S('in_bom'), S('yes')], [S('on_board'), S('yes')], [S('dnp'), S('no')],
                [S('uuid'), U()],
                [S('property'), 'Reference', ref, [S('at'), r4(at[0]), r4(at[1] - 1.905), 0], _effects(hide=True)],
                [S('property'), 'Value', 'PWR_FLAG', [S('at'), r4(at[0]), r4(at[1] + dy * 3.81), 0], _effects(1.016)],
                [S('property'), 'Footprint', '', [S('at'), r4(at[0]), r4(at[1]), 0], _effects(hide=True)],
                [S('property'), 'Datasheet', '', [S('at'), r4(at[0]), r4(at[1]), 0], _effects(hide=True)],
                [S('pin'), '1', [S('uuid'), U()]],
                [S('instances'), [S('project'), self.proj_name, [S('path'), self.inst_path, [S('reference'), ref], [S('unit'), 1]]]]]

    def _tag(self, net, at, angle):
        """net tag at `at`, pointing along angle (the direction away from what it connects to)"""
        k = self._net_kind(net)
        if k == 'power':
            return [self._power_symbol(net, at, angle)]
        just = {0: 'left', 90: 'left', 180: 'right', 270: 'right'}[angle]
        if k == 'global':
            return [[S('global_label'), net, [S('shape'), S('bidirectional')], [S('at'), at[0], at[1], angle],
                     _effects(1.27, just), [S('uuid'), U()],
                     [S('property'), 'Intersheetrefs', '${INTERSHEET_REFS}', [S('at'), at[0], at[1], 0], _effects(1.27, hide=True)]]]
        if k == 'local':
            name = net.rsplit('/', 1)[1]
            return [[S('label'), name, [S('at'), at[0], at[1], angle], _effects(1.27, just + ' bottom'), [S('uuid'), U()]]]
        raise ValueError('cannot tag %s net %s' % (k, net))

    # ---------------------------------------------------------------- write
    def write(self, out=None):
        missing = set(self.comps) - set(self.placed)
        assert not missing, 'not placed: %s' % sorted(missing)
        # split wires at every pin / wire end lying inside them
        pts = set()
        pin_at = {}
        for ref in self.comps:
            lib = kid(self.comps[ref], 'lib_id')[1]
            for num in self.lp[lib]:
                p = self.pin('%s.%s' % (ref, num))
                pin_at[(ref, num)] = p
        for a, b in self.wires:
            pts |= {a, b}
        tag_pts = {t[1] for t in self.tags} | {f[0] for f in self.flags}
        cand = pts | set(pin_at.values()) | tag_pts
        segs = []
        for a, b in self.wires:
            inner = sorted((p for p in cand if p not in (a, b) and _on_seg(p, a, b)), key=lambda p: math.dist(a, p))
            chain = [a] + inner + [b]
            segs += [(p, q) for p, q in zip(chain, chain[1:])]
        segs = list({tuple(sorted(s)) for s in segs})
        ends = collections.Counter(p for s in segs for p in s)
        # pins reached by a wire
        wired = {k for k, p in pin_at.items() if ends[p]}
        # auto tags
        new = []
        nc_pts = []
        for (ref, num), p in sorted(pin_at.items()):
            if (ref, num) in wired:
                continue
            net = self.pin_net.get((ref, num))
            lib = kid(self.comps[ref], 'lib_id')[1]
            et = self.lp[lib][num][5]
            if net is None:
                continue
            k = self._net_kind(net)
            if k == 'nc':
                if et != 'no_connect':
                    nc_pts.append(p)
                continue
            if k == 'unnamed':
                raise AssertionError('unnamed net %s at %s.%s must be wired' % (net, ref, num))
            if p in {t[1] for t in self.tags}:
                continue
            d = self.pin_dir(ref, num)
            new += self._tag(net, p, _dir_angle(*d))
        for net, p, ang in self.tags:
            new += self._tag(net, p, ang)
        for p, rot in self.flags:
            new.append(self._flag_symbol(p, rot))
        # every named net with pins on this sheet must carry a tag somewhere on it (else its name would change)
        tagged = {n for n, _, _ in self.tags} | {self.pin_net.get(k) for k in pin_at if k not in wired}
        for k in wired:
            n = self.pin_net.get(k)
            if n and self._net_kind(n) in ('global', 'local') and n not in tagged:
                raise AssertionError('net %s is wired at %s.%s but carries no label on this sheet' % (n, *k))
        # junctions: >= 3 connections at a point
        deg = collections.Counter()
        for s in segs:
            for p in s:
                deg[p] += 1
        for p in pin_at.values():
            if deg[p]:
                deg[p] += 1
        junctions = [p for p, n in deg.items() if n >= 3]
        # rebuild the tree
        t = self.tree
        drop = {'wire', 'junction', 'no_connect', 'label', 'global_label', 'text', 'rectangle', 'bus', 'bus_entry', 'polyline'}
        body = []
        for e in t[1:]:
            h = head(e)
            if h in drop:
                continue
            if h == 'symbol' and kid(e, 'lib_id')[1].startswith('power:'):
                continue
            if h == 'paper':
                e = [S('paper'), self.paper]
            if h == 'title_block':
                continue
            body.append(e)
        self._power_lib()
        tb = [S('title_block'), [S('title'), self.title], [S('date'), self.date], [S('rev'), self.rev], [S('company'), self.company]]
        for i, c in enumerate(self.comment, 1):
            tb.append([S('comment'), i, c])
        i = next(k for k, e in enumerate(body) if head(e) == 'paper')
        body.insert(i + 1, tb)
        # place new items before the first symbol
        j = next(k for k, e in enumerate(body) if head(e) == 'symbol')
        items = [[S('junction'), [S('at'), p[0], p[1]], [S('diameter'), 0], [S('color'), 0, 0, 0, 0], [S('uuid'), U()]] for p in junctions]
        items += [[S('no_connect'), [S('at'), p[0], p[1]], [S('uuid'), U()]] for p in nc_pts]
        items += [[S('wire'), [S('pts'), [S('xy'), a[0], a[1]], [S('xy'), b[0], b[1]]],
                   [S('stroke'), [S('width'), 0], [S('type'), S('default')]], [S('uuid'), U()]] for a, b in segs]
        items += [x for x in new if head(x) != 'symbol'] + self.extra
        body[j:j] = items
        body += [x for x in new if head(x) == 'symbol']
        # sheet_instances / embedded_fonts must stay last
        tail = [e for e in body if head(e) in ('sheet_instances', 'embedded_fonts')]
        body = [e for e in body if head(e) not in ('sheet_instances', 'embedded_fonts')] + tail
        out_t = [t[0]] + body
        open(out or self.path, 'w').write(sexpdata.dumps(out_t))
        return len(segs), len(junctions), len(nc_pts), len(new)

def _on_seg(p, a, b):
    if a[0] == b[0] == p[0]:
        return min(a[1], b[1]) < p[1] < max(a[1], b[1])
    if a[1] == b[1] == p[1]:
        return min(a[0], b[0]) < p[0] < max(a[0], b[0])
    return False
