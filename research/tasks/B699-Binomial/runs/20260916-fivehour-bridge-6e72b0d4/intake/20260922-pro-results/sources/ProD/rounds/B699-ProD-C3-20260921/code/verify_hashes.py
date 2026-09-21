#!/usr/bin/env python3
"""Check the exact file set and SHA-256 values inside this evidence directory."""
from pathlib import Path
import hashlib

ROOT=Path(__file__).resolve().parent.parent
manifest=ROOT/'SHA256SUMS'
expected={}
for line in manifest.read_text(encoding='utf-8').splitlines():
    digest,name=line.split('  ',1)
    target=ROOT/name
    if len(digest)!=64 or target.resolve().parent!=ROOT.resolve() and ROOT.resolve() not in target.resolve().parents:
        raise SystemExit('Unsafe or invalid hash entry: '+name)
    if name in expected: raise SystemExit('Duplicate hash entry: '+name)
    expected[name]=digest
actual={p.relative_to(ROOT).as_posix() for p in ROOT.rglob('*') if p.is_file() and p.name!='SHA256SUMS' and '__pycache__' not in p.parts}
if actual!=set(expected):
    raise SystemExit('File set mismatch: missing='+str(sorted(set(expected)-actual))+' extra='+str(sorted(actual-set(expected))))
for name,digest in expected.items():
    found=hashlib.sha256((ROOT/name).read_bytes()).hexdigest()
    if found!=digest: raise SystemExit('HASH FAIL '+name)
print('PASS_SHA256 '+str(len(expected))+' files')
