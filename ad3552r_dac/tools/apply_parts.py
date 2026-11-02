#!/usr/bin/env python3
"""Write the sourcing choices (manual: 'Bill of materials and sourcing') into the schematic as hidden fields
MPN, Manufacturer and LCSC on every symbol, and apply the value substitutions (R66 131k -> 130k).
Run from the project dir; backs the sheets up first. Afterwards: kicad-cli sch upgrade --force each sheet."""
import os, re, shutil, time, sys
sys.path.insert(0, 'tools')
import sexpdata
from sexpdata import Symbol as S
from schlib import load, kids, kid, head, prop

BY_REF = {  # ref pattern -> (MPN, Manufacturer, LCSC)
    r'U[12]': ('AD3552RBCPZ16', 'Analog Devices', 'C4748801'),
    r'U([3-6]|1[6-9])': ('ADA4807-1ARJZ-R7', 'Analog Devices', 'C2058411'),
    r'U7': ('ADR4525BRZ-R7', 'Analog Devices', 'C403914'),
    r'U([89]|1[01])': ('74AVC4T774PWJ', 'Nexperia', 'C546276'),
    r'U12': ('TPS7A4901DGNR', 'Texas Instruments', 'C16430'),
    r'U13': ('LTC3260EMSE#TRPBF', 'Analog Devices', 'C684387'),
    r'U14': ('AP63201WU-7', 'Diodes Incorporated', 'C2071044'),
    r'U15': ('TLV75518PDBVR', 'Texas Instruments', 'C2877863'),
    r'D[1-8]': ('BAV99,215', 'Nexperia', 'C2500'),
    r'D9': ('SS24', 'MDD', 'C50645'),
    r'D10': ('SMAJ15A/TR13', 'Brightking', 'C86819'),
    r'F1': ('SMD1206P050TF/24', 'Polytronics (PTTC)', 'C492011'),   # 0.5 A hold, 24 V; 1206L050YR is only 6 V
    r'FB[12]': ('BLM18PG221SN1D', 'Murata', 'C80165'),
    r'L1': ('SWPA5040S3R3NT', 'Sunlord', 'C305173'),
    r'J([4-9]|1[01])': ('132134', 'Amphenol', 'C3174425'),
    r'J2': ('PJ-102AH', 'CUI Devices', 'C3096093'),
    r'J(1|12)': ('ESW-113-33-T-D', 'Samtec', 'C7498573'),
}
BY_VALUE = {  # (value, footprint suffix) -> (MPN, Manufacturer, LCSC)
    ('100nF', '0402'): ('CL05B104KO5NNNC', 'Samsung', 'C1525'),
    ('1uF', '0402'): ('CL05A105KA5NQNC', 'Samsung', 'C52923'),
    ('10uF', '0805'): ('CGA0805X7R106K250MT', 'HRE', 'C6119932'),
    ('10uF 25V', '0805'): ('CGA0805X7R106K250MT', 'HRE', 'C6119932'),
    ('22uF', '0805'): ('CL21A226MAQNNNE', 'Samsung', 'C45783'),
    ('1uF 25V X7R', '0603'): ('CC0603KRX7R8BB105', 'YAGEO', 'C106858'),
    ('470nF', '0603'): ('CL10B474KA8NNNC', 'Samsung', 'C1623'),
    ('4.7uF', '0603'): ('CL10A475KO8NNNC', 'Samsung', 'C19666'),
    ('470nF NP0', '1206'): ('GRM31C5C1E474JE01L', 'Murata', 'C6049896'),
    ('10nF', '0402'): ('CL05B103KB5NNNC', 'Samsung', 'C15195'),
    ('100pF', '0402'): ('0402CG101J500NT', 'FH', 'C1546'),
    ('10pF', '0402'): ('0402CG100J500NT', 'FH', 'C1545'),
    ('8.2pF NP0', '0402'): ('0402CG8R2C500NT', 'FH', 'C1579'),
    ('1pF NP0', '0402'): ('0402CG1R0C500NT', 'FH', 'C1550'),
    ('47uF', '6.3x5.4'): ('FVH025ADA470M0654', 'FOSAN', 'C7469965'),
    ('33', '0402'): ('0402WGF330JTCE', 'UNI-ROYAL', 'C25105'),
    ('1k', '0402'): ('0402WGF1001TCE', 'UNI-ROYAL', 'C11702'),
    ('10k', '0402'): ('0402WGF1002TCE', 'UNI-ROYAL', 'C25744'),
    ('100k', '0402'): ('0402WGF1003TCE', 'UNI-ROYAL', 'C25741'),
    ('1M', '0402'): ('0402WGF1004TCE', 'UNI-ROYAL', 'C26083'),
    ('49.9', '0402'): ('0402WGF499JTCE', 'UNI-ROYAL', 'C25120'),
    ('2.49k 0.1%', '0603'): ('RT0603BRD072K49L', 'YAGEO', 'C861299'),       # gain resistors R32-R39, 0603 since 3 Nov 2026
    ('1.24k', '0402'): ('0402WGF1241TCE', 'UNI-ROYAL', 'C25864'),
    ('324k', '0402'): ('0402WGF3243TCE', 'UNI-ROYAL', 'C113480'),
    ('316k', '0402'): ('0402WGF3163TCE', 'UNI-ROYAL', 'C25777'),
    ('130k', '0402'): ('0402WGF1303TCE', 'UNI-ROYAL', 'C52929'),
    ('62k', '0402'): ('0402WGF6202TCE', 'UNI-ROYAL', 'C37825'),
    ('36k', '0402'): ('0402WGF3602TCE', 'UNI-ROYAL', 'C43676'),
}
NEW_VALUE = {'R66': '130k'}
NO_PART = {'TP1'}            # bare test pad

def setprop(node, name, value, at):
    for c in kids(node, 'property'):
        if c[1] == name:
            c[2] = value
            return
    i = max(k for k, c in enumerate(node) if head(c) == 'property') + 1
    node.insert(i, [S('property'), name, value, [S('at'), at[0], at[1], 0], [S('hide'), S('yes')],
                    [S('show_name'), S('no')], [S('do_not_autoplace'), S('no')],
                    [S('effects'), [S('font'), [S('size'), 1.27, 1.27]]]])

bk = 'tools/backups/sch_%s_pre_parts' % time.strftime('%H%M%S'); os.makedirs(bk)
done, missing = 0, []
for f in ('dac_power', 'dac_digital', 'dac_analog', 'dac_output', 'dac_translators'):
    path = f + '.kicad_sch'; shutil.copy(path, bk)
    t = load(path)
    for e in kids(t, 'symbol'):
        lib = kid(e, 'lib_id')[1]
        if lib.startswith('power:'):
            continue
        ref = prop(e, 'Reference')
        if ref in NO_PART:
            continue
        if ref in NEW_VALUE:
            setprop(e, 'Value', NEW_VALUE[ref], (0, 0))
        val = prop(e, 'Value'); fpn = prop(e, 'Footprint') or ''
        part = next((v for k, v in BY_REF.items() if re.fullmatch(k, ref)), None)
        if part is None:
            part = next((v for (vv, fs), v in BY_VALUE.items() if vv == val and fs in fpn), None)
        if part is None:
            missing.append((ref, val, fpn)); continue
        at = kid(e, 'at')
        for name, v in zip(('MPN', 'Manufacturer', 'LCSC'), part):
            setprop(e, name, v, (at[1], at[2]))
        done += 1
    open(path, 'w').write(sexpdata.dumps(t))
print('symbols given MPN/Manufacturer/LCSC: %d; backups in %s' % (done, bk))
print('no part found for:', missing)
