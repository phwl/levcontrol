import sys, math
sys.path.insert(0, 'tools')
import pcbnew
from manual_route import *
PCB = 'ad3552r_dac.kicad_pcb'
b = pcbnew.LoadBoard(PCB)
va, vm = (11.2, 10.75), (11.1, 11.4)
add_via(b, '/Power/ADJN', va)
add_via(b, '-5V', vm)
add_track(b, '-5V', pcbnew.F_Cu, (11.85, 11.25), vm, 0.15)
for lay in (pcbnew.In2_Cu, pcbnew.In3_Cu):
    p = route_path(b, '/Power/ADJN', lay, va, (12.12, 9.87), 0.3)
    if p: break
print('ADJN', lay, p)
for q, r in zip(p, p[1:]): add_track(b, '/Power/ADJN', lay, q, r, 0.3)
for lay in (pcbnew.In3_Cu, pcbnew.In2_Cu):
    p2 = route_path(b, '-5V', lay, vm, (10.89, 7.55), 0.3)
    if p2: break
print('-5V', lay, p2)
if p2:
    for q, r in zip(p2, p2[1:]): add_track(b, '-5V', lay, q, r, 0.3)
save(b, PCB)
