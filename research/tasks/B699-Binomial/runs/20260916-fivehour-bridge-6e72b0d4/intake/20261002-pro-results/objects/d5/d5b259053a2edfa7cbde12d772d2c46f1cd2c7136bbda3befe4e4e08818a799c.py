#!/usr/bin/env python3
"""Verify all declared payload files and reject missing/extra payload files."""
import hashlib,json
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
expected={}
for line in(ROOT/'MANIFEST.sha256').read_text().splitlines():
 h,n=line.split('  ',1)
 p=ROOT/n
 if not p.is_file()or hashlib.sha256(p.read_bytes()).hexdigest()!=h:raise RuntimeError('checksum failure: '+n)
 expected[n]=h
actual={str(p.relative_to(ROOT))for p in ROOT.rglob('*')if p.is_file()and '__pycache__'not in p.parts and p.name!='MANIFEST.sha256'}
if set(expected)!=actual:raise RuntimeError({'missing':sorted(set(expected)-actual),'extra':sorted(actual-set(expected))})
print(json.dumps({'status':'PASS_ALL_MANIFEST_FILES','file_count':len(expected)}))
