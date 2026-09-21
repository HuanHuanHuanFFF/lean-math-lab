#!/usr/bin/env python3
"""Read-only replay of this frozen package; standard library only."""
from __future__ import annotations
import hashlib,os,subprocess,sys
from pathlib import Path
ROOT=Path(__file__).resolve().parent


def inventory()->dict[str,str]:
    return {str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest()
            for p in sorted(ROOT.rglob('*')) if p.is_file()}


def main()->None:
    before=inventory()
    manifest={}
    for line in (ROOT/'SHA256SUMS').read_text().splitlines():
        h,name=line.split('  ',1)
        if name in manifest:raise AssertionError('duplicate manifest member')
        manifest[name]=h
    assert manifest=={n:h for n,h in before.items() if n!='SHA256SUMS'}
    print('PASS_MEMBER_SHA256',flush=True)
    env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1')
    cert=ROOT/'certificates/certificate.json'
    cmds=[['code/identities.py'],['code/value_grids.py'],
          ['code/primary.py',str(cert)],['code/independent.py',str(cert)],
          ['consumer.py','--self-test'],['code/mutations.py']]
    for cmd in cmds:
        z=subprocess.run([sys.executable,str(ROOT/cmd[0]),*cmd[1:]],
                         cwd=str(ROOT),env=env,capture_output=True,text=True)
        if z.returncode:
            print(z.stdout);print(z.stderr,file=sys.stderr)
            raise SystemExit('FAIL: '+cmd[0])
        print(z.stdout.strip(),flush=True)
    assert inventory()==before,'package modified during replay'
    print('PASS_READ_ONLY_SATURATED_SQUARE_SLOT_REPLAY')

if __name__=='__main__':main()
