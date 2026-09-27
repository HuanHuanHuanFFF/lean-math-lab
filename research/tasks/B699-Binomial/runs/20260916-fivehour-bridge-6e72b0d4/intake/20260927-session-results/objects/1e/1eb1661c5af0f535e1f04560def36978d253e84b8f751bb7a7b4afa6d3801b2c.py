#!/usr/bin/env python3
"""Read-only bundle replay, with temporary regenerated certificates outside the payload."""
from __future__ import annotations
import argparse, hashlib, json, os, platform, subprocess, sys, tempfile
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]

def sha(p:Path)->str:return hashlib.sha256(p.read_bytes()).hexdigest()

def verify_manifest(root:Path,name:str)->int:
    count=0
    for line in (root/name).read_text().splitlines():
        if not line.strip():continue
        expected,rel=line.split(None,1);rel=rel.strip().lstrip('*')
        p=(root/rel).resolve()
        if not p.is_relative_to(root.resolve()) or not p.is_file():raise ValueError('unsafe or absent member: '+rel)
        if sha(p)!=expected:raise ValueError('hash mismatch: '+rel)
        count+=1
    return count

def main()->None:
    p=argparse.ArgumentParser();p.add_argument('--receipt',type=Path,required=True);a=p.parse_args()
    if a.receipt.resolve().is_relative_to(ROOT):raise ValueError('receipt must be outside the payload')
    env=os.environ.copy();env['PYTHONDONTWRITEBYTECODE']='1';env['PYTHONHASHSEED']='0'
    manifest_count=verify_manifest(ROOT,'PAYLOAD.sha256')
    commands=[]
    def run(args):
        cp=subprocess.run([sys.executable,*args],cwd=ROOT,env=env,text=True,capture_output=True,timeout=60)
        commands.append({'command':['python',*args],'returncode':cp.returncode,'stdout':cp.stdout,'stderr':cp.stderr})
        if cp.returncode:raise RuntimeError(cp.stdout+cp.stderr)
        return cp.stdout
    with tempfile.TemporaryDirectory(prefix='r10_replay_') as td:
        regenerated=Path(td)/'certificates'
        run(['scripts/discover.py','--out',str(regenerated)])
        a_names={p.name for p in (ROOT/'certificates').glob('*.json')}
        b_names={p.name for p in regenerated.glob('*.json')}
        assert a_names==b_names
        checks=[]
        for name in sorted(a_names):
            old=ROOT/'certificates'/name;new=regenerated/name
            assert old.read_bytes()==new.read_bytes(),name
            checks.append({'file':name,'sha256':sha(new),'byte_identical':True})
        acceptance=json.loads(run(['scripts/accept.py','--certdir',str(regenerated)]))
        mutations=json.loads(run(['scripts/mutation_test.py']))
    receipt={'status':'PASS','python':platform.python_version(),'platform':platform.platform(),
             'payload_files_verified':manifest_count,'regenerated_certificates':checks,
             'acceptance':acceptance,'mutations':mutations,'commands':commands,
             'evidence_level':'author paper proof + exact certificates + same-author separated receiver',
             'historical_net_certified':0,'lean':False,'repository_operations':False}
    a.receipt.parent.mkdir(parents=True,exist_ok=True)
    a.receipt.write_text(json.dumps(receipt,indent=2,ensure_ascii=False,sort_keys=True)+'\n')
    print(json.dumps({'status':'PASS','payload_files_verified':manifest_count,
                      'certificates_byte_identical':len(checks),'mutations_rejected':mutations['rejected']}))
if __name__=='__main__':main()
