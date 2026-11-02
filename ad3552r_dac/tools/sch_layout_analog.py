#!/usr/bin/env python3
"""Layout of the 'Analog channels' sheet: four transimpedance amplifiers (U3-U6) on the DAC current outputs."""
import sys
sys.path.insert(0, 'tools')
from schgen import Sheet

sh = Sheet('dac_analog.kicad_sch', paper='A3', title='AD3552R DAC mezzanine: transimpedance amplifiers',
           comment=('IOUT -> voltage: RFB2 (3.228 k) is inside the AD3552R; C_F 8.2 pF NP0', 'LQG Controller, CEL'))
sh.text('The feedback resistor RFB2 (3.228 k) sits inside the AD3552R between IOUTx and RFBx: each amplifier output goes back', 25.4, 238.76, size=1.27, italic=True)
sh.text('to the DAC RFB pin. C_F (8.2 pF NP0) across it sets the bandwidth; VCM from the DAC biases the + input.', 25.4, 242.57, size=1.27, italic=True)

CH = [  # amp, C_F, C_VCM, channel, DAC pin text, cell centre
    ('U3', 'C21', 'C25', 0, 'U1 IOUT0 / RFB2_0', (105.41, 66.04)),
    ('U4', 'C22', 'C26', 1, 'U1 IOUT1 / RFB2_1', (285.75, 66.04)),
    ('U5', 'C23', 'C27', 2, 'U2 IOUT0 / RFB2_0', (105.41, 140.97)),
    ('U6', 'C24', 'C28', 3, 'U2 IOUT1 / RFB2_1', (285.75, 140.97)),
]
for amp, cf, cv, n, dac, (x, y) in CH:
    sh.box(x - 55.88, y - 26.67, x + 50.8, y + 30.48, 'Channel %d transimpedance amplifier (%s)' % (n, dac))
    sh.place(amp, x, y, fields={'Reference': (x + 5.08, y - 6.35, 'left'), 'Value': (x + 5.08, y - 4.445, 'left')})
    # + input: VCM from the DAC, decoupled to GND
    sh.place(cv, x - 22.86, y + 1.27)
    sh.wire('%s.3' % amp, (x - 33.02, y - 2.54))
    sh.label('OUT%d_VCM' % n, (x - 33.02, y - 2.54), 180)
    # - input: IOUT from the DAC; C_F from the - input to the output, drawn under the amplifier
    sh.place(cf, x, y + 17.78, rot=90)
    sh.wire('%s.4' % amp, (x - 12.7, y + 2.54), (x - 12.7, y + 17.78), '%s.1' % cf)
    sh.wire((x - 12.7, y + 17.78), (x - 33.02, y + 17.78))
    sh.label('OUT%d_IOUT' % n, (x - 33.02, y + 17.78), 180)
    # output: back to the DAC's RFB pin (closes the loop through the internal resistor) and on to the output stage
    sh.wire('%s.1' % amp, (x + 30.48, y))
    sh.label('OUT%d_RFB' % n, (x + 30.48, y), 0)
    sh.wire('%s.2' % cf, (x + 15.24, y + 17.78), (x + 15.24, y))
    # ~DISABLE tied high
    sh.wire('%s.5' % amp, (x, y + 10.16), (x + 7.62, y + 10.16))
    sh.label('+5V', (x + 7.62, y + 10.16), 90)
    sh.text('V_OUT = V_CM - I_OUT x RFB2', x + 17.78, y + 5.08, size=1.27, italic=True)

# supply decoupling, one pair per amplifier, placed at the amplifier's supply pins on the PCB
X0, Y = 66.04, 205.74
sh.box(X0 - 10.16, Y - 17.78, X0 + 180.34, Y + 20.32, 'Supply decoupling: one 100 nF pair at each amplifier')
for i, (cp, cn, amp) in enumerate([('C29', 'C33', 'U3'), ('C30', 'C34', 'U4'), ('C31', 'C35', 'U5'), ('C32', 'C36', 'U6')]):
    x = X0 + i * 45.72
    sh.place(cp, x, Y)                      # +5V on top, GND below
    sh.place(cn, x + 15.24, Y, rot=180)     # pin 1 = GND at the bottom, pin 2 = -5V on top
    sh.text(amp, x + 3.81, Y + 10.16, size=1.27, italic=True)
print(sh.write())
