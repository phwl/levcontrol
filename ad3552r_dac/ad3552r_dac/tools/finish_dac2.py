import sys
sys.path.insert(0, 'tools')
import pcbnew
from manual_route import *
PCB = 'ad3552r_dac.kicad_pcb'
backup(PCB, 'pre_finish_dac2')
b = pcbnew.LoadBoard(PCB)
link(b, 'OUT2_INV', pad_xy(b, 'R34', 2), (49.81, 32.05), label='OUT2_INV', width=0.2)
link(b, 'OUT2_NINV', pad_xy(b, 'R42', 1), pad_xy(b, 'U18', 3), label='OUT2_NINV', width=0.2)
save(b, PCB)
