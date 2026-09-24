#!/usr/bin/env python3
from pathlib import Path
import hashlib
root=Path(__file__).resolve().parents[1]
count=0
for line in (root/'SHA256SUMS').read_text().splitlines():
    expected,name=line.split('  ',1)
    file=root/name
    assert file.is_file(),name
    assert hashlib.sha256(file.read_bytes()).hexdigest()==expected,name
    count+=1
print(f'PACKAGE_HASHES=PASS; FILES={count}')
