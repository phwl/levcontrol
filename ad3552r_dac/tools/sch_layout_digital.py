#!/usr/bin/env python3
"""Layout of the 'DAC digital' sheet: the two AD3552R DACs, the ADR4525 reference, QSPI straps and all DAC capacitors."""
import sys
sys.path.insert(0, 'tools')
from schgen import Sheet

sh = Sheet('dac_digital.kicad_sch', paper='A3', title='AD3552R DAC mezzanine: DACs and voltage reference',
           comment=('U1 -> OUT0/OUT1, U2 -> OUT2/OUT3; shared SCLK, LDAC_N, RESET_N',
                    'LQG Controller, CEL'))

def dac(ref, x, y, ch):
    sh.box(x - 50.8, y - 45.72, x + 50.8, y + 38.1, '%s: AD3552R, channels %d and %d' % (ref, ch, ch + 1))
    sh.place(ref, x, y, fields={'Reference': (x + 6.35, y - 27.94, 'left'), 'Value': (x + 6.35, y - 26.035, 'left')})
    # supplies fanned out so their symbols do not collide
    sh.wire('%s.1' % ref, (x - 2.54, y - 29.21), (x - 7.62, y - 29.21)); sh.label('DVDD', (x - 7.62, y - 29.21), 90)
    sh.wire('%s.2' % ref, (x, y - 34.29)); sh.label('VLOGIC', (x, y - 34.29), 90)
    sh.wire('%s.19' % ref, (x + 2.54, y - 29.21)); sh.label('AVDD', (x + 2.54, y - 29.21), 90)
    # AGND, DGND and the exposed pad to one ground
    sh.wire('%s.22' % ref, (x - 3.81, y + 26.67), (x + 1.27, y + 26.67), '%s.33' % ref)
    sh.wire('%s.30' % ref, (x - 1.27, y + 26.67)); sh.wire((x - 1.27, y + 26.67), (x - 1.27, y + 29.21))
    sh.label('GND', (x - 1.27, y + 29.21), 270)

dac('U1', 76.2, 88.9, 0)
dac('U2', 190.5, 88.9, 2)
sh.text('Range: RFB2 path, output span +/-5 V (register 0x19 = 0x33).  Unused RFB1/RFB4 pins left open.', 30.48, 132.08, size=1.27, italic=True)

# ---------------------------------------------------------------- reference
x, y = 320.04, 63.5
sh.box(x - 25.4, 38.1, 403.86, 86.36, 'Voltage reference: ADR4525, 2.500 V')
sh.place('U7', x, y, fields={'Reference': (x + 3.81, y - 10.16, 'left'), 'Value': (x + 3.81, y - 8.255, 'left')})
sh.place('C19', x - 15.24, y - 8.89)
sh.wire('U7.2', (x - 2.54, y - 12.7), (x - 15.24, y - 12.7)); sh.label('AVDD', (x - 2.54, y - 12.7), 90)
sh.place('C20', x + 17.78, y + 3.81)
sh.wire('U7.6', (x + 30.48, y)); sh.label('VREF_2V5', (x + 30.48, y), 0)
sh.text('External-reference mode: VREF_2V5 feeds both DACs; C20 4.7 uF at the output', x - 22.86, y + 15.24, size=1.27, italic=True)

# ---------------------------------------------------------------- QSPI straps
x, y = 317.5, 106.68
sh.box(x - 22.86, 93.98, 403.86, 132.08, 'Interface strap: QSPI pin high = quad SPI')
sh.place('R1', x, y); sh.tag_off('R1.2', dv=2.54, dh=5.08)
sh.place('R2', x + 33.02, y); sh.tag_off('R2.2', dv=2.54, dh=5.08)

# ---------------------------------------------------------------- DAC bias / reference capacitors (at the DAC pins on the PCB)
Y = 172.72
sh.box(25.4, 147.32, 271.78, 200.66, 'DAC internal-reference and output-stage capacitors (placed at the DAC pins)')
cols = [('C17', 'CVREF'), ('C9', 'NCAP0'), ('C13', 'PCAP0'), ('C10', 'NCAP1'), ('C14', 'PCAP1'),
        ('C18', 'CVREF'), ('C11', 'NCAP0'), ('C15', 'PCAP0'), ('C12', 'NCAP1'), ('C16', 'PCAP1')]
for i, (c, what) in enumerate(cols):
    x = 38.1 + i * 22.86 + (10.16 if i >= 5 else 0)
    if what.startswith('PCAP'):            # PCAP caps go to AVDD: AVDD on top, the PCAP net below
        sh.place(c, x, Y, rot=180)
        sh.tag_off(c + '.1', dv=2.54, dh=5.08)
    else:                                  # CVREF / NCAP caps go to GND: the net on top, GND below
        sh.place(c, x, Y)
        sh.tag_off(c + '.1', dv=-2.54, dh=5.08)
sh.text('U1', 38.1, 190.5, size=1.524, bold=True); sh.text('U2', 162.56, 190.5, size=1.524, bold=True)
sh.text('470 nF NP0 on NCAP/PCAP (output-stage compensation), 470 nF on CVREF (internal reference)', 33.02, 195.58, size=1.27, italic=True)

# ---------------------------------------------------------------- supply decoupling
Y = 228.6
sh.box(25.4, 208.28, 271.78, 248.92, 'DAC supply decoupling (one set per DAC at its pins)')
for i, c in enumerate(['C1', 'C3', 'C5', 'C7', 'C2', 'C4', 'C6', 'C8']):
    x = 38.1 + i * 25.4 + (20.32 if i >= 4 else 0)
    sh.place(c, x, Y)
sh.text('DVDD 1 uF, VLOGIC 1 uF, AVDD 10 uF + 100 nF', 33.02, 243.84, size=1.27, italic=True)
# power flags: DVDD and VLOGIC come through ferrite beads, GND only from connectors
sh.box(276.86, 208.28, 304.8, 248.92, 'Flags')
for i, n in enumerate(('DVDD', 'VLOGIC', 'GND')):
    sh.flag((283.21 + i * 8.89, 228.6 if n != 'GND' else 222.25), n)
print(sh.write())
