#!/usr/bin/env python3
"""Replay only this round, no network/repository/Lean or historical replay."""
import argparse,datetime,hashlib,json,subprocess,sys,tempfile
from pathlib import Path

def check_manifest(root,filename):
    entries=[]
    for line in (root/filename).read_text().splitlines():
        h,rel=line.split('  ',1);p=(root/rel).resolve()
        if not p.is_relative_to(root.resolve()):raise ValueError('unsafe manifest path')
        actual=hashlib.sha256(p.read_bytes()).hexdigest()
        if actual!=h:raise AssertionError('hash mismatch '+rel)
        entries.append(rel)
    return {'manifest':filename,'entries_verified':len(entries),'status':'PASS'}

def run(cmd):
    x=subprocess.run(cmd,capture_output=True,text=True,timeout=120)
    if x.returncode:raise RuntimeError(f'command failed: {cmd}\n{x.stdout}\n{x.stderr}')
    return json.loads(x.stdout),x.stdout

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--receipt',type=Path,required=True);args=ap.parse_args()
    root=Path(__file__).resolve().parents[1]
    receipt={'round':'C-R5','utc_started':datetime.datetime.now(datetime.timezone.utc).isoformat(),
      'evidence_level':'author paper proof + deterministic certificates + same-author separate implementation',
      'network':False,'repository_operations':False,'Lean':False,
      'payload_manifest':check_manifest(root,'PAYLOAD.sha256')}
    with tempfile.TemporaryDirectory(prefix='b699-r5-generated-') as td:
        out=Path(td)/'certificates'
        discovery,_=run([sys.executable,str(root/'scripts/discover.py'),'--out',str(out)])
        saved=root/'certificates';names=sorted(p.name for p in saved.glob('*.json'))
        assert names==sorted(p.name for p in out.glob('*.json'))
        for name in names:
            if (out/name).read_bytes()!=(saved/name).read_bytes():raise AssertionError('regeneration mismatch '+name)
        acceptance,_=run([sys.executable,str(root/'scripts/accept.py'),'--certificates',str(out)])
        mutation,_=run([sys.executable,str(root/'scripts/mutation_test.py'),'--certificates',str(out)])
        receipt.update(status='PASS',certificates_regenerated=names,byte_identical_count=len(names),
          discovery=discovery,acceptance=acceptance,mutation_tests=mutation)
    receipt['utc_completed']=datetime.datetime.now(datetime.timezone.utc).isoformat()
    args.receipt.parent.mkdir(parents=True,exist_ok=True)
    args.receipt.write_text(json.dumps(receipt,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print(json.dumps({'status':'PASS','byte_identical_count':len(names),'mutations_rejected':mutation['mutations_rejected'],
      'payload_entries_verified':receipt['payload_manifest']['entries_verified']},sort_keys=True))
if __name__=='__main__':
    if not __debug__:raise RuntimeError('Do not disable assertions')
    main()
