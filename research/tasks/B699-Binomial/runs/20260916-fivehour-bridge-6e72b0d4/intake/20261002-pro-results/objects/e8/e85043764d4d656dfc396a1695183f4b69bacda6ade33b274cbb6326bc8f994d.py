#!/usr/bin/env python3
"""Byte-compare this package's deterministic certificates with a fresh replay."""
import argparse,hashlib,json
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
def hashes(p):return {str(x.relative_to(p)):hashlib.sha256(x.read_bytes()).hexdigest()for x in sorted(p.rglob('*'))if x.is_file()}
ap=argparse.ArgumentParser();ap.add_argument('--out',required=True,type=Path);a=ap.parse_args()
x=hashes(ROOT/'certificates');y=hashes(a.out/'certificates')
if not x or x!=y:
 raise RuntimeError({'missing':sorted(set(x)-set(y)),'extra':sorted(set(y)-set(x)),'changed':[k for k in x.keys()&y.keys()if x[k]!=y[k]]})
print(json.dumps({'status':'PASS_BYTE_IDENTICAL_CERTIFICATES','count':len(x),'sha256':x},indent=2))
