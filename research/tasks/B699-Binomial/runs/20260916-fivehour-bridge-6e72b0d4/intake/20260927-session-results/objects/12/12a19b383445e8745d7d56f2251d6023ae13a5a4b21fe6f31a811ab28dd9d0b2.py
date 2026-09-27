#!/usr/bin/env python3
"""Verify frozen bytes, regenerate new certificates away from the payload, receive them."""
from __future__ import annotations
import argparse,datetime,hashlib,json,platform,subprocess,sys,tempfile
from pathlib import Path

def sha(p:Path)->str:return hashlib.sha256(p.read_bytes()).hexdigest()

def verify(root:Path,manifest:Path)->dict:
    records=[]
    for line in manifest.read_text().splitlines():
        digest,relative=line.split('  ',1)
        p=(root/relative).resolve()
        if not p.is_relative_to(root) or not p.is_file():raise ValueError('invalid manifest path '+relative)
        actual=sha(p)
        if actual!=digest:raise ValueError('hash mismatch '+relative)
        records.append({'path':relative,'sha256':actual})
    return {'name':manifest.name,'sha256':sha(manifest),'files_checked':len(records),'status':'PASS'}

def run(args:list[str])->dict:
    p=subprocess.run(args,capture_output=True,text=True)
    if p.returncode:raise RuntimeError('command failed: '+str(args)+'\n'+p.stdout+'\n'+p.stderr)
    return {'argv':args,'returncode':p.returncode,'stdout':p.stdout,'stderr':p.stderr}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--receipt',type=Path,required=True)
    ap.add_argument('--manifest',choices=['auto','payload','full'],default='auto');ap.add_argument('--zip',type=Path)
    args=ap.parse_args();root=Path(__file__).resolve().parents[1]
    receipt_path=args.receipt.resolve()
    if receipt_path.is_relative_to(root):raise ValueError('write replay receipts outside the frozen payload')
    mf='SHA256SUMS' if args.manifest=='full' or (args.manifest=='auto' and (root/'SHA256SUMS').exists()) else 'PAYLOAD.sha256'
    manifest_info=verify(root,root/mf)
    with tempfile.TemporaryDirectory(prefix='b699_r3_rebuild_') as td:
        rebuilt=Path(td)/'certificates'
        discovery=run([sys.executable,str(root/'scripts/discover.py'),'--out',str(rebuilt)])
        old={p.name for p in (root/'certificates').glob('*.json')};new={p.name for p in rebuilt.glob('*.json')}
        if old!=new:raise ValueError('certificate filename mismatch')
        comparison=[]
        for name in sorted(old):
            a=sha(root/'certificates'/name);b=sha(rebuilt/name)
            if a!=b:raise ValueError('regeneration mismatch '+name)
            comparison.append({'path':name,'sha256':a,'byte_equal':True})
        receiving=run([sys.executable,str(root/'scripts/accept.py'),'--certificates',str(rebuilt)])
        mutations=run([sys.executable,str(root/'scripts/mutation_test.py'),'--certificates',str(rebuilt)])
    receipt={'status':'PASS','created_at_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),
        'python':platform.python_version(),'root':str(root),'manifest':manifest_info,
        'certificate_files_regenerated':len(comparison),'all_certificate_bytes_equal':True,
        'comparison':comparison,'discovery':discovery,'receiving':receiving,'mutation_tests':mutations,
        'previous_round_mathematics_replayed':False,'repository_operations':False,'Lean':False,
        'interpretation':'Reproducible same-author execution and exact receiving checks; not independent mathematical peer review.'}
    if args.zip:
        z=args.zip.resolve();receipt['final_zip']={'path':str(z),'sha256':sha(z),'bytes':z.stat().st_size}
    receipt_path.parent.mkdir(parents=True,exist_ok=True)
    receipt_path.write_text(json.dumps(receipt,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print(json.dumps({'status':'PASS','manifest':manifest_info,'certificate_files_regenerated':len(comparison),
        'all_certificate_bytes_equal':True,'mutation_tests':json.loads(mutations['stdout'])['mutations_rejected'],
        'receipt_path':str(receipt_path)},ensure_ascii=False,indent=2))
if __name__=='__main__':main()
