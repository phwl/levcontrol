#!/usr/bin/env python3
"""Swap footprints in place on the routed board. Run with /usr/bin/python3 from the project dir (backs the board up first).

usage: swap_fp.py LIB:NAME REF [REF ...]
The new footprint takes the old one's position, side, rotation, schematic link (path), fields and texts' visibility,
and each pad takes the net of the old pad with the same number. Pads that do not exist in the old footprint are reported.
"""
import sys, os
sys.path.insert(0, 'tools')
import pcbnew
from manual_route import backup

PCB = 'ad3552r_dac.kicad_pcb'
lib, name = sys.argv[1].split(':')
refs = sys.argv[2:]
libdir = None
for root in ('/usr/share/kicad/footprints',):
    if os.path.isdir(os.path.join(root, lib + '.pretty')):
        libdir = os.path.join(root, lib + '.pretty')
assert libdir, 'library %s not found' % lib
backup(PCB, 'pre_swap_' + '_'.join(refs))
b = pcbnew.LoadBoard(PCB)
old = {f.GetReference(): f for f in b.GetFootprints() if f.GetReference() in refs}
for ref in refs:
    o = old[ref]
    n = pcbnew.FootprintLoad(libdir, name)
    n.SetFPID(pcbnew.LIB_ID(lib, name))
    b.Add(n)
    if o.GetLayer() == pcbnew.B_Cu:
        n.Flip(n.GetPosition(), pcbnew.FLIP_DIRECTION_LEFT_RIGHT)
    n.SetPosition(o.GetPosition()); n.SetOrientation(o.GetOrientation())
    n.SetPath(o.GetPath()); n.SetAttributes(o.GetAttributes())
    n.SetReference(o.GetReference()); n.SetValue(o.GetValue())
    for fld in o.GetFields():
        nm = fld.GetName()
        if nm in ('Reference', 'Value', 'Footprint'):
            continue
        n.SetField(nm, fld.GetText()); n.GetField(nm).SetVisible(fld.IsVisible())
    n.Reference().SetPosition(o.Reference().GetPosition()); n.Reference().SetVisible(o.Reference().IsVisible())
    n.Reference().SetLayer(o.Reference().GetLayer())
    nets = {p.GetNumber(): p.GetNet() for p in o.Pads()}
    missing = []
    for p in n.Pads():
        if p.GetNumber() in nets:
            p.SetNet(nets[p.GetNumber()])
        elif p.GetNumber():
            missing.append(p.GetNumber())
    print('%s -> %s:%s; pads %d (old %d); pads with no old net: %s' % (ref, lib, name, len(n.Pads()), len(o.Pads()), missing))
for ref in refs:
    b.Remove(old[ref])
b.BuildConnectivity(); pcbnew.ZONE_FILLER(b).Fill(b.Zones()); pcbnew.SaveBoard(PCB, b)
