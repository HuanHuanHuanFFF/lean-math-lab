#!/usr/bin/env python3
"""Verify every frozen member listed in SHA256SUMS using only Python's standard library."""
from pathlib import Path
import hashlib, sys
root=Path(__file__).resolve().parents[1]
count=0
for line in (root/'SHA256SUMS').read_text(encoding='utf-8').splitlines():
    digest,name=line.split('  ',1)
    path=(root/name).resolve()
    if not path.is_relative_to(root) or not path.is_file():
        raise SystemExit('REJECT missing/unsafe member: '+name)
    if hashlib.sha256(path.read_bytes()).hexdigest()!=digest:
        raise SystemExit('REJECT changed member: '+name)
    count+=1
print('PASS: verified '+str(count)+' frozen file hashes')
