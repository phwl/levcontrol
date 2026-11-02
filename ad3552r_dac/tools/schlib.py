#!/usr/bin/env python3
"""Minimal KiCad 10 schematic reader: symbol instances, library pins and their sheet coordinates.

Sheet coordinates are in mm, y down. A library pin at (px, py) (y up) of an instance at (x, y) rotated by `a` degrees
(counter-clockwise on screen) and optionally mirrored lands at  inst + R(a) . M . (px, -py).
"""
import math
import sexpdata
from sexpdata import Symbol as S

def load(path):
    return sexpdata.loads(open(path).read())

def head(e):
    return e[0].value() if isinstance(e, list) and e and isinstance(e[0], S) else None

def kids(e, name):
    return [c for c in e if head(c) == name]

def kid(e, name):
    for c in e:
        if head(c) == name:
            return c
    return None

def prop(e, name):
    for c in kids(e, 'property'):
        if c[1] == name:
            return c[2]
    return None

def lib_pins(tree):
    """{lib_id: {pin number: (px, py, angle, length, name, etype)}} for unit 0/1, body style 1"""
    out = {}
    for ls in kid(tree, 'lib_symbols')[1:]:
        if head(ls) != 'symbol':
            continue
        name = ls[1]; pins = {}
        for sub in kids(ls, 'symbol'):
            parts = sub[1].rsplit('_', 2)
            if len(parts) == 3 and (parts[1] not in ('0', '1') or parts[2] not in ('0', '1')):
                continue
            for p in kids(sub, 'pin'):
                at = kid(p, 'at'); ln = kid(p, 'length')
                nm = kid(p, 'name'); num = kid(p, 'number')
                pins[str(num[1])] = (float(at[1]), float(at[2]), float(at[3]) if len(at) > 3 else 0.0,
                                     float(ln[1]) if ln else 0.0, str(nm[1]), p[1].value())
        out[name] = pins
    return out

def xform(inst_at, mirror, px, py):
    x, y = px, -py
    if mirror == 'x':
        y = -y
    elif mirror == 'y':
        x = -x
    a = math.radians(inst_at[2])
    c, s = round(math.cos(a)), round(math.sin(a))
    # screen rotation counter-clockwise by a (y down): (x, y) -> (x c + y s, -x s + y c)
    return (round(inst_at[0] + x * c + y * s, 4), round(inst_at[1] - x * s + y * c, 4))

def instances(tree):
    """[(ref, lib_id, (x, y, a), mirror, node)] for every placed symbol"""
    out = []
    for e in kids(tree, 'symbol'):
        lib = kid(e, 'lib_id')[1]
        at = kid(e, 'at'); m = kid(e, 'mirror')
        out.append((prop(e, 'Reference'), lib, (float(at[1]), float(at[2]), float(at[3]) if len(at) > 3 else 0.0),
                    m[1].value() if m else None, e))
    return out

def pin_points(tree):
    """{(ref, pin number): (x, y)} plus pin metadata"""
    lp = lib_pins(tree); pts = {}
    for ref, lib, at, m, _ in instances(tree):
        for num, (px, py, ang, ln, nm, et) in lp[lib].items():
            pts[(ref, num)] = xform(at, m, px, py)
    return pts
