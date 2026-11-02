#!/usr/bin/env python3
"""Layout of the 'Electrode outputs' sheet: per channel a unity-gain inverter (U16-U19) making the push-pull pair,
50 ohm source resistors, BAV99 clamps, 1 M bleeders, and the eight SMA jacks."""
import sys
sys.path.insert(0, 'tools')
from schgen import Sheet

sh = Sheet('dac_output.kicad_sch', paper='A3', title='AD3552R DAC mezzanine: push-pull electrode outputs',
           comment=('OUTn+ = TIA output, OUTn- = inverted copy: up to 9.7 V p-p differential per channel', 'LQG Controller, CEL'))

def cell(n, x, y):
    R = lambda b: 'R%d' % (b + n)
    rp, rn, rin, rf, cf, rb = R(44), R(48), R(32), R(36), 'C%d' % (45 + n), R(40)
    amp = 'U%d' % (16 + n)
    dp, dn = 'D%d' % (1 + 2 * n), 'D%d' % (2 + 2 * n)
    bp, bn = 'R%d' % (52 + 2 * n), 'R%d' % (53 + 2 * n)
    yp = y - 27.94                      # row of the non-inverted output
    sh.box(x - 60.96, y - 45.72, x + 76.2, y + 38.1, 'Channel %d: OUT%d+ direct, OUT%d- through a unity-gain inverter' % (n, n, n))
    # input node A: from the TIA (Analog channels sheet)
    sh.wire((x - 50.8, yp), (x - 38.1, yp)); sh.label('OUT%d_RFB' % n, (x - 50.8, yp), 180)
    # + path: 49.9 R, clamp, bleeder, out
    sh.place(rp, x + 30.48, yp, rot=90)
    sh.wire((x - 38.1, yp), '%s.1' % rp)
    sh.place(dp, x + 40.64, yp - 5.08, fields={'Reference': (x + 40.64, yp - 12.065, None), 'Value': (x + 40.64, yp - 10.16, None)})
    sh.place(bp, x + 48.26, yp + 3.81)
    sh.wire('%s.2' % rp, (x + 58.42, yp)); sh.label('OUT%d_P' % n, (x + 58.42, yp), 0)
    # inverter
    sh.place(amp, x, y, fields={'Reference': (x + 5.08, y - 6.35, 'left'), 'Value': (x + 5.08, y - 4.445, 'left')})
    sh.place(rin, x - 25.4, y + 15.24, rot=90)
    sh.wire((x - 38.1, yp), (x - 38.1, y + 15.24), '%s.1' % rin)
    sh.wire('%s.2' % rin, (x - 12.7, y + 15.24))
    sh.wire('%s.4' % amp, (x - 12.7, y + 2.54), (x - 12.7, y + 30.48))
    sh.place(rf, x, y + 22.86, rot=90); sh.place(cf, x, y + 30.48, rot=90)
    sh.wire((x - 12.7, y + 22.86), '%s.1' % rf); sh.wire('%s.1' % cf, (x - 12.7, y + 30.48))
    sh.wire((x - 12.7, y + 30.48), (x - 20.32, y + 30.48)); sh.label('OUT%d_INV' % n, (x - 20.32, y + 30.48), 180)
    sh.wire('%s.2' % rf, (x + 15.24, y + 22.86)); sh.wire('%s.2' % cf, (x + 15.24, y + 30.48), (x + 15.24, y))
    sh.wire((x + 15.24, y + 30.48), (x + 22.86, y + 30.48)); sh.label('OUT%d_NEG' % n, (x + 22.86, y + 30.48), 0)
    # + input: bias resistor to GND (matches the source impedance seen by the - input)
    sh.place(rb, x - 17.78, y + 1.27, fields='left')
    sh.wire('%s.3' % amp, (x - 17.78, y - 2.54), (x - 25.4, y - 2.54)); sh.label('OUT%d_NINV' % n, (x - 25.4, y - 2.54), 180)
    sh.wire('%s.5' % amp, (x, y + 10.16), (x + 7.62, y + 10.16)); sh.label('+5V', (x + 7.62, y + 10.16), 90)
    # - path
    sh.place(rn, x + 30.48, y, rot=90)
    sh.wire('%s.1' % amp, '%s.1' % rn)
    sh.place(dn, x + 40.64, y - 5.08, fields={'Reference': (x + 40.64, y - 12.065, None), 'Value': (x + 40.64, y - 10.16, None)})
    sh.place(bn, x + 48.26, y + 3.81)
    sh.wire('%s.2' % rn, (x + 58.42, y)); sh.label('OUT%d_N' % n, (x + 58.42, y), 0)
    for d in (dp, dn):                   # clamp rails: tags straight up from the diode ends
        for pin, net in (('1', '-5V'), ('2', '+5V')):
            p = sh.pin('%s.%s' % (d, pin)); sh.wire(p, (p[0], p[1] - 2.54)); sh.label(net, (p[0], p[1] - 2.54), 90)
    sh.text('V(OUT-) = -V(OUT+): R%d = R%d = 2.49 k 0.1%%' % (32 + n, 36 + n), x - 55.88, y + 35.56, size=1.27, italic=True)

cell(0, 76.2, 76.2)
cell(1, 220.98, 76.2)
cell(2, 76.2, 167.64)
cell(3, 220.98, 167.64)

# ---------------------------------------------------------------- SMA jacks
X, Y = 335.28, 45.72
sh.box(X - 30.48, 30.48, 406.4, 213.36, 'SMA outputs (Amphenol 132134)')
for n in range(4):
    for k, (j, sfx) in enumerate((('J%d' % (4 + 2 * n), '+'), ('J%d' % (5 + 2 * n), '-'))):
        x, y = X + k * 38.1, Y + n * 43.18
        sh.place(j, x, y, fields={'Reference': (x + 3.81, y - 5.08, 'left'), 'Value': (x + 3.81, y - 3.175, 'left')})
sh.text('Top edge: OUT0, OUT1   Bottom edge: OUT2, OUT3', X - 27.94, 205.74, size=1.27, italic=True)

# ---------------------------------------------------------------- inverter supply decoupling
Y = 236.22
sh.box(15.24, 218.44, 287.02, 254.0, 'Inverter supply decoupling: one 100 nF pair at each amplifier')
for i, (cp, cn, amp) in enumerate([('C49', 'C53', 'U16'), ('C50', 'C54', 'U17'), ('C51', 'C55', 'U18'), ('C52', 'C56', 'U19')]):
    x = 33.02 + i * 63.5
    sh.place(cp, x, Y); sh.place(cn, x + 17.78, Y, rot=180)
    sh.text(amp, x + 5.08, Y + 11.43, size=1.27, italic=True)
print(sh.write())
