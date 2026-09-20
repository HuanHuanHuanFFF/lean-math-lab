#!/usr/bin/env python3
"""Read-only replay of hashes and finite certificates; standard library only."""
from __future__ import annotations
import hashlib,json,os,subprocess,sys
from pathlib import Path
ROOT=Path(__file__).resolve().parent

def inventory():
    return {p.relative_to(ROOT).as_posix():hashlib.sha256(p.read_bytes()).hexdigest() for p in ROOT.rglob('*') if p.is_file()}

def main():
    before=inventory();manifest={}
    for row in (ROOT/'SHA256SUMS').read_text().splitlines():
        digest,name=row.split('  ',1)
        path=Path(name)
        if path.is_absolute() or '..' in path.parts or name in manifest:raise RuntimeError('invalid manifest path')
        manifest[name]=digest
    if set(manifest)!=set(before)-{'SHA256SUMS'}:raise RuntimeError('manifest does not cover exactly all members')
    for name,digest in manifest.items():
        if before[name]!=digest:raise RuntimeError('hash mismatch: '+name)
    print('PASS_MANIFEST_ALL_MEMBERS',flush=True)
    env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1')
    for name in ('check_primary.py','check_independent.py','test_bad_certificates.py'):
        result=subprocess.run([sys.executable,'-B',str(ROOT/name)],cwd=ROOT,text=True,capture_output=True,env=env,timeout=90)
        if result.returncode:raise RuntimeError(name+' failed:\n'+result.stdout+'\n'+result.stderr)
        print(result.stdout,end='',flush=True)
    tests=[
      (['--x','64','--ell','3','--a','4','--r','2','--b','4'],'CONDITIONAL_COMMON3'),
      (['--x','64','--ell','3','--a','6','--r','2','--b','3'],'CONDITIONAL_COMMON3'),
      (['--x','64','--ell','3','--a','4','--r','2','--b','3'],'NO_CONCLUSION_FROM_SQ_HIGH'),
    ]
    for args,expect in tests:
        p=subprocess.run([sys.executable,'-B',str(ROOT/'consumer.py'),*args],capture_output=True,text=True,env=env,timeout=10,check=True)
        if json.loads(p.stdout)['status']!=expect:raise RuntimeError('consumer contract regression')
    print('PASS_CONDITIONAL_CONSUMER_TESTS',flush=True)
    if inventory()!=before:raise RuntimeError('replay modified delivered members')
    print('PASS_READ_ONLY_SQ_HIGH_REPLAY',flush=True)
if __name__=='__main__':main()
