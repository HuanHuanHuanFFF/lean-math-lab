#!/usr/bin/env python3
"""Offline replay, read-only with respect to the evidence package."""
from __future__ import annotations
import hashlib,json,os,subprocess,sys
from pathlib import Path

def digest(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def main():
    root=Path(__file__).resolve().parent
    actual={str(p.relative_to(root)):digest(p) for p in root.rglob('*') if p.is_file() and p.name!='SHA256SUMS'}
    expected={}
    for line in (root/'SHA256SUMS').read_text().splitlines():
        h,name=line.split('  ',1)
        if name in expected:raise ValueError('duplicate manifest member')
        expected[name]=h
    if actual!=expected:raise ValueError('manifest content or member set mismatch')
    for src in json.loads((root/'sources/SOURCE_MANIFEST.json').read_text()):
        p=root/'sources'/src['file']
        assert p.stat().st_size==src['size'] and digest(p)==src['sha256']
    env=dict(os.environ);env['PYTHONDONTWRITEBYTECODE']='1'
    for command in [['check_coeff.py'],['check_grid.py'],['bad_certificates.py']]:
        proc=subprocess.run([sys.executable,str(root/command[0]),*command[1:]],cwd=root,env=env,capture_output=True,text=True,timeout=60)
        if proc.returncode:raise RuntimeError(proc.stderr[-3000:])
        print(proc.stdout.strip())
    cases=[(1,15,'EXCLUDED_BY_NEW_ODD'),(1,23,'EXCLUDED_BY_NEW_ODD'),
           (1,12,'NO_NEW_EXCLUSION'),(3,15,'NO_NEW_EXCLUSION'),
           (1,14,'EXCLUDED_BY_ADOPTED_LAMBDA'),(1,3,'EXCLUDED_BY_NEW_ODD')]
    for c,s,wanted in cases:
        p=subprocess.run([sys.executable,str(root/'consumer.py'),'minimal','--c',str(c),'--s',str(s)],cwd=root,env=env,capture_output=True,text=True,check=True,timeout=10)
        data=json.loads(p.stdout)
        assert data['status']==wanted and data['membership_verified'] is False and data['whole_row_claim'] is False
    after={str(p.relative_to(root)):digest(p) for p in root.rglob('*') if p.is_file() and p.name!='SHA256SUMS'}
    if actual!=after:raise ValueError('replay changed package bytes')
    print('PASS_CONDITIONAL_CONSUMER_TESTS')
    print('PASS_READ_ONLY_SQUARE_SOURCE_REPLAY')
if __name__=='__main__':main()
