#!/usr/bin/env python3
"""Offline, read-only package replay. Python 3.10+, standard library only."""
from __future__ import annotations
import sys
sys.dont_write_bytecode=True
import os,subprocess,tempfile,hashlib
from pathlib import Path
ROOT=Path(__file__).resolve().parent
ENV=dict(os.environ,PYTHONDONTWRITEBYTECODE='1',PYTHONHASHSEED='0')
def run(args):
 p=subprocess.run([sys.executable,*map(str,args)],cwd=ROOT,env=ENV,text=True,capture_output=True)
 print(p.stdout,end='')
 if p.returncode:
  print(p.stderr,file=sys.stderr);raise SystemExit(p.returncode)
def manifest():
 f=ROOT/'SHA256SUMS.txt'
 if not f.exists():f=ROOT/'PAYLOAD_SHA256SUMS.txt'
 if not f.exists():raise RuntimeError('No manifest')
 n=0
 for line in f.read_text().splitlines():
  h,name=line.split(maxsplit=1);p=(ROOT/name.removeprefix('./')).resolve()
  if not p.is_relative_to(ROOT):raise RuntimeError('Unsafe manifest path')
  if hashlib.sha256(p.read_bytes()).hexdigest()!=h:raise RuntimeError('Digest mismatch '+name)
  n+=1
 print(f'MANIFEST PASS: {n} members via {f.name}')
 return n
def main():
 manifest();run([ROOT/'evidence/verify.py'])
 with tempfile.TemporaryDirectory(prefix='b699-a382-regenerate-') as tmp:
  out=Path(tmp)/'certificates';run([ROOT/'evidence/generate.py','--out',out])
  files=sorted((ROOT/'certificates').glob('*.json'))
  if {p.name for p in files}!={p.name for p in out.glob('*.json')}:raise RuntimeError('Certificate set differs')
  for p in files:
   if p.read_bytes()!=(out/p.name).read_bytes():raise RuntimeError('Certificate bytes differ '+p.name)
  run([ROOT/'evidence/verify.py','--cert-dir',out]);print(f'REGENERATE PASS: {len(files)} byte-identical certificates')
 run([ROOT/'evidence/negative_tests.py']);manifest();print('CLEAN REPLAY PASS: exact math checks, regeneration and mathematical mutation rejection; no package writes.')
if __name__=='__main__':main()
