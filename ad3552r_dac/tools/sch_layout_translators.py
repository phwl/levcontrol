#!/usr/bin/env python3
"""Layout of the 'E1 translators' sheet: Red Pitaya E1/E2 headers, four 74AVC4T774 level translators (3.3 V <-> 1.8 V),
33 ohm series resistors, pull-ups / pull-downs and the translator decoupling."""
import sys
sys.path.insert(0, 'tools')
from schgen import Sheet

sh = Sheet('dac_translators.kicad_sch', paper='A3', title='AD3552R DAC mezzanine: Red Pitaya interface and level translators',
           comment=('E1 3.3 V (VCCA) <-> DAC 1.8 V (VCCB = VLOGIC); 33 R series at the DAC side', 'LQG Controller, CEL'))

# ---------------------------------------------------------------- headers
x, y = 48.26, 76.2
sh.box(15.24, 38.1, 88.9, 116.84, 'Red Pitaya E1 (3.3 V I/O, FPGA side)')
sh.place('J1', x, y, fields={'Reference': (x + 1.27, y + 19.05, None), 'Value': (x + 1.27, y + 20.955, None)})
sh.text('E1 pins 1-2 supply +3V3 (translator VCCA)', 19.05, 109.22, size=1.27, italic=True)
x, y = 48.26, 152.4
sh.box(15.24, 124.46, 88.9, 182.88, 'Red Pitaya E2 (ground and support only)')
sh.place('J12', x, y, fields={'Reference': (x + 1.27, y + 19.05, None), 'Value': (x + 1.27, y + 20.955, None)})

# ---------------------------------------------------------------- translators
def xlat(ref, x, y, title, dir_mode):
    sh.box(x - 38.1, y - 33.02, x + 30.48, y + 19.05, title)
    sh.place(ref, x, y, fields={'Reference': (x + 6.35, y - 19.05, 'left'), 'Value': (x + 6.35, y - 17.145, 'left')})
    sh.wire('%s.16' % ref, (x - 1.27, y - 20.32), (x - 6.35, y - 20.32)); sh.label('+3V3', (x - 6.35, y - 20.32), 90)
    sh.wire('%s.15' % ref, (x + 1.27, y - 22.86), (x + 3.81, y - 22.86)); sh.label('VLOGIC', (x + 3.81, y - 22.86), 90)
    d = {k: sh.pin('%s.%s' % (ref, k)) for k in ('1', '2', '7', '8')}     # DIR1, DIR2, DIR3, DIR4 (top to bottom)
    if dir_mode in ('DIR_A', 'DIR_B', '+3V3'):        # all four direction pins together
        for k in d:
            sh.wire(d[k], (x - 20.32, d[k][1]))
        sh.wire((x - 20.32, d['1'][1]), (x - 20.32, d['8'][1]))
        if dir_mode == '+3V3':
            sh.label('+3V3', (x - 20.32, d['1'][1]), 90)
        else:
            sh.wire((x - 20.32, d['1'][1]), (x - 27.94, d['1'][1])); sh.label(dir_mode, (x - 27.94, d['1'][1]), 180)
    else:                                              # U11: DIR1/DIR4 high (A->B), DIR2/DIR3 low (B->A, the ALERTs)
        sh.wire(d['2'], (x - 17.78, d['2'][1]), (x - 17.78, d['7'][1]), d['7'])
        sh.label('GND', (x - 17.78, d['2'][1]), 180)
        sh.wire(d['1'], (x - 33.02, d['1'][1]), (x - 33.02, d['8'][1]), d['8'])
        sh.label('+3V3', (x - 33.02, d['1'][1]), 90)

X = 160.02
xlat('U10', X, 48.26, 'U10: SCLK, CS_A/B_N, LDAC_N (A->B)', '+3V3')
xlat('U8', X, 101.6, 'U8: quad-SPI lane A (DIR_A)', 'DIR_A')
xlat('U9', X, 154.94, 'U9: quad-SPI lane B (DIR_B)', 'DIR_B')
xlat('U11', X, 208.28, 'U11: RESET_N in, ALERT_x_N out', 'mixed')
sh.text('~OE (XLAT_OE_N) is driven by the FPGA and pulled up by R16: outputs stay off until the bitstream runs', 121.92, 231.14, size=1.27, italic=True)

# ---------------------------------------------------------------- series resistors
X = 233.68
sh.box(X - 22.86, 38.1, X + 25.4, 116.84, '33 R series (DAC side)')
for i, r in enumerate(['R11', 'R12', 'R13', 'R14', 'R15', 'R3', 'R4', 'R5', 'R6', 'R7', 'R8', 'R9', 'R10']):
    sh.place(r, X, 48.26 + i * 5.08, rot=90, fields={'Reference': (X, 48.26 + i * 5.08 - 1.905, None), 'Value': None})
sh.text('all 33 R, 0402', X - 20.32, 113.03, size=1.27, italic=True)

# ---------------------------------------------------------------- pull resistors
def pull(r, x, y):
    n1 = sh.pin_net[(r, '1')]; n2 = sh.pin_net[(r, '2')]
    sh.place(r, x, y)
    if n2 in ('GND',):                     # pull-down: the signal on top
        sh.tag_off(r + '.1', dv=-2.54, dh=5.08)
    else:                                  # pull-up: the rail on top, the signal below
        sh.tag_off(r + '.2', dv=2.54, dh=5.08)

Y = 147.32
sh.box(210.82, 124.46, 406.4, 175.26, 'Pull-ups and pull-downs: defined levels while the FPGA is not configured')
for i, r in enumerate(['R16', 'R17', 'R18', 'R19', 'R22', 'R23', 'R20', 'R21']):
    pull(r, 220.98 + i * 22.86, Y)
sh.text('10 k: OE high (translators off), CS/LDAC high, ALERT pulled up, SCLK low, RESET_N low (DACs held in reset)', 215.9, 170.18, size=1.27, italic=True)
Y = 201.93
sh.box(210.82, 182.88, 406.4, 220.98, '100 k pull-downs on the DAC data lines')
for i, r in enumerate(['R24', 'R25', 'R26', 'R27', 'R28', 'R29', 'R30', 'R31']):
    pull(r, 220.98 + i * 22.86, Y)

# ---------------------------------------------------------------- decoupling, test point
Y = 73.66
sh.box(266.7, 38.1, 406.4, 116.84, 'Translator decoupling (100 nF at each VCCA and VCCB pin)')
for i, c in enumerate(['C37', 'C38', 'C39', 'C40', 'C41', 'C42', 'C43', 'C44']):
    sh.place(c, 276.86 + i * 15.24, Y)
sh.text('C37-C40 VCCA (+3V3), C41-C44 VCCB (VLOGIC)', 271.78, 99.06, size=1.27, italic=True)
sh.box(15.24, 190.5, 88.9, 228.6, 'Test point')
sh.place('TP1', 40.64, 208.28, fields={'Reference': (43.18, 203.2, 'left'), 'Value': (43.18, 205.105, 'left')})
sh.tag_off('TP1.1', dv=2.54, dh=5.08)
sh.text('SYNC_OUT (E1 pin 23): FPGA marker for scope triggering', 19.05, 223.52, size=1.27, italic=True)
sh.flag((83.82, 205.74), '+3V3')
print(sh.write())
