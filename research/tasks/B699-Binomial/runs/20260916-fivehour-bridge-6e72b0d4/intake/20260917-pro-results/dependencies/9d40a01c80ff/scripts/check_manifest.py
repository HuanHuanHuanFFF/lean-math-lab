#!/usr/bin/env python3
"""Verify exact frozen members; does not establish mathematical truth."""
import hashlib
import json
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
manifest=json.loads((ROOT/'MANIFEST.json').read_text())
actual={str(p.relative_to(ROOT)) for p in ROOT.rglob('*') if p.is_file() and p.name!='MANIFEST.json' and '__pycache__' not in p.parts}
expected=set(manifest['files'])
assert actual==expected, {'missing':sorted(expected-actual),'extra':sorted(actual-expected)}
for name,info in manifest['files'].items():
    p=ROOT/name
    assert p.stat().st_size==info['bytes'],name
    assert hashlib.sha256(p.read_bytes()).hexdigest()==info['sha256'],name
print('PASS_MANIFEST',len(expected),'files')
