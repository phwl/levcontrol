import sys
sys.path.insert(0, 'tools')
import pcbnew
from manual_route import *
PCB = 'ad3552r_dac.kicad_pcb'
backup(PCB, 'pre_finish_dac1')
b = pcbnew.LoadBoard(PCB)
jobs = [('OUT0_VCM', pad_xy(b, 'C25', 1), (44.1, 11.4)),
        ('OUT1_RFB', pad_xy(b, 'U1', 17), pad_xy(b, 'U4', 1)),
        ('OUT1_IOUT', pad_xy(b, 'U4', 4), (47.3, 20.1)),
        ('U1_NCAP1', pad_xy(b, 'U1', 13), pad_xy(b, 'C10', 1))]
for net, a, c in jobs:
    link(b, net, a, c, label=net, width=0.2)
save(b, PCB)
