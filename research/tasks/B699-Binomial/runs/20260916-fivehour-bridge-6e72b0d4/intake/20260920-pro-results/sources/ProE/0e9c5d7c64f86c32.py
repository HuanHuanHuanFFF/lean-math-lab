#!/usr/bin/env python3
"""Offline, standard-library, read-only replay; old dependencies are hashed only."""
from __future__ import annotations
import hashlib,json,os,subprocess,sys
from pathlib import Path
ROOT=Path(__file__).parent

def snapshot():
    return {str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest()
            for p in ROOT.rglob('*') if p.is_file()}

def main():
    before=snapshot()
    listing=ROOT/'SHA256SUMS'
    expected={}
    for line in listing.read_text().splitlines():
        digest,name=line.split('  ',1)
        if name.startswith('/') or '..' in Path(name).parts:raise ValueError('unsafe member')
        expected[name]=digest
    actual={k:v for k,v in before.items() if k!='SHA256SUMS'}
    if actual!=expected:raise ValueError('member set/hash mismatch')
    env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1')
    outputs=[]
    for checker in('check_exact.py','check_independent.py','check_bad_certificates.py'):
        r=subprocess.run([sys.executable,str(ROOT/checker)],text=True,capture_output=True,env=env)
        if r.returncode:raise RuntimeError(checker+' failed:\n'+r.stdout+r.stderr)
        outputs.append({'command':[sys.executable,checker],'result':json.loads(r.stdout)})
    if snapshot()!=before:raise ValueError('replay modified package bytes')
    print(json.dumps({'status':'PASS_READ_ONLY_JOINT_CYC_REPLAY','members_hashed':len(expected),
                      'checks':outputs,'old_dependency_scope':'byte provenance only, not revalidated'},
                     ensure_ascii=False,indent=2))
if __name__=='__main__':main()
