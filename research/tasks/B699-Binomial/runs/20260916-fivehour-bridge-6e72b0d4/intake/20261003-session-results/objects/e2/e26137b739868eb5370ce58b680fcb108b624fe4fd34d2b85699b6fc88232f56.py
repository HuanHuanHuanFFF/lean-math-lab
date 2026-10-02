#!/usr/bin/env python3
"""Verify manifests, then run the local standard-library checkers in isolation.
This program does not modify the extracted evidence payload.
"""
from pathlib import Path,PurePosixPath
import hashlib,json,subprocess,sys,os,time
ROOT=Path(__file__).resolve().parent

def verify_manifest(path):
    count=0
    for line in path.read_text(encoding='utf-8').splitlines():
        if not line.strip():continue
        expected,relative=line.split('  ',1)
        p=PurePosixPath(relative)
        if p.is_absolute() or '..' in p.parts:raise ValueError('unsafe manifest path')
        target=ROOT.joinpath(*p.parts)
        if not target.is_file():raise FileNotFoundError(relative)
        actual=hashlib.sha256(target.read_bytes()).hexdigest()
        if actual!=expected:raise ValueError('SHA256 mismatch: '+relative)
        count+=1
    return count

def main():
    start=time.monotonic();manifest_counts={}
    for name in ['PAYLOAD_SHA256SUMS','SHA256SUMS']:
        p=ROOT/name
        if p.exists():manifest_counts[name]=verify_manifest(p)
    if 'PAYLOAD_SHA256SUMS' not in manifest_counts:raise ValueError('missing payload manifest')
    env=os.environ.copy();env.pop('PYTHONPATH',None);env.pop('PYTHONHOME',None)
    steps=[]
    for script in ['verify.py','test_consumer.py']:
        command=[sys.executable,'-I','-B',str(ROOT/'code'/script)]
        proc=subprocess.run(command,cwd=ROOT,env=env,text=True,capture_output=True,check=False)
        step={'script':'code/'+script,'exit_code':proc.returncode,'stdout':proc.stdout,'stderr':proc.stderr}
        steps.append(step)
        if proc.returncode:
            print(json.dumps({'status':'FAIL','manifest_counts':manifest_counts,'steps':steps},ensure_ascii=False,indent=2))
            return proc.returncode
    print(json.dumps({'status':'PASS','manifest_counts':manifest_counts,
        'payload_manifest_sha256':hashlib.sha256((ROOT/'PAYLOAD_SHA256SUMS').read_bytes()).hexdigest(),
        'steps':steps,'elapsed_seconds':round(time.monotonic()-start,3),
        'not_a_claim_of':['Lean','external independent review','full B699 closure']},ensure_ascii=False,indent=2))
    return 0
if __name__=='__main__':raise SystemExit(main())
