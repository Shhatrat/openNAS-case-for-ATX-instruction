#!/usr/bin/env python3
"""Convert STL files to base64-encoded uint16 geometry for embedding in HTML."""
import struct, base64, json, sys
from pathlib import Path

def parse_stl(path):
    data = path.read_bytes()
    n = struct.unpack_from('<I', data, 80)[0]
    verts = []
    for i in range(n):
        off = 84 + i * 50
        if off + 50 > len(data):
            break
        for j in range(3):
            verts.extend(struct.unpack_from('<fff', data, off + 12 + j*12))
    return verts

def encode(verts):
    mn = [min(verts[a::3]) for a in range(3)]
    shifted = [(v - mn[i%3]) for i, v in enumerate(verts)]
    u16 = bytes()
    for v in shifted:
        u16 += struct.pack('<H', min(65535, int(v * 100 + 0.5)))
    return base64.b64encode(u16).decode()

stl_dir = Path(__file__).parent / 'stl'
parts = {}
for f in sorted(stl_dir.glob('cover-*.stl')):
    name = f.stem  # e.g. cover-top-a
    print(f'  packing {name}…', file=sys.stderr)
    parts[name] = encode(parse_stl(f))

print(json.dumps(parts))
