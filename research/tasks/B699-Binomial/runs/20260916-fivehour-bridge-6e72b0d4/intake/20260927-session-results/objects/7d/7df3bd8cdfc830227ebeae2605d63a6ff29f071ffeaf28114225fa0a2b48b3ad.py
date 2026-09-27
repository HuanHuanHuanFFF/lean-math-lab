#!/usr/bin/env python3
"""Read-only offline replay: integrity, arithmetic receiver, bytewise regeneration."""
from __future__ import annotations
import argparse, hashlib, os, subprocess, sys, tempfile
from pathlib import Path
ROOT=Path(__file__).resolve().parent

def hash_file(path):return hashlib.sha256(path.read_bytes()).hexdigest()
def run(command):
    env=dict(os.environ, PYTHONDONTWRITEBYTECODE='1', PYTHONHASHSEED='0')
    proc=subprocess.run(command,cwd=ROOT,env=env,text=True,stdout=subprocess.PIPE,stderr=subprocess.STDOUT)
    print(proc.stdout,end='')
    if proc.returncode:raise RuntimeError(f'command failed with code {proc.returncode}')

def main():
    p=argparse.ArgumentParser();p.add_argument('--manifest',choices=['SHA256SUMS.txt','PAYLOAD_SHA256SUMS.txt'],default='SHA256SUMS.txt')
    args=p.parse_args();manifest=ROOT/args.manifest
    if not manifest.is_file():raise FileNotFoundError(manifest)
    count=0
    for line in manifest.read_text().splitlines():
        if not line.strip():continue
        checksum,name=line.split('  ',1)
        path=(ROOT/name).resolve()
        if ROOT not in path.parents:raise ValueError('path leaves package')
        if path.is_symlink() or not path.is_file():raise ValueError('nonregular manifested path')
        if hash_file(path)!=checksum:raise ValueError(f'SHA256 mismatch: {name}')
        count+=1
    print(f'INTEGRITY PASS: {count} entries in {args.manifest}')
    run([sys.executable,str(ROOT/'evidence/verify.py')])
    with tempfile.TemporaryDirectory(prefix='b699_A100_regenerate_') as td:
        out=Path(td)/'certificates'
        run([sys.executable,str(ROOT/'evidence/generate.py'),'--out',str(out)])
        expected=sorted(p.name for p in (ROOT/'certificates').glob('*.json'))
        actual=sorted(p.name for p in out.glob('*.json'))
        if actual!=expected:raise ValueError('certificate file set mismatch')
        for name in expected:
            if (out/name).read_bytes()!=(ROOT/'certificates'/name).read_bytes():
                raise ValueError(f'regenerated certificate differs: {name}')
        print(f'REGENERATION PASS: {len(expected)} certificate files byte-identical')
    print('CLEAN REPLAY PASS (author-level exact arithmetic; no Lean/external review)')
if __name__=='__main__':main()
