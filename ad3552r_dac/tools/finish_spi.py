import sys
sys.path.insert(0, 'tools')
import pcbnew
from manual_route import *
PCB = 'ad3552r_dac.kicad_pcb'
backup(PCB, 'pre_finish_spi')
b = pcbnew.LoadBoard(PCB)
p = lambda r, n: pad_xy(b, r, n)
jobs = [('SCLK', p('R11', 2), p('U2', 4)), ('SCLK', p('U2', 4), p('U1', 4)),
        ('B_DQ_B1', p('R8', 1), p('U9', 13)), ('DQ_A2', p('U1', 7), (28.81, 21.75)),
        ('DQ_A1', p('R4', 2), p('R25', 1)), ('DQ_A1', p('R25', 1), p('U1', 6)),
        ('DQ_B0', (28.0, 37.49), p('U2', 5)), ('CS_B_N', p('U2', 3), (29.08, 34.47)),
        ('CS_B_N', p('R13', 2), p('U2', 3)), ('CS_A_N', p('R17', 2), p('U1', 3))]
for net, a, c in jobs:
    link(b, net, a, c, label=net, width=0.15)
save(b, PCB)
