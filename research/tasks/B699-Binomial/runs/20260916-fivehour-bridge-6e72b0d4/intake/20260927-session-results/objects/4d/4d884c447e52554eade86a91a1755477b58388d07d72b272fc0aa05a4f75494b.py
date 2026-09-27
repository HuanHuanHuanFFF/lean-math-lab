#!/usr/bin/env python3
"""Offline, read-only replay of this round, with temp-directory regeneration."""
from __future__ import annotations
import sys
sys.dont_write_bytecode=True
import hashlib,os,subprocess,tempfile
from pathlib import Path
ROOT=Path(__file__).resolve().parent

def check_manifest(name):
    path=ROOT/name
    if not path.exists():return 0
    n=0
    for line in path.read_text().splitlines():
        digest,rel=line.split(maxsplit=1);p=(ROOT/rel.removeprefix('./')).resolve()
        if ROOT not in p.parents:raise ValueError('unsafe manifest path')
        if hashlib.sha256(p.read_bytes()).hexdigest()!=digest:raise ValueError('manifest mismatch: '+rel)
        n+=1
    print(name+':',n,'PASS');return n

def main():
    check_manifest('SHA256SUMS.txt');check_manifest('PAYLOAD_SHA256SUMS.txt')
    sys.path.insert(0,str(ROOT/'evidence'))
    import verify,negative_tests
    verify.verify_all(verify.load())
    with tempfile.TemporaryDirectory(prefix='b699-a292-regenerate-') as tmp:
        env={**os.environ,'PYTHONDONTWRITEBYTECODE':'1'}
        result=subprocess.run([sys.executable,str(ROOT/'evidence/generate.py'),'--out',tmp],capture_output=True,text=True,env=env)
        if result.returncode:raise RuntimeError(result.stdout+result.stderr)
        expected=sorted(p.name for p in (ROOT/'certificates').glob('*.json'))
        actual=sorted(p.name for p in Path(tmp).glob('*.json'))
        if expected!=actual:raise ValueError('certificate file set differs')
        for name in expected:
            if (ROOT/'certificates'/name).read_bytes()!=(Path(tmp)/name).read_bytes():raise ValueError('regeneration differs: '+name)
        print('TEMP REGENERATION PASS:',len(expected),'byte-identical certificates')
    neg=negative_tests.run();print('NEGATIVE TESTS PASS:',neg['count'],'malformed certificates rejected')
    print('REPLAY PASS; no old branch mathematics rerun; no repository used.')
if __name__=='__main__':main()
