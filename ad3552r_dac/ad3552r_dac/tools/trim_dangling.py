"""remove tracks/vias that DRC reports as dangling (spurs left by edits), one at a time, keeping a removal only if
connectivity is unchanged (a segment with one dangling end can still carry a T-junction). Run with any python3."""
import json, subprocess, shutil, os, time
PCB = 'ad3552r_dac.kicad_pcb'
TMP = 'tools/work/trim_tmp.kicad_pcb'
def drc(path):
    subprocess.run(['kicad-cli', 'pcb', 'drc', '--format', 'json', '--severity-all', '-o', 'tools/work/drc.json', path], capture_output=True)
    return json.load(open('tools/work/drc.json'))
shutil.copy(PCB, 'tools/backups/board_%s_pre_trim3.kicad_pcb' % time.strftime('%H%M%S'))
d = drc(PCB); un0 = len(d['unconnected_items']); keep = set(); removed = 0
for it in range(8):
    ids = [i['uuid'] for v in d['violations'] if v['type'] in ('track_dangling', 'via_dangling') for i in v['items'] if i['uuid'] not in keep]
    if not ids: break
    for uid in ids:
        subprocess.run(['/usr/bin/python3', 'tools/rm_item.py', PCB, TMP, uid], capture_output=True)
        if len(drc(TMP)['unconnected_items']) <= un0:
            shutil.copy(TMP, PCB); removed += 1
        else:
            keep.add(uid)
    d = drc(PCB)
print('removed %d spurs, kept %d (they carry a junction); unconnected %d -> %d' % (removed, len(keep), un0, len(d['unconnected_items'])))
