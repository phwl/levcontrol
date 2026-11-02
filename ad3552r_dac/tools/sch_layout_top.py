#!/usr/bin/env python3
"""Top sheet: the five sub-sheets laid out as a signal-flow block diagram with notes."""
import sys, uuid
sys.path.insert(0, 'tools')
import sexpdata
from sexpdata import Symbol as S
from schlib import load, head, kid, kids

PATH = 'ad3552r_dac.kicad_sch'
t = load(PATH)
U = lambda: str(uuid.uuid4())

W, H = 58.42, 38.1
XS = [20.32, 116.84, 213.36, 309.88]
POS = {'E1 translators': (XS[0], 50.8), 'DAC digital': (XS[1], 50.8), 'Analog channels': (XS[2], 50.8),
       'Electrode outputs': (XS[3], 50.8), 'Power': (XS[1], 147.32)}
DESC = {
    'E1 translators': ['Red Pitaya E1/E2 headers', '4 x 74AVC4T774, 3.3 V <-> 1.8 V', '33 R series, pull-ups/downs'],
    'DAC digital': ['2 x AD3552R 16-bit current DAC', 'ADR4525 2.5 V reference', 'U1: ch 0, 1   U2: ch 2, 3'],
    'Analog channels': ['4 x ADA4807-1 TIA', 'feedback via the DAC RFB2', '+/-5 V per channel'],
    'Electrode outputs': ['4 x unity-gain inverter', '49.9 R, BAV99 clamps, 1 M', '8 x SMA (J4-J11), push-pull pairs'],
    'Power': ['+12 V in, polyfuse, TVS', 'AVDD LDO, +/-5 V pump, +2.5 V buck', '+1.8 V LDO -> DVDD, VLOGIC'],
}

def text(s, x, y, size=1.524, bold=False, italic=False):
    f = [S('font'), [S('size'), size, size]]
    if bold: f.append([S('bold'), S('yes')])
    if italic: f.append([S('italic'), S('yes')])
    return [S('text'), s, [S('exclude_from_sim'), S('no')], [S('at'), x, y, 0],
            [S('effects'), f, [S('justify'), S('left'), S('top')]], [S('uuid'), U()]]

def line(*pts, w=0.4, dash=False):
    return [S('polyline'), [S('pts')] + [[S('xy'), x, y] for x, y in pts],
            [S('stroke'), [S('width'), w], [S('type'), S('dash') if dash else S('solid')]], [S('fill'), [S('type'), S('none')]], [S('uuid'), U()]]

body = [e for e in t[1:] if head(e) not in ('text', 'polyline', 'rectangle', 'title_block')]
for e in body:
    if head(e) == 'paper':
        e[1] = 'A3'
    if head(e) != 'sheet':
        continue
    name = next(p[2] for p in kids(e, 'property') if p[1] == 'Sheetname')
    x, y = POS[name]
    at = kid(e, 'at'); at[1], at[2] = x, y
    sz = kid(e, 'size'); sz[1], sz[2] = W, H
    for p in kids(e, 'property'):
        a = kid(p, 'at')
        if p[1] == 'Sheetname':
            a[1], a[2] = x, y - 0.7112
        else:
            a[1], a[2] = x, y + H + 0.5842
extra = []
for name, (x, y) in POS.items():
    for i, s in enumerate(DESC[name]):
        extra.append(text(s, x + 2.54, y + 8.89 + i * 6.35, size=1.778))
# signal flow
yf = 50.8 + H / 2
extra += [line((XS[k] + W, yf), (XS[k + 1], yf)) for k in range(3)]
for k, lines in enumerate([['1.8 V quad SPI:', 'SCLK, CS_A/B_N, LDAC_N,', 'RESET_N, DQ_A0-3, DQ_B0-3,', 'ALERT_A/B_N'],
                           ['per channel:', 'IOUTn to the TIA,', 'RFBn back from it,', 'VCMn'],
                           ['OUTn_RFB', '(TIA outputs)']]):
    for i, s in enumerate(lines):
        extra.append(text(s, XS[k] + W + 1.27, yf + 2.54 + i * 2.54, size=1.27))
extra.append(text('from the Red Pitaya E1 header (FPGA)', XS[0], 50.8 - 6.35, size=1.27, italic=True))
# power distribution
cx = [x + W / 2 for x in XS]
yp = 147.32 + H / 2
extra += [line((cx[1], 147.32), (cx[1], 50.8 + H), dash=True),
          line((XS[1] + W, yp), (cx[3], yp), (cx[3], 50.8 + H), dash=True),
          line((cx[2], yp), (cx[2], 50.8 + H), dash=True),
          line((XS[1], yp), (cx[0], yp), (cx[0], 50.8 + H), dash=True)]
extra.append(text('AVDD, DVDD, VLOGIC (VREF from U7)', cx[1] + 1.27, 120.65, size=1.27))
extra.append(text('+/-5 V', cx[2] + 1.27, 120.65, size=1.27))
extra.append(text('+/-5 V', cx[3] + 1.27, 120.65, size=1.27))
extra.append(text('VLOGIC (+3V3 from E1)', cx[0] + 1.27, 120.65, size=1.27))
# notes
notes = [
    ('AD3552R 4-channel DAC mezzanine for the Red Pitaya STEMlab 125-14 4-Input', 2.54, True),
    ('Four bipolar outputs, each a push-pull pair (OUTn+, OUTn-), +/-5 V per side, 16-bit, up to 9.7 V p-p differential.', 1.524, False),
    ('Board: 95 x 60 mm, 6 layers (F.Cu / In1 GND / In2 / In3 / In4 power islands / B.Cu GND pour), mounts on E1 and E2.', 1.524, False),
    ('Sockets J1/J12 must be elevated (>= 16.13 mm, e.g. Samtec ESW-113-33-T-D) to clear the Zynq heatsink.', 1.524, False),
    ('Net names cross sheets through global labels; rails use power symbols.', 1.524, False),
]
y = 200.66
for s, sz, b in notes:
    extra.append(text(s, XS[0], y, size=sz, bold=b)); y += 6.35 if b else 4.445
tb = [S('title_block'), [S('title'), 'AD3552R 4-channel DAC mezzanine (LQG Controller)'], [S('date'), '2026-11-02'], [S('rev'), 'A'],
      [S('company'), 'CEL'], [S('comment'), 1, 'Top level: signal flow and power distribution'], [S('comment'), 2, 'LQG Controller, CEL']]
i = next(k for k, e in enumerate(body) if head(e) == 'paper')
body.insert(i + 1, tb)
j = next(k for k, e in enumerate(body) if head(e) == 'sheet')
body[j:j] = extra
open(PATH, 'w').write(sexpdata.dumps([t[0]] + body))
print('top sheet written')
