"""U9/U8 pin 10 (GND): make room under the chip body and drop a GND via.
U9: XLAT_OE_N via moved from (16.27, 41.68) to (16.77, 42.35) (straight below pin 9), its In2/In3 tracks follow.
U8: B_DQ_A3 leaves pin 11 straight down to y 41.9 before turning right, so pin 10 gets a via just below it."""
import sys, math
sys.path.insert(0, 'tools')
import pcbnew
from manual_route import *
PCB = 'ad3552r_dac.kicad_pcb'
R = lambda xy: tuple(round(v, 2) for v in xy)
if sys.argv[1:] == ['remove']:
    backup(PCB, 'pre_tssop_gnd')
    b = pcbnew.LoadBoard(PCB)
    old, new = (16.27, 41.68), (16.77, 42.35)
    rm = []
    for t in b.GetTracks():
        n = t.GetNetname()
        if n == 'XLAT_OE_N':
            if t.Type() == pcbnew.PCB_VIA_T:
                if math.dist(P(t.GetPosition()), old) < 0.05: t.SetPosition(V(*new))
            else:
                if math.dist(P(t.GetStart()), old) < 0.05: t.SetStart(V(*new))
                if math.dist(P(t.GetEnd()), old) < 0.05: t.SetEnd(V(*new))
        elif n == 'B_DQ_A3' and t.Type() != pcbnew.PCB_VIA_T and {R(P(t.GetStart())), R(P(t.GetEnd()))} in ({(24.85, 43.5), (22.48, 41.12)}, {(22.48, 41.12), (22.48, 40.64)}):
            rm.append(t)
    for t in rm: b.Remove(t)
    print('B_DQ_A3 segments removed', len(rm))
    b.BuildConnectivity(); pcbnew.SaveBoard(PCB, b)
else:
    b = pcbnew.LoadBoard(PCB)
    # the moved XLAT_OE_N F.Cu stub: (16.77, 41.18) -> new via position
    for t in b.GetTracks():
        if t.GetNetname() == 'XLAT_OE_N' and t.Type() != pcbnew.PCB_VIA_T and t.GetLayer() == pcbnew.F_Cu and R(P(t.GetStart())) == (16.77, 41.18) and R(P(t.GetEnd())) == (16.77, 42.35):
            break
    for a, c in (((22.48, 40.64), (22.48, 41.9)), ((22.48, 41.9), (24.08, 43.5)), ((24.08, 43.5), (24.85, 43.5))):
        add_track(b, 'B_DQ_A3', pcbnew.F_Cu, a, c, 0.15)
    for pin, via in ((pad_xy(b, 'U9', 10), (16.12, 43.3)), (pad_xy(b, 'U8', 10), (23.12, 41.3))):
        add_track(b, 'GND', pcbnew.F_Cu, pin, via, 0.15); add_via(b, 'GND', via)
    save(b, PCB)
