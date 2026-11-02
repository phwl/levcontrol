#!/usr/bin/env python3
"""Look up every distinct BOM part in the JLCPCB assembly parts library (public JLCPCB search API).
usage: python3 tools/jlc_check.py [--json out.json]
Each row: our refs, the search keyword, then the best JLCPCB hits (LCSC code, Basic/Extended, stock, package, part)."""
import json, sys, time, urllib.request

API = 'https://jlcpcb.com/api/overseas-pcb-order/v1/shoppingCart/smtGood/selectSmtComponentList'
PARTS = [  # refs, keyword, what we need (package / key spec)
    ('U1,U2', 'AD3552RBCPZ', 'LFCSP-32 5x5'),
    ('U7', 'ADR4525BRZ', 'SOIC-8'),
    ('U3-U6,U16-U19', 'ADA4807-1ARJZ', 'SOT-23-6'),
    ('U8-U11', '74AVC4T774PW', 'TSSOP-16'),
    ('U12', 'TPS7A4901DGNR', 'HVSSOP-8 (MSOP-8 PowerPAD)'),
    ('U13', 'LTC3260EMSE', 'MSOP-16 EP'),
    ('U14', 'AP63201WU-7', 'TSOT-23-6'),
    ('U15', 'TLV75518PDBVR', 'SOT-23-5'),
    ('D1-D8', 'BAV99', 'SOT-23'),
    ('D10', 'SMAJ15A', 'SMA'),
    ('D9', 'SS24', 'SMA, 40 V 2 A Schottky'),
    ('F1', 'SMD1206P050TF/24', '1206 PTC 0.5 A hold, >= 24 V'),
    ('FB1,FB2', 'BLM18PG221SN1D', '0603 ferrite bead'),
    ('L1', 'SWPA5040S3R3NT', '3.3 uH 5x5 mm (Sunlord)'),
    ('J4-J11', '132134', 'Amphenol SMA vertical THT'),
    ('J1,J12', 'ESW-113-33-T-D', '2x13 elevated socket'),
    ('J2', 'PJ-102AH', 'barrel jack (KiCad BarrelJack_Horizontal)'),
    ('R32-R39', 'RT0603BRD072K49L', '0603 2.49k 0.1%'),
    ('C9-C16', '1206 470nF C0G', '1206 470 nF NP0/C0G'),
    ('C21-C24', '0402 8.2pF C0G', '0402 8.2 pF NP0'),
    ('C45-C48', '0402 1pF C0G', '0402 1 pF NP0'),
    ('C57', '47uF 25V 6.3x5.4', 'electrolytic 6.3x5.4, >=16 V'),
    ('C59 etc', '0805 10uF 25V X7R', '0805 10 uF 25 V X7R'),
    ('C72,C73', '0805 22uF', '0805 22 uF'),
    ('C64', '0603 1uF 25V X7R', '0603 1 uF 25 V'),
    ('C17,C18', '0603 470nF', '0603 470 nF'),
    ('C20', '0603 4.7uF', '0603 4.7 uF'),
    ('R44-R51', '0402 49.9Ω 1%', '0402 49.9'),
    ('R60', '0402 324kΩ 1%', '0402 324k'),
    ('R62,R64', '0402 316kΩ 1%', '0402 316k'),
    ('R66', '0402WGF1303TCE', '0402 130k'),
    ('R40-R43', '0402 1.24kΩ 1%', '0402 1.24k'),
]

def q(kw):
    req = urllib.request.Request(API, data=json.dumps({'keyword': kw, 'currentPage': 1, 'pageSize': 8}).encode(),
                                 headers={'Content-Type': 'application/json', 'User-Agent': 'Mozilla/5.0'})
    d = json.load(urllib.request.urlopen(req, timeout=30))
    return ((d.get('data') or {}).get('componentPageInfo') or {}).get('list') or []

out = []
for refs, kw, need in PARTS:
    try:
        hits = q(kw)
    except Exception as e:
        hits = []; print('!!', kw, e)
    rows = []
    for h in hits[:4]:
        rows.append({'lcsc': h.get('componentCode'), 'type': {'base': 'Basic', 'expand': 'Extended'}.get(h.get('componentLibraryType'), h.get('componentLibraryType')),
                     'pref': h.get('preferredComponentFlag'), 'stock': h.get('stockCount'), 'mpn': h.get('componentModelEn'),
                     'pkg': h.get('componentSpecificationEn'), 'brand': h.get('componentBrandEn'), 'desc': (h.get('describe') or '')[:70]})
    out.append({'refs': refs, 'keyword': kw, 'need': need, 'hits': rows})
    print('%-14s %-22s need %s' % (refs, kw, need))
    for r in rows:
        print('      %-9s %-8s%s stock %-7s %-24s %-14s %s' % (r['lcsc'], r['type'], '*' if r['pref'] else ' ', r['stock'], (r['mpn'] or '')[:24], (r['pkg'] or '')[:14], r['brand']))
    if not rows:
        print('      -- no match --')
    time.sleep(0.4)
if '--json' in sys.argv:
    json.dump(out, open(sys.argv[sys.argv.index('--json') + 1], 'w'), indent=1)
