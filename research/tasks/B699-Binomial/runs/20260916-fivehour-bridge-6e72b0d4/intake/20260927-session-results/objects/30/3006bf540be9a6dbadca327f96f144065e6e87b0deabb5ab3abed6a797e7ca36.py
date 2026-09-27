#!/usr/bin/env python3
"""Read-only offline replay: file hashes, mathematical receiver, regeneration."""
from __future__ import annotations
import argparse,hashlib,os,subprocess,sys,tempfile
from pathlib import Path
ROOT=Path(__file__).resolve().parent

def run(args):
    env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1',PYTHONHASHSEED='0')
    p=subprocess.run(args,cwd=ROOT,env=env,text=True,stdout=subprocess.PIPE,stderr=subprocess.STDOUT,timeout=60)
    print(p.stdout,end='')
    if p.returncode:raise RuntimeError(f'replay subprocess failed: {p.returncode}')

def main():
    p=argparse.ArgumentParser();p.add_argument('--manifest',choices=['SHA256SUMS.txt','PAYLOAD_SHA256SUMS.txt'],default='SHA256SUMS.txt');a=p.parse_args()
    lines=(ROOT/a.manifest).read_text().splitlines();count=0;seen=set()
    for line in lines:
        h,name=line.split('  ',1);path=(ROOT/name).resolve()
        if ROOT not in path.parents or path.is_symlink() or not path.is_file():raise ValueError('unsafe/nonregular manifested path')
        if name in seen:raise ValueError('duplicate manifest entry')
        seen.add(name)
        if hashlib.sha256(path.read_bytes()).hexdigest()!=h:raise ValueError('SHA mismatch: '+name)
        count+=1
    print(f'INTEGRITY PASS: {count} entries from {a.manifest}')
    run([sys.executable,str(ROOT/'evidence/verify.py')])
    with tempfile.TemporaryDirectory(prefix='A144_regen_') as td:
        out=Path(td)/'certificates';run([sys.executable,str(ROOT/'evidence/generate.py'),'--out',str(out)])
        expected=sorted(p.name for p in (ROOT/'certificates').glob('*.json'))
        if sorted(p.name for p in out.glob('*.json'))!=expected:raise ValueError('certificate set changed')
        for name in expected:
            if (out/name).read_bytes()!=(ROOT/'certificates'/name).read_bytes():raise ValueError('regeneration mismatch: '+name)
        print(f'REGENERATION PASS: {len(expected)} certificate files byte-identical')
    print('CLEAN REPLAY PASS: author-level exact math; not Lean or external review.')
if __name__=='__main__':main()
