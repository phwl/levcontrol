#!/usr/bin/env python3
"""Re-apply every pad's net from the schematic netlist to the existing board, creating nets KiCad pruned. Run with /usr/bin/python3."""
import os, shutil, time
import xml.etree.ElementTree as ET
import pcbnew
PRJ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
PCB = os.path.join(PRJ, 'ad3552r_dac.kicad_pcb')
root = ET.parse(os.path.join(PRJ, 'tools', 'netlist.xml')).getroot()
pad_net = {}
names = []
for n in root.find('nets'):
    if n.get('name').startswith('unconnected-'):
        continue
    names.append(n.get('name'))
    for x in n:
        pad_net[(x.get('ref'), x.get('pin'))] = n.get('name')
os.makedirs(os.path.join(PRJ, 'tools', 'backups'), exist_ok=True)
shutil.copy(PCB, os.path.join(PRJ, 'tools', 'backups', 'board_%s.kicad_pcb' % time.strftime('%H%M%S')))
b = pcbnew.LoadBoard(PCB)
created = 0
for nm in names:
    if b.FindNet(nm) is None:
        b.Add(pcbnew.NETINFO_ITEM(b, nm)); created += 1
fixed = 0
for f in b.GetFootprints():
    for p in f.Pads():
        want = pad_net.get((f.GetReference(), p.GetNumber()))
        if want and p.GetNetname() != want:
            p.SetNet(b.FindNet(want)); fixed += 1
print('nets created:', created, ' pad nets fixed:', fixed)
b.BuildConnectivity(); pcbnew.ZONE_FILLER(b).Fill(b.Zones()); pcbnew.SaveBoard(PCB, b)
