"""rm_item.py SRC DST UUID : copy board SRC to DST without the track/via UUID (one item per process: pcbnew wrappers break after Remove)"""
import sys
import pcbnew
src, dst, uid = sys.argv[1:4]
b = pcbnew.LoadBoard(src)
t = next((t for t in b.GetTracks() if t.m_Uuid.AsString() == uid), None)
if t is not None:
    b.Remove(t)
b.BuildConnectivity(); pcbnew.SaveBoard(dst, b)
print('removed' if t is not None else 'not found')
