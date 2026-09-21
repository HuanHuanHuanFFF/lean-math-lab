#!/usr/bin/env python3
"""Offline, read-only hash and exact finite-evidence replay."""
from __future__ import annotations
import hashlib,json,os,subprocess,sys
from pathlib import Path
ROOT=Path(__file__).resolve().parent

def snapshot():
    return {str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest()
            for p in sorted(ROOT.rglob('*')) if p.is_file()}

def main():
    expected={}
    for line in (ROOT/'SHA256SUMS').read_text().splitlines():
        digest,name=line.split('  ',1)
        if name in expected:raise ValueError('Duplicate manifest entry')
        if Path(name).is_absolute() or '..' in Path(name).parts:raise ValueError('Unsafe manifest path')
        expected[name]=digest
    before=snapshot()
    names=set(before)-{'SHA256SUMS'}
    if names!=set(expected):raise ValueError('Manifest member set differs')
    for name,digest in expected.items():
        if before[name]!=digest:raise ValueError('Hash mismatch: '+name)
    env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1')
    outputs={}
    for script in ('check_primary.py','check_independent.py','check_diagnostics.py','bad_certificates.py'):
        p=subprocess.run([sys.executable,str(ROOT/script)],cwd=ROOT,env=env,capture_output=True,text=True,timeout=90)
        if p.returncode:raise RuntimeError(script+' failed\n'+p.stderr)
        outputs[script]=json.loads(p.stdout)
    if outputs['check_primary.py']['endpoint_sha256']!=outputs['check_independent.py']['endpoint_sha256']:
        raise ValueError('Endpoint algorithms differ')
    samples=[]
    for g,c,s,hit in [(1,1,15,True),(2,1,21,True),(1,1,12,False),(2,3,15,False),(4,1,21,False)]:
        p=subprocess.run([sys.executable,str(ROOT/'consumer.py'),'--g',str(g),'--c',str(c),'--s',str(s)],
                         env=env,capture_output=True,text=True,timeout=10)
        if p.returncode:raise RuntimeError(p.stderr)
        data=json.loads(p.stdout)
        if (data['status']=='CONDITIONAL_COMMON3')!=hit:raise ValueError('Consumer regression')
        samples.append({'g':g,'c':c,'s':s,'status':data['status']})
    if snapshot()!=before:raise RuntimeError('Replay changed delivery bytes')
    print(json.dumps({'status':'PASS_READ_ONLY_UXS12_REPLAY','manifest_members':len(expected),
                      'endpoint_counts':[4,93],'integer_B_solutions':0,
                      'endpoint_sha256':outputs['check_primary.py']['endpoint_sha256'],
                      'bad_certificate_cases':outputs['bad_certificates.py']['case_count'],
                      'finite_checks':{k:v['status'] for k,v in outputs.items()},
                      'consumer_samples':samples,'bytes_unchanged':True},sort_keys=True,indent=2))
if __name__=='__main__':main()
