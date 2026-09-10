#!/usr/bin/env python3
"""Verify the original delivered bytes before rerunning time-stamped checks."""
import hashlib
import json
from pathlib import Path

root = Path(__file__).resolve().parents[1]
manifest = root / 'MANIFEST.sha256'
if not manifest.is_file():
    raise SystemExit('MANIFEST.sha256 is missing')
checked = 0
for line in manifest.read_text().splitlines():
    expected, name = line.split('  ', 1)
    path = (root / name).resolve()
    if not path.is_relative_to(root) or not path.is_file():
        raise SystemExit(f'Missing or unsafe manifest path: {name}')
    actual = hashlib.sha256(path.read_bytes()).hexdigest()
    if actual != expected:
        raise SystemExit(f'SHA256 mismatch: {name}')
    checked += 1
print(json.dumps({'status': 'PASS', 'files_checked': checked,
                  'scope': 'Delivered bytes only; not mathematical or Lean validation'}))
