#!/usr/bin/env python3
from pathlib import Path
import hashlib
ROOT=Path(__file__).resolve().parents[1]

def main():
    count=0
    for line in (ROOT/'MANIFEST.sha256').read_text().splitlines():
        expected,relative=line.split('  ',1)
        path=(ROOT/relative).resolve()
        if not path.is_relative_to(ROOT.resolve()):raise ValueError('unsafe manifest path')
        actual=hashlib.sha256(path.read_bytes()).hexdigest()
        if expected!=actual:raise ValueError('hash mismatch: '+relative)
        count+=1
    print('PASS',count,'file hashes')
if __name__=='__main__':main()
