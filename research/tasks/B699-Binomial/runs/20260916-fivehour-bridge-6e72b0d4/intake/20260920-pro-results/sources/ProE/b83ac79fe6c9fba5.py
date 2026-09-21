#!/usr/bin/env python3
"""Offline, read-only replay of this round's exact finite certificates.
Does not claim to mechanically prove the ideal-theoretic paper argument.
Does not run prior-round proof engines or exploratory scans.
"""
from __future__ import annotations
import hashlib
import json
import os
from pathlib import Path, PurePosixPath
import subprocess
import sys

sys.dont_write_bytecode=True
ROOT=Path(__file__).resolve().parent

def fail(message: str) -> None:
    raise RuntimeError(message)

def digest(path: Path) -> str:
    h=hashlib.sha256()
    with path.open('rb') as f:
        for block in iter(lambda:f.read(1024*1024),b''):
            h.update(block)
    return h.hexdigest()

def validate_manifest() -> int:
    entries={}
    for line in (ROOT/'SHA256SUMS').read_text(encoding='utf-8').splitlines():
        if not line: continue
        if '  ' not in line: fail('Malformed checksum record')
        expected,name=line.split('  ',1)
        pp=PurePosixPath(name)
        if pp.is_absolute() or '..' in pp.parts or name in entries or name=='SHA256SUMS':
            fail('Unsafe or duplicate manifest path: '+name)
        if len(expected)!=64 or any(c not in '0123456789abcdef' for c in expected):
            fail('Invalid digest: '+name)
        path=ROOT.joinpath(*pp.parts)
        if not path.is_file() or path.is_symlink():fail('Missing/nonregular member: '+name)
        if digest(path)!=expected:fail('SHA256 mismatch: '+name)
        entries[name]=expected
    actual={str(p.relative_to(ROOT)).replace(os.sep,'/') for p in ROOT.rglob('*')
            if p.is_file() and p.name!='SHA256SUMS' and '__pycache__' not in p.parts}
    if actual!=set(entries):fail('Manifest membership mismatch')
    return len(entries)

def run_check(script: str, output: str, certificate: bool=True) -> str:
    cmd=[sys.executable,'-B',str(ROOT/'src'/script)]
    if certificate:cmd.append(str(ROOT/'certificates'/'ORDER5.json'))
    env=os.environ.copy();env['PYTHONDONTWRITEBYTECODE']='1'
    result=subprocess.run(cmd,cwd=ROOT,env=env,text=True,encoding='utf-8',
                          capture_output=True,timeout=120,check=False)
    if result.returncode:
        fail(script+' failed:\n'+result.stderr[-4000:])
    observed=json.loads(result.stdout)
    expected=json.loads((ROOT/'outputs'/output).read_text(encoding='utf-8'))
    if observed!=expected:fail('Output mismatch: '+output)
    return observed['status']

def main() -> None:
    count=validate_manifest()
    statuses=[run_check('verify_exact.py','EXACT.json'),
              run_check('verify_independent.py','INDEPENDENT.json'),
              run_check('test_bad_certificates.py','BAD_CERTIFICATES.json',False)]
    validate_manifest()
    print(json.dumps({'status':'PASS_READ_ONLY_ORDER5_REPLAY',
                      'sha256_members_checked':count,'checks':statuses,
                      'proof_boundary':'Finite certificates only; general ideal theory remains a sourced paper proof.',
                      'prior_proofs_rerun':False,'exploratory_scans_rerun':False},
                     ensure_ascii=False,sort_keys=True,indent=2))

if __name__=='__main__':
    try:main()
    except (OSError,ValueError,KeyError,RuntimeError,subprocess.SubprocessError) as e:
        print('REPLAY_FAILED: '+str(e),file=sys.stderr)
        raise SystemExit(1)
