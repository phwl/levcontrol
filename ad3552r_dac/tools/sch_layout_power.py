#!/usr/bin/env python3
"""Layout of the 'Power' sheet: 12 V input, AVDD LDO, +/-5 V charge pump, +2.5 V buck, +1.8 V LDO and the DVDD/VLOGIC beads."""
import sys
sys.path.insert(0, 'tools')
from schgen import Sheet

sh = Sheet('dac_power.kicad_sch', paper='A3', title='AD3552R DAC mezzanine: power supplies',
           comment=('+12 V in -> AVDD 5.02 V, +/-5 V, +2.5 V, +1.8 V (DVDD, VLOGIC)', 'LQG Controller, CEL'))

def above(x, y_top):
    """IC reference and value stacked above the body (body top edge at y_top)"""
    return {'Reference': (x, y_top - 3.81, None), 'Value': (x, y_top - 1.905, None)}

# ---------------------------------------------------------------- 12 V input and protection
Y = 50.8
sh.box(17.78, 27.94, 129.54, 72.39, '+12 V input and protection')
sh.place('J2', 25.4, Y + 2.54, fields={'Reference': (22.86, Y - 5.08, None), 'Value': (22.86, Y - 3.175, None)})
sh.place('F1', 45.72, Y, rot=90)
sh.place('D9', 60.96, Y, rot=180)
sh.place('D10', 74.93, Y + 3.81, rot=270)
sh.place('C57', 87.63, Y + 3.81)
sh.place('C58', 100.33, Y + 3.81)
sh.wire('J2.1', 'F1.1'); sh.wire('F1.2', 'D9.2')
sh.wire('D9.1', (118.11, Y))
sh.label('+12V', (118.11, Y), 90); sh.flag((109.22, Y))
sh.wire('J2.2', (35.56, Y + 5.08)); sh.label('GND', (35.56, Y + 5.08), 270)
sh.text('0.5 A polyfuse, Schottky reverse-polarity diode, 15 V TVS, 47 uF bulk', 22.86, Y + 13.97, size=1.27, italic=True)

# ---------------------------------------------------------------- AVDD LDO
x, y = 182.88, 50.8
sh.box(137.16, 27.94, 285.75, 76.2, 'AVDD 5.02 V: low-noise LDO (TPS7A4901)')
sh.place('U12', x, y, fields=above(x, y - 5.08))
sh.place('C59', x - 35.56, y + 1.27)
sh.wire('U12.8', (x - 35.56, y - 2.54)); sh.label('+12V', (x - 35.56, y - 2.54), 90)
sh.wire('U12.5', (x - 22.86, y), (x - 22.86, y - 2.54))                 # EN tied to IN
sh.place('C61', x - 20.32, y + 6.35, fields='left')
sh.wire('U12.6', (x - 20.32, y + 2.54))                                  # NR/SS soft-start cap
sh.wire('U12.9', (x - 1.27, y + 10.16), (x - 3.81, y + 10.16))
sh.wire('U12.4', (x - 3.81, y + 10.16)); sh.label('GND', (x - 3.81, y + 10.16), 270)
sh.place('R60', x + 25.4, y + 1.27)
sh.place('R61', x + 25.4, y + 8.89)
sh.place('C62', x + 35.56, y + 1.27)
sh.place('C60', x + 48.26, y + 1.27)
sh.wire('U12.1', (x + 60.96, y - 2.54)); sh.label('AVDD', (x + 60.96, y - 2.54), 90)
sh.wire('U12.2', (x + 20.32, y), (x + 20.32, y + 5.08), 'R60.2')
sh.wire('C62.2', (x + 35.56, y + 5.08), (x + 25.4, y + 5.08))
sh.text('AVDD = V_FB (1 + R60/R61); C62 feed-forward; C61 soft start / noise filter', x - 38.1, y + 20.32, size=1.27, italic=True)

