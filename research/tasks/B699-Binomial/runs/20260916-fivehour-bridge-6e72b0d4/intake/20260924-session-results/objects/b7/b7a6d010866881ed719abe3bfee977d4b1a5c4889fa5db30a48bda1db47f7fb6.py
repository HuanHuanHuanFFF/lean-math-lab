#!/usr/bin/env python3
import argparse,hashlib
from pathlib import Path
p=argparse.ArgumentParser();p.add_argument('--root',type=Path,default=Path(__file__).resolve().parents[1]);a=p.parse_args()
r=a.root.resolve();count=0
for line in (r/'SHA256SUMS').read_text().splitlines():
    digest,name=line.split('  ',1);f=(r/name).resolve()
    if not f.is_relative_to(r) or not f.is_file():raise SystemExit('Invalid member '+name)
    if hashlib.sha256(f.read_bytes()).hexdigest()!=digest:raise SystemExit('Hash mismatch '+name)
    count+=1
print('HASHES=PASS; FILES='+str(count))
