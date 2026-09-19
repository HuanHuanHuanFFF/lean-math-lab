#!/usr/bin/env python3
"""Verify exact shipped file bytes, excluding this manifest's own digest."""
import hashlib
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
count=0
for line in (ROOT/'MANIFEST.sha256').read_text().splitlines():
    digest,relative=line.split('  ',1)
    path=(ROOT/relative).resolve()
    if not path.is_relative_to(ROOT) or not path.is_file():
        raise SystemExit('Missing or unsafe path: '+relative)
    if hashlib.sha256(path.read_bytes()).hexdigest()!=digest:
        raise SystemExit('Hash mismatch: '+relative)
    count+=1
print('PASS_MANIFEST',count)
