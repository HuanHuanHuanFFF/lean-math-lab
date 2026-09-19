#!/usr/bin/env python3
"""Check the package file inventory, sizes, and SHA-256 hashes."""
from __future__ import annotations
import hashlib
import json
from pathlib import Path
import sys


def main() -> int:
    root=Path(__file__).resolve().parent.parent
    doc=json.loads((root/'MANIFEST.json').read_text(encoding='utf-8'))
    records=doc['files']
    expected=set()
    for record in records:
        rel=Path(record['path'])
        if rel.is_absolute() or '..' in rel.parts or str(rel) in expected:
            raise ValueError('Unsafe or duplicate manifest entry')
        expected.add(str(rel))
        path=root/rel
        if path.is_symlink() or not path.is_file():
            raise ValueError('Missing or symlinked file: '+str(rel))
        raw=path.read_bytes()
        if len(raw)!=record['bytes'] or hashlib.sha256(raw).hexdigest()!=record['sha256']:
            raise ValueError('Hash/size mismatch: '+str(rel))
    actual={str(p.relative_to(root)) for p in root.rglob('*')
            if p.is_file() and p.name!='MANIFEST.json' and '__pycache__' not in p.parts}
    if actual!=expected:
        raise ValueError('Manifest file inventory is incomplete or has extras')
    print(json.dumps({'status':'PASS','files':len(expected),'algorithm':'SHA-256'}))
    return 0

if __name__=='__main__':
    try:
        raise SystemExit(main())
    except (ValueError,OSError,KeyError,TypeError) as exc:
        print(str(exc),file=sys.stderr)
        raise SystemExit(1)
