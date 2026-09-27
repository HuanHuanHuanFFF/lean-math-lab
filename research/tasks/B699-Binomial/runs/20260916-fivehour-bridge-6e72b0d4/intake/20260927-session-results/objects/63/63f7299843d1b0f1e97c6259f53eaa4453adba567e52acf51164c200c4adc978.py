#!/usr/bin/env python3
"""Verify a clean evidence directory without modifying it.
Runs the separate receiving verifier and byte-exact certificate regeneration.
"""
from __future__ import annotations
import argparse,hashlib,os,subprocess,sys,tempfile
from pathlib import Path
ROOT=Path(__file__).resolve().parent
sys.dont_write_bytecode=True

def sh(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def tree():return {str(p.relative_to(ROOT)):sh(p) for p in sorted(ROOT.rglob('*')) if p.is_file()}
def run(argv):
    env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1')
    proc=subprocess.run(argv,cwd=ROOT,env=env,capture_output=True,text=True,timeout=120)
    print(proc.stdout,end='')
    if proc.stderr:print(proc.stderr,file=sys.stderr,end='')
    if proc.returncode:raise RuntimeError('command failed: '+str(argv))

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--manifest',choices=['SHA256SUMS.txt','PAYLOAD_SHA256SUMS.txt'],default=None);args=ap.parse_args()
    name=args.manifest or ('SHA256SUMS.txt' if (ROOT/'SHA256SUMS.txt').exists() else 'PAYLOAD_SHA256SUMS.txt')
    manifest=ROOT/name
    if not manifest.is_file():raise FileNotFoundError('missing hash manifest')
    before=tree();count=0
    for line in manifest.read_text().splitlines():
        h,n=line.split(maxsplit=1);n=n.removeprefix('./');p=ROOT/n
        if Path(n).is_absolute() or '..' in Path(n).parts:raise ValueError('unsafe manifest name')
        if not p.is_file() or sh(p)!=h:raise ValueError('hash mismatch: '+n)
        count+=1
    print(f'HASH PASS: {count} members in {name}')
    run([sys.executable,str(ROOT/'evidence/verify.py')])
    with tempfile.TemporaryDirectory(prefix='a208-regenerate-') as td:
        out=Path(td)/'certificates'
        run([sys.executable,str(ROOT/'evidence/generate.py'),'--out',str(out)])
        originals={p.name:p for p in (ROOT/'certificates').glob('*.json')}
        fresh={p.name:p for p in out.glob('*.json')}
        if originals.keys()!=fresh.keys():raise ValueError('certificate set changed')
        for n in originals:
            if originals[n].read_bytes()!=fresh[n].read_bytes():raise ValueError('regeneration differs: '+n)
        print(f'BYTE REGENERATION PASS: {len(fresh)} certificates')
    if tree()!=before:raise RuntimeError('replay modified the evidence tree')
    print('UNCHANGED TREE PASS')
    print('CLEAN REPLAY PASS; original theorem scope and author-level prerequisites unchanged')
if __name__=='__main__':main()
