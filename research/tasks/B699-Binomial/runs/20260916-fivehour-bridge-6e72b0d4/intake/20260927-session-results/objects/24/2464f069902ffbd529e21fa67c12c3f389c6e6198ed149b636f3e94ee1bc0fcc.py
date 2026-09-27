#!/usr/bin/env python3
"""Verify packaged hashes, regenerate evidence, run separated acceptance/mutations.
Only writes its optional receipt, otherwise uses temporary directories.
"""
from __future__ import annotations
import argparse,hashlib,json,os,subprocess,sys,tempfile
from pathlib import Path

def verify(root:Path,name:str)->int:
    count=0
    for line in (root/name).read_text().splitlines():
        if not line:continue
        h,rel=line.split('  ',1);p=(root/rel).resolve()
        if not p.is_relative_to(root.resolve()) or not p.is_file():raise ValueError('unsafe/missing manifest path '+rel)
        if hashlib.sha256(p.read_bytes()).hexdigest()!=h:raise ValueError('SHA-256 mismatch '+rel)
        count+=1
    return count

def run(root:Path,cmd:list[str])->dict:
    p=subprocess.run([sys.executable,'-B',*cmd],cwd=root,capture_output=True,text=True,timeout=90,env={**os.environ,'PYTHONDONTWRITEBYTECODE':'1'})
    if p.returncode:raise RuntimeError(json.dumps({'command':cmd,'exit':p.returncode,'stdout':p.stdout,'stderr':p.stderr}))
    return json.loads(p.stdout.strip().splitlines()[-1])

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--root',type=Path,default=Path(__file__).resolve().parents[1]);ap.add_argument('--receipt',type=Path);a=ap.parse_args();root=a.root.resolve()
    payload=verify(root,'PAYLOAD.sha256');final=verify(root,'SHA256SUMS') if (root/'SHA256SUMS').exists() else None
    with tempfile.TemporaryDirectory(prefix='b699-r8-regenerate-') as tmp:
        out=Path(tmp)/'certificates'
        discovery=run(root,[str(root/'scripts/discover.py'),'--out',str(out)])
        names=sorted(p.name for p in (root/'certificates').glob('*.json'))
        regenerated=sorted(p.name for p in out.glob('*.json'))
        if names!=regenerated:raise ValueError('certificate set mismatch')
        hashes={}
        for fn in names:
            expected=(root/'certificates'/fn).read_bytes();actual=(out/fn).read_bytes()
            if actual!=expected:raise ValueError('regeneration not byte-identical: '+fn)
            hashes[fn]=hashlib.sha256(actual).hexdigest()
        acceptance=run(root,[str(root/'scripts/accept.py'),'--cert-dir',str(out)])
        mutations=run(root,[str(root/'scripts/mutation_test.py'),'--root',str(root)])
    receipt={'status':'PASS','payload_files_verified':payload,'final_manifest_files_verified':final,
      'regenerated_certificates':len(names),'byte_identical':True,'certificate_sha256':hashes,
      'discovery':discovery,'independent_implementation_acceptance':acceptance,
      'mutations':mutations,'evidence_level':'same-author separated implementation; not external review or Lean',
      'certified_history_net_deletion':0,'R7':[3,4,5,6,7,8,9]}
    text=json.dumps(receipt,ensure_ascii=False,indent=2,sort_keys=True)+'\n'
    if a.receipt:a.receipt.write_text(text)
    print(text)
if __name__=='__main__':main()
