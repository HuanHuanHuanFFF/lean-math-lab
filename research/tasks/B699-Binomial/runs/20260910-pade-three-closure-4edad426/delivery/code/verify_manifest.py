#!/usr/bin/env python3
"""Check the delivered immutable snapshot before rerunning any output-producing script."""
from pathlib import Path
import hashlib,json,sys
ROOT=Path(__file__).resolve().parents[1]
def sha(path):
    h=hashlib.sha256()
    with path.open('rb') as f:
        for chunk in iter(lambda:f.read(1024*1024),b''):h.update(chunk)
    return h.hexdigest()
def main():
    data=json.loads((ROOT/'MANIFEST.json').read_text())
    seen=set();total=0
    for row in data['files']:
        rel=Path(row['path'])
        if rel.is_absolute() or '..' in rel.parts or str(rel) in seen:raise ValueError('Invalid manifest path')
        seen.add(str(rel));p=ROOT/rel
        if not p.is_file() or p.stat().st_size!=row['bytes'] or sha(p)!=row['sha256']:
            raise RuntimeError('Byte mismatch: '+str(rel))
        total+=row['bytes']
    print(json.dumps(dict(status='PASS',files=len(seen),total_bytes=total,
      scope='Manifest-listed bytes. Mathematical verification is a separate step; no self-hash.')))
if __name__=='__main__':main()