# ---------------------------------------------------------------- +/-5 V charge pump
x, y = 68.58, 121.92
sh.box(17.78, 86.36, 285.75, 154.94, '+/-5 V: inverting charge pump with positive and negative LDOs (LTC3260)')
sh.place('U13', x, y, fields={'Reference': (x - 15.24, y + 17.78, None), 'Value': (x - 15.24, y + 19.685, None)})
sh.place('C64', x, y - 20.32, rot=90)
sh.wire('U13.10', (x - 1.27, y - 15.24), (x - 3.81, y - 15.24), 'C64.1')
sh.wire('U13.7', (x + 1.27, y - 15.24), (x + 3.81, y - 15.24), 'C64.2')
sh.wire('U13.11', (x - 25.4, y - 7.62)); sh.label('+12V', (x - 25.4, y - 7.62), 90)
sh.wire('U13.1', (x - 30.48, y - 5.08)); sh.label('+2V5', (x - 30.48, y - 5.08), 90)
sh.wire('U13.13', (x - 20.32, y - 2.54), (x - 20.32, y - 5.08))
sh.wire('U13.14', (x - 20.32, y), (x - 20.32, y + 5.08)); sh.wire('U13.2', (x - 20.32, y + 2.54))
sh.label('GND', (x - 20.32, y + 5.08), 270)
sh.text('EN+/EN- from +2V5: the pump starts after the buck', x - 48.26, y + 24.13, size=1.27, italic=True)
for pin in ('6', '12', '15', '16', '5', '4', '3'):                     # right-hand pins: a stub, then the net tag
    p = sh.pin('U13.' + pin)
    xe = x + (33.02 if pin in ('12', '5') else 22.86)                  # rails a little further out than the labels
    sh.wire(p, (xe, p[1])); sh.label(sh.pin_net[('U13', pin)], (xe, p[1]), 0)
# output networks, each a small wired group tagged with the pin's net
X = x + 50.8
sh.place('C65', X, y - 12.7); sh.tag_off('C65.1', dh=-5.08)
sh.place('C63', X + 12.7, y - 12.7)
sh.place('C66', X + 25.4, y - 12.7)
sh.place('C67', X + 35.56, y - 12.7)
sh.place('C68', X + 48.26, y - 12.7); sh.tag_off('C68.1', dh=5.08)
sh.place('C69', X + 63.5, y - 12.7); sh.tag_off('C69.1', dh=5.08)
# positive LDO divider: +5V - R62 - ADJP - R63 - GND
sh.place('R62', X + 7.62, y + 7.62); sh.place('R63', X + 7.62, y + 17.78)
sh.wire('R62.2', 'R63.1'); sh.wire((X + 7.62, y + 12.7), (X + 15.24, y + 12.7)); sh.label('/Power/ADJP', (X + 15.24, y + 12.7), 0)
sh.text('+5 V = 1.2 V (1 + R62/R63)', X, y + 29.21, size=1.27, italic=True)
# negative LDO divider: -5V - R64 (|| C70) - ADJN - R65 - GND
sh.place('R64', X + 48.26, y + 7.62); sh.place('R65', X + 48.26, y + 17.78)
sh.place('C70', X + 58.42, y + 7.62)
sh.wire('R64.2', 'R65.1'); sh.wire('C70.2', (X + 58.42, y + 12.7), (X + 48.26, y + 12.7))
sh.wire('R64.1', (X + 48.26, y + 2.54), (X + 58.42, y + 2.54), 'C70.1')
sh.wire((X + 58.42, y + 12.7), (X + 66.04, y + 12.7)); sh.label('/Power/ADJN', (X + 66.04, y + 12.7), 0)
sh.label('-5V', (X + 53.34, y + 2.54), 90)
sh.text('-5 V = -1.2 V (1 + R64/R65); C70 feed-forward', X + 40.64, y + 29.21, size=1.27, italic=True)

