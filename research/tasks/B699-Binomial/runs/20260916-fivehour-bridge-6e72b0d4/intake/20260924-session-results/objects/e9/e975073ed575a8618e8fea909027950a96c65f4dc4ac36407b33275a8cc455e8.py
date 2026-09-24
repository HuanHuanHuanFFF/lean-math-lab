#!/usr/bin/env python3
"""Verify stored bytes only; this is not a mathematical correctness check."""
from pathlib import Path
import hashlib
root=Path(__file__).resolve().parents[1]
rows=(root/'SHA256SUMS').read_text(encoding='utf-8').splitlines()
for row in rows:
    expected,rel=row.split('  ',1)
    p=root/rel
    if not p.is_file() or hashlib.sha256(p.read_bytes()).hexdigest()!=expected:
        raise SystemExit('HASH_FAIL: '+rel)
print('FILE_HASHES=PASS; COUNT='+str(len(rows)))
