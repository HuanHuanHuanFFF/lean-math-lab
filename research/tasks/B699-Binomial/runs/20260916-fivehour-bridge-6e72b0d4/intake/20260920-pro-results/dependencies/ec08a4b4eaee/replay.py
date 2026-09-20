#!/usr/bin/env python3
"""Offline, read-only replay. Does NOT re-certify the inherited L/h13/order5 proofs."""
import hashlib
import json
import os
from pathlib import Path
import subprocess
import sys

ROOT=Path(__file__).resolve().parent


def snapshot():
    return {str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest()
            for p in ROOT.rglob('*') if p.is_file()}


def main():
    if sys.flags.optimize:
        raise RuntimeError("Run exact verification without Python optimization (-O / PYTHONOPTIMIZE).")
    before=snapshot()
    listed={}
    for line in (ROOT/'SHA256SUMS').read_text(encoding='utf-8').splitlines():
        if not line: continue
        digest,name=line.split('  ',1)
        if name.startswith('/') or '..' in Path(name).parts: raise ValueError('unsafe hash member')
        if name in listed: raise ValueError('duplicate hash member')
        listed[name]=digest
    assert set(listed)==set(before)-{'SHA256SUMS'},'unexpected or missing member'
    assert all(before[n]==h for n,h in listed.items()),'hash mismatch'
    env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1')
    records=[]
    for script in ('check_coeff.py','check_values.py','check_bad.py','test_consumer.py','audit_paper.py'):
        proc=subprocess.run([sys.executable,str(ROOT/script)],capture_output=True,text=True,env=env,timeout=120)
        if proc.returncode:
            raise RuntimeError(f'{script} failed\n{proc.stderr[-6000:]}')
        records.append(json.loads(proc.stdout))
    assert records[0]['endpoint_digest']==records[1]['endpoint_digest']
    assert records[0]['recovery_survivors']==records[1]['recovery_survivors']==0
    after=snapshot()
    assert before==after,'replay changed package bytes'
    print(json.dumps({'status':'PASS_READ_ONLY_VARIABLE_MODULUS_REPLAY',
       'verified_member_count':len(listed),'checks':records,
       'old_dependencies':'byte checks only; inherited mathematical evidence status unchanged'},sort_keys=True))

if __name__=='__main__':main()
