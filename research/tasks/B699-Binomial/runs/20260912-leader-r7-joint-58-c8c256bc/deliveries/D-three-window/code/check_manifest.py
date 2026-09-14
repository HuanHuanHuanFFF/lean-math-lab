#!/usr/bin/env python3
"""Strict file-set and SHA-256 integrity check. This is not mathematical verification."""
from __future__ import annotations
import hashlib,json,sys
from pathlib import Path

def verify(root: Path) -> dict:
    manifest=json.loads((root/'MANIFEST.json').read_text())
    expected=manifest['files']
    # Nested upstream manifests are carried inside frozen archives, not silently ignored.
    actual={p.relative_to(root).as_posix() for p in root.rglob('*') if p.is_file() and p!=root/'MANIFEST.json'}
    if actual!=set(expected):raise ValueError({'missing':sorted(set(expected)-actual),'unexpected':sorted(actual-set(expected))})
    for name,item in expected.items():
        p=root/name
        if p.is_symlink() or '..' in Path(name).parts or Path(name).is_absolute():raise ValueError('unsafe path')
        b=p.read_bytes()
        if len(b)!=item['bytes'] or hashlib.sha256(b).hexdigest()!=item['sha256']:raise ValueError('hash mismatch '+name)
    return {'status':'PASS_MANIFEST','files':len(expected),'bytes':sum(v['bytes'] for v in expected.values())}

if __name__=='__main__':
    print(json.dumps(verify(Path(sys.argv[1]).resolve() if len(sys.argv)>1 else Path(__file__).resolve().parents[1])))
