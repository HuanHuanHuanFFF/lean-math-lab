#!/usr/bin/env python3
"""Clean replay, without writing into the delivered package."""
from pathlib import Path
import hashlib,subprocess,sys
ROOT=Path(__file__).resolve().parents[1]
def check_manifest(name:str)->None:
    f=ROOT/name
    if not f.is_file():raise RuntimeError('Required manifest is absent: '+name)
    seen=set()
    for line in f.read_text(encoding='utf-8').splitlines():
        h,r=line.split('  ',1)
        p=(ROOT/r).resolve()
        if not p.is_relative_to(ROOT.resolve()) or r in seen:raise RuntimeError('Unsafe/duplicate manifest member')
        seen.add(r)
        if not p.is_file() or hashlib.sha256(p.read_bytes()).hexdigest()!=h:raise RuntimeError('Hash mismatch: '+r)
    if not seen:raise RuntimeError('Empty manifest')
check_manifest('PAYLOAD_SHA256SUMS.txt')
if (ROOT/'SHA256SUMS.txt').is_file():check_manifest('SHA256SUMS.txt')
r=subprocess.run([sys.executable,str(ROOT/'scripts/verify.py')],cwd=ROOT)
raise SystemExit(r.returncode)
