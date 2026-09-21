"""Read-only replay. Uses only the Python standard library."""
from __future__ import annotations
import hashlib
import os
import subprocess
import sys
from pathlib import Path
ROOT=Path(__file__).resolve().parent

def snapshot():
    return {p.relative_to(ROOT).as_posix():hashlib.sha256(p.read_bytes()).hexdigest()
            for p in ROOT.rglob('*') if p.is_file()}

def main():
    before=snapshot()
    expected={}
    for line in (ROOT/'SHA256SUMS').read_text().splitlines():
        digest,name=line.split('  ',1)
        path=ROOT/name
        if not path.resolve().is_relative_to(ROOT):raise ValueError('unsafe manifest path')
        if name in expected:raise ValueError('duplicate manifest member')
        expected[name]=digest
    actual={n:h for n,h in before.items() if n!='SHA256SUMS'}
    if actual!=expected:raise ValueError('member hash or coverage mismatch')
    print('PASS_MEMBER_SHA256',flush=True)
    env=os.environ.copy();env['PYTHONDONTWRITEBYTECODE']='1'
    for script in ['primary.py','independent.py','consumer_tests.py','bad_certificates.py']:
        subprocess.run([sys.executable,'-B',str(ROOT/'checks'/script)],check=True,env=env)
    if snapshot()!=before:raise ValueError('read-only replay changed a member')
    print('PASS_READ_ONLY_MINUS_SLOT_REPLAY')

if __name__=='__main__':
    try:main()
    except Exception as exc:
        print('REPLAY_FAILED: '+str(exc),file=sys.stderr)
        sys.exit(1)