# ---------------------------------------------------------------- +2.5 V buck
x, y = 66.04, 203.2
sh.box(17.78, 170.18, 158.75, 237.49, '+2.5 V: buck converter (AP63201), enabled once AVDD is up')
sh.place('U14', x, y, fields=above(x, y - 5.08))
sh.wire('U14.3', (x - 12.7, y - 2.54), (x - 12.7, y - 15.24), (x - 43.18, y - 15.24))
sh.label('+12V', (x - 43.18, y - 15.24), 90)
sh.place('C71', x - 35.56, y - 11.43, fields='left')
sh.place('R68', x - 25.4, y - 1.27, fields='left'); sh.place('R69', x - 25.4, y + 6.35, fields='left')
sh.label('AVDD', 'R68.1', 90)
sh.wire('U14.2', 'R68.2'); sh.label('/Power/BUCK_EN', (x - 22.86, y + 2.54), 0)
sh.place('L1', x + 30.48, y - 2.54, rot=90)
sh.wire('U14.5', 'L1.1'); sh.label('/Power/BUCK_SW', (x + 17.78, y - 2.54), 0)
sh.place('C74', x + 15.24, y - 6.35, rot=180, fields='left')
sh.tag_off('C74.2', '/Power/BUCK_BST', dv=-2.54, dh=5.08)
sh.place('R66', x + 43.18, y + 1.27); sh.place('R67', x + 43.18, y + 8.89)
sh.place('C75', x + 53.34, y + 1.27)
sh.place('C72', x + 63.5, y + 1.27); sh.place('C73', x + 73.66, y + 1.27)
sh.wire('L1.2', (x + 85.09, y - 2.54)); sh.label('+2V5', (x + 85.09, y - 2.54), 90); sh.flag((x + 58.42, y - 2.54))
sh.wire('U14.1', (x + 38.1, y + 2.54), (x + 38.1, y + 5.08), 'R66.2')
sh.wire('C75.2', (x + 53.34, y + 5.08), (x + 43.18, y + 5.08))
sh.label('/Power/BUCK_FB', (x + 22.86, y + 2.54), 0)
sh.text('EN = AVDD x R69/(R68+R69): starts after AVDD;  +2.5 V = 0.8 V (1 + R66/R67)', x - 45.72, y + 24.13, size=1.27, italic=True)

# ---------------------------------------------------------------- +1.8 V LDO and the DAC logic rails
x, y = 195.58, 203.2
sh.box(166.37, 170.18, 285.75, 237.49, '+1.8 V LDO (TLV75518P) -> DVDD and VLOGIC')
sh.place('U15', x, y, fields=above(x, y - 5.08))
sh.place('C76', x - 15.24, y + 1.27)
sh.wire('U15.1', (x - 22.86, y - 2.54)); sh.label('+2V5', (x - 22.86, y - 2.54), 90)
sh.wire('U15.3', (x - 10.16, y), (x - 10.16, y - 2.54))
sh.place('C77', x + 12.7, y + 1.27)
sh.place('FB1', x + 35.56, y - 2.54, rot=90)
sh.place('FB2', x + 35.56, y + 12.7, rot=90)
sh.wire('U15.5', 'FB1.1'); sh.label('+1V8', (x + 20.32, y - 2.54), 90)
sh.wire((x + 25.4, y - 2.54), (x + 25.4, y + 12.7), 'FB2.1')
sh.wire('FB1.2', (x + 53.34, y - 2.54)); sh.label('DVDD', (x + 53.34, y - 2.54), 90)
sh.wire('FB2.2', (x + 53.34, y + 12.7)); sh.label('VLOGIC', (x + 53.34, y + 12.7), 90)
sh.text('Separate beads keep the DAC digital current off the logic supply', x - 25.4, y + 24.13, size=1.27, italic=True)

# ---------------------------------------------------------------- notes
N = 297.18
sh.box(N - 2.54, 27.94, 406.4, 101.6, 'Rails and start-up')
for i, s in enumerate([
        '+12V   external, about 145 mA total (1.7 W)',
        'AVDD   5.02 V, DAC analog supply and ADR4525 input',
        '+5V    LTC3260 LDO+, amplifier positive rail',
        '-5V    LTC3260 LDO-, amplifier negative rail',
        '+2V5   AP63201 buck: feeds the 1.8 V LDO, enables U13',
        '+1V8   TLV75518P -> DVDD (FB1) and VLOGIC (FB2)',
        '+3V3   from the Red Pitaya E1 header (VCCA)',
        '',
        'Start-up order (the AD3552R wants AVDD first):',
        '  1. +12 V on: U12 brings up AVDD',
        '  2. AVDD above about 1.4 V enables U14: +2V5',
        '  3. +2V5 enables U15 (+1V8) and U13 (+/-5 V)',
        '  4. RESET_N held low by R21 until the FPGA releases it',
]):
    sh.text(s, N, 35.56 + i * 4.445, size=1.524)
print(sh.write())
