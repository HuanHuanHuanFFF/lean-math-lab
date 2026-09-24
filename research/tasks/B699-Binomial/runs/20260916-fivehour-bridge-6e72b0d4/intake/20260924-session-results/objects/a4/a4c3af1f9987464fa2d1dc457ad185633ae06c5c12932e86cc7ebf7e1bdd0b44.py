"""Check a SHA256SUMS manifest without external commands."""
from pathlib import Path
import hashlib
root=Path(__file__).resolve().parent.parent
count=0
for line in (root/'SHA256SUMS').read_text().splitlines():
    digest,name=line.split('  ',1)
    p=(root/name).resolve()
    if not p.is_relative_to(root): raise ValueError('unsafe manifest member')
    if hashlib.sha256(p.read_bytes()).hexdigest()!=digest:
        raise AssertionError('SHA-256 mismatch: '+name)
    count+=1
print(f'INTERNAL_SHA256=PASS; FILES={count}')
