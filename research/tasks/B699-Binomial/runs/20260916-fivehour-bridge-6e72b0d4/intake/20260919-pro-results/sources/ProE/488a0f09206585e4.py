#!/usr/bin/env python3
from __future__ import annotations
import argparse, hashlib
from pathlib import Path

def verify(root: Path) -> int:
    count=0
    for line in (root/'SHA256SUMS').read_text(encoding='utf-8').splitlines():
        if not line.strip(): continue
        want,name=line.split(None,1); name=name.lstrip('* ')
        path=(root/name).resolve()
        if not path.is_relative_to(root.resolve()): raise ValueError('unsafe manifest path')
        if hashlib.sha256(path.read_bytes()).hexdigest()!=want: raise ValueError('hash mismatch: '+name)
        count+=1
    return count
if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('root',nargs='?',type=Path,default=Path(__file__).resolve().parent.parent)
    args=p.parse_args();print('HASH_PASS',verify(args.root))
