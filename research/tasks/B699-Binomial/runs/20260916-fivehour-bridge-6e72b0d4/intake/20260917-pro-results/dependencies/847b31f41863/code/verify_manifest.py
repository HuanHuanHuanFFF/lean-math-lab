#!/usr/bin/env python3
from pathlib import Path
import hashlib,json
ROOT=Path(__file__).resolve().parents[1]
obj=json.loads((ROOT/'MANIFEST.json').read_text())
expected={r['path'] for r in obj['files']}
actual={str(p.relative_to(ROOT)) for p in ROOT.rglob('*') if p.is_file() and p.name!='MANIFEST.json' and '__pycache__' not in p.parts}
assert actual==expected,(actual-expected,expected-actual)
for r in obj['files']:
 b=(ROOT/r['path']).read_bytes();assert len(b)==r['bytes'] and hashlib.sha256(b).hexdigest()==r['sha256'],r['path']
print('PASS_MANIFEST',len(expected))
