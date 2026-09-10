#!/usr/bin/env python3
"""Verify the delivered static byte snapshot. This is not proof verification."""
from pathlib import Path
import hashlib,json,sys
ROOT=Path(__file__).resolve().parent

def sha(path):
    h=hashlib.sha256()
    with path.open('rb') as stream:
        for b in iter(lambda:stream.read(1<<20),b''):h.update(b)
    return h.hexdigest()

def main():
    manifest=json.loads((ROOT/'MANIFEST.json').read_text())
    if manifest.get('version')!=1:raise ValueError('Unsupported manifest version')
    seen=set();total=0
    for row in manifest['files']:
        rel=Path(row['path'])
        if rel.is_absolute() or '..' in rel.parts or row['path'] in seen:raise ValueError('Unsafe or duplicate manifest path')
        seen.add(row['path']);p=ROOT/rel
        if not p.is_file() or p.is_symlink():raise ValueError('Missing or invalid file: '+row['path'])
        if p.stat().st_size!=row['bytes'] or sha(p)!=row['sha256']:raise ValueError('Byte mismatch: '+row['path'])
        total+=p.stat().st_size
    if len(seen)!=manifest['file_count'] or total!=manifest['total_bytes']:raise ValueError('Manifest aggregate mismatch')
    print(json.dumps({'status':'PASS','files_checked':len(seen),'bytes_checked':total,
        'scope':'Static byte integrity only; additional replay files may exist; see code/reproduce.py for exact computations'}))

if __name__=='__main__':
    try:main()
    except Exception as error:
        print('FAIL:',error,file=sys.stderr);raise SystemExit(1)
