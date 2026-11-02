#!/usr/bin/env python3
"""Bring the board in line with the schematic for the DRC schematic-parity check. Run with /usr/bin/python3.

* custom symbol fields (Role / Spec / Notes, Datasheet) copied onto the footprints as hidden fields (from tools/netlist.xml)
* the schematic's 'unconnected-(...)' nets assigned to no-connect pads
* Net-(U12-NR/SS) renamed to the schematic's escaped form Net-(U12-NR{slash}SS)
* TP1 'exclude from BOM' matched to its symbol (not excluded)
* mounting holes H1-H4 (no symbols) marked 'not in schematic' (board only)
"""
import sys
import xml.etree.ElementTree as ET
sys.path.insert(0, 'tools')
import pcbnew
from manual_route import backup

PCB = 'ad3552r_dac.kicad_pcb'
SKIP_FIELDS = {'Footprint', 'Description', 'Reference', 'Value'}
root = ET.parse('tools/netlist.xml').getroot()
backup(PCB, 'pre_parity')
b = pcbnew.LoadBoard(PCB)
fps = {f.GetReference(): f for f in b.GetFootprints()}

nf = 0
for c in root.find('components'):
    f = fps.get(c.get('ref'))
    if f is None or c.find('fields') is None:
        continue
    for fld in c.find('fields'):
        name, val = fld.get('name'), (fld.text or '')
        if name in SKIP_FIELDS:
            continue
        if not f.HasField(name):
            if not val:
                continue
            f.SetField(name, val); f.GetField(name).SetVisible(False); nf += 1
        elif f.GetFieldText(name) != val:
            f.SetField(name, val); nf += 1
print('fields set/updated:', nf)

nn = 0
for n in root.find('nets'):
    name = n.get('name')
    if not name.startswith('unconnected-'):
        continue
    for node in n:
        f = fps.get(node.get('ref'))
        if f is None:
            continue
        for p in f.Pads():
            if p.GetNumber() == node.get('pin') and p.GetNetname() != name:
                ni = b.FindNet(name)
                if ni is None:
                    ni = pcbnew.NETINFO_ITEM(b, name); b.Add(ni)
                p.SetNet(ni); nn += 1
print('no-connect pads given their schematic net:', nn)

old = b.FindNet('Net-(U12-NR/SS)')
if old is not None:
    new = pcbnew.NETINFO_ITEM(b, 'Net-(U12-NR{slash}SS)'); b.Add(new)
    for p in (p for f in b.GetFootprints() for p in f.Pads() if p.GetNetname() == 'Net-(U12-NR/SS)'):
        p.SetNet(new)
    for t in b.GetTracks():
        if t.GetNetname() == 'Net-(U12-NR/SS)':
            t.SetNet(new)
    print('renamed Net-(U12-NR/SS)')

tp = fps['TP1']
tp.SetAttributes(tp.GetAttributes() & ~pcbnew.FP_EXCLUDE_FROM_BOM)
for r in ('H1', 'H2', 'H3', 'H4'):
    fps[r].SetAttributes(fps[r].GetAttributes() | pcbnew.FP_BOARD_ONLY)
print('TP1 in BOM; H1-H4 board-only')
b.BuildConnectivity(); pcbnew.SaveBoard(PCB, b)
