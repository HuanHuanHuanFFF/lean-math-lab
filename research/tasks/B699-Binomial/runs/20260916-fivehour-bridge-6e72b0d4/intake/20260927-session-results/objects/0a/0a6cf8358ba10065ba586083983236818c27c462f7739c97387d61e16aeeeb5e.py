#!/usr/bin/env python3
"""Offline, non-mutating replay of this round only."""
from __future__ import annotations
import sys
sys.dont_write_bytecode=True
import os,hashlib,subprocess,tempfile
from pathlib import Path
R=Path(__file__).resolve().parent
def need(x,msg):
 if not x:raise RuntimeError(msg)
def digest(p):return hashlib.sha256(p.read_bytes()).hexdigest()
manifest=R/'SHA256SUMS.txt'
if not manifest.exists():manifest=R/'PAYLOAD_SHA256SUMS.txt'
count=0
for line in manifest.read_text().splitlines():
 h,f=line.split(maxsplit=1);p=(R/f.removeprefix('./')).resolve();need(p.is_relative_to(R),'unsafe manifest path')
 need(p.is_file() and digest(p)==h,'digest mismatch '+f);count+=1
print('MANIFEST PASS',manifest.name,count,flush=True)
before={p.relative_to(R).as_posix():digest(p) for p in R.rglob('*') if p.is_file()}
env={**os.environ,'PYTHONDONTWRITEBYTECODE':'1'}
subprocess.run([sys.executable,str(R/'evidence/verify.py')],cwd=R,env=env,check=True)
with tempfile.TemporaryDirectory(prefix='b699-a1090-regenerate-') as td:
 out=Path(td)/'certificates'
 subprocess.run([sys.executable,str(R/'evidence/generate.py'),'--out',str(out)],cwd=R,env=env,check=True)
 expected={p.name:p.read_bytes() for p in (R/'certificates').glob('*.json')}
 actual={p.name:p.read_bytes() for p in out.glob('*.json')}
 need(actual==expected,'regenerated certificates differ')
 print('BYTE REGENERATION PASS',len(expected),flush=True)
after={p.relative_to(R).as_posix():digest(p) for p in R.rglob('*') if p.is_file()}
need(before==after,'replay changed delivered files')
print('CLEAN NON-MUTATING REPLAY PASS',flush=True)
