#!/usr/bin/env python3
"""Export the schematic and the PCB into one bookmarked PDF: docs/ad3552r_dac_schematic_and_pcb.pdf. Run from the project dir.

Pages: every schematic sheet, PCB top (F.Cu + silk), PCB bottom (B.Cu + silk, mirrored), one page per copper layer,
assembly top / bottom (fab + silk, pad numbers). Uses kicad-cli for the plots and PyMuPDF (fitz) to merge them.
"""
import os, re, subprocess, tempfile
import fitz

PCB, SCH, OUT = 'ad3552r_dac.kicad_pcb', 'ad3552r_dac.kicad_sch', 'docs/ad3552r_dac_schematic_and_pcb.pdf'
BRD = ['--ibt', '--scale', '0']
PLOTS = [  # file, title, kicad-cli args
    ('01_sch', 'Schematic', ['sch', 'export', 'pdf', SCH]),
    ('02_top', 'PCB top (F.Cu + silk)', ['pcb', 'export', 'pdf', '--mode-single', *BRD, '-l', 'F.Cu,F.Silkscreen,Edge.Cuts', PCB]),
    ('03_bot', 'PCB bottom (B.Cu GND pour + silk, mirrored)', ['pcb', 'export', 'pdf', '--mode-single', *BRD, '--mirror', '-l', 'B.Cu,B.Silkscreen,Edge.Cuts', PCB]),
    ('04_layers', 'Copper layers', ['pcb', 'export', 'pdf', '--mode-multipage', *BRD, '-l', 'F.Cu,In1.Cu,In2.Cu,In3.Cu,In4.Cu,B.Cu', '--cl', 'Edge.Cuts', PCB]),
    ('05_asm_top', 'Assembly top', ['pcb', 'export', 'pdf', '--mode-single', *BRD, '--sp', '-l', 'F.Fab,F.Silkscreen,Edge.Cuts', PCB]),
    ('06_asm_bot', 'Assembly bottom (mirrored)', ['pcb', 'export', 'pdf', '--mode-single', *BRD, '--mirror', '--sp', '-l', 'B.Fab,B.Silkscreen,Edge.Cuts', PCB]),
]
LAYERS = ['F.Cu', 'In1.Cu (GND)', 'In2.Cu', 'In3.Cu', 'In4.Cu (power islands)', 'B.Cu (GND pour)']

tmp = tempfile.mkdtemp()
out, toc = fitz.open(), []
for name, title, args in PLOTS:
    f = os.path.join(tmp, name + '.pdf')
    subprocess.run(['kicad-cli', *args[:-1], '-o', f, args[-1]], check=True, capture_output=True)
    d = fitz.open(f); start = out.page_count + 1
    out.insert_pdf(d); toc.append([1, title, start])
    if name == '01_sch':   # sheet bookmarks only, not one per symbol
        toc += [[2, t, start + p - 1] for lvl, t, p, *_ in d.get_toc() if re.search(r'\(Page \d+\)$', t)]
    if name == '04_layers':
        toc += [[2, l, start + i] for i, l in enumerate(LAYERS)]
out.set_toc(toc)
out.set_metadata({'title': 'AD3552R 4-Channel DAC Mezzanine - Schematic and PCB'})
os.makedirs('docs', exist_ok=True)
out.save(OUT, garbage=3, deflate=True)
print('%s: %d pages' % (OUT, out.page_count))
for lvl, t, p in toc:
    print('  ' * lvl + '%s (p%d)' % (t, p))
