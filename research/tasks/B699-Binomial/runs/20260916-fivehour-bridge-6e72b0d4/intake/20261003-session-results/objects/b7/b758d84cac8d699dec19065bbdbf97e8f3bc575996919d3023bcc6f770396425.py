#!/usr/bin/env python3
"""Read-only manifest checks and isolated standard-library proof replay."""
from pathlib import Path,PurePosixPath
import hashlib,json,subprocess,sys,os,time
ROOT=Path(__file__).resolve().parent

def verify_manifest(path):
    count=0
    for line in path.read_text(encoding='utf-8').splitlines():
        if not line.strip():continue
        expected,relative=line.split('  ',1);p=PurePosixPath(relative)
        if p.is_absolute() or '..' in p.parts:raise ValueError('unsafe manifest path')
        target=ROOT.joinpath(*p.parts)
        if not target.is_file():raise FileNotFoundError(relative)
        if hashlib.sha256(target.read_bytes()).hexdigest()!=expected:raise ValueError('SHA256 mismatch: '+relative)
        count+=1
    return count

def main():
    start=time.monotonic();counts={}
    for name in ['PAYLOAD_SHA256SUMS','SHA256SUMS']:
        p=ROOT/name
        if p.exists():counts[name]=verify_manifest(p)
    if 'PAYLOAD_SHA256SUMS' not in counts:raise ValueError('missing payload manifest')
    env=os.environ.copy();env.pop('PYTHONPATH',None);env.pop('PYTHONHOME',None);steps=[]
    for script in ['verify.py','verify_terminal.py','test_consumer.py']:
        proc=subprocess.run([sys.executable,'-I','-B',str(ROOT/'code'/script)],cwd=ROOT,env=env,text=True,capture_output=True,check=False)
        steps.append({'script':'code/'+script,'exit_code':proc.returncode,'stdout':proc.stdout,'stderr':proc.stderr})
        if proc.returncode:
            print(json.dumps({'status':'FAIL','manifest_counts':counts,'steps':steps},ensure_ascii=False,indent=2));return proc.returncode
    print(json.dumps({'status':'PASS','manifest_counts':counts,
      'payload_manifest_sha256':hashlib.sha256((ROOT/'PAYLOAD_SHA256SUMS').read_bytes()).hexdigest(),
      'steps':steps,'elapsed_seconds':round(time.monotonic()-start,3),
      'result':'complete rational REG4 exception empty; full REG4/i3/B699 not closed',
      'not_a_claim_of':['Lean','external independent review','new full i index','full B699 closure']},ensure_ascii=False,indent=2))
    return 0
if __name__=='__main__':raise SystemExit(main())
