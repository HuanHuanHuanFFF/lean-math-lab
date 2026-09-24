#!/usr/bin/env python3
from pathlib import Path
import hashlib
root=Path(__file__).resolve().parents[1]
count=0
for line in (root/'SHA256SUMS').read_text().splitlines():
    digest,rel=line.split('  ',1)
    path=root/rel
    if not path.is_file() or hashlib.sha256(path.read_bytes()).hexdigest()!=digest:
        raise SystemExit(f'HASH_FAIL: {rel}')
    count+=1
print(f'SHA256SUMS=PASS; files={count}')
