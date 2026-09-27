#!/usr/bin/env python3
"""Actually extract to an empty temporary directory and run that copy's replay."""
import argparse,datetime,hashlib,json,subprocess,sys,tempfile,zipfile
from pathlib import Path

def main():
    ap=argparse.ArgumentParser();ap.add_argument('archive',type=Path);ap.add_argument('--receipt',type=Path,required=True)
    ap.add_argument('--mode',choices=('payload','final'),default='final');args=ap.parse_args()
    blob=args.archive.read_bytes();sha=hashlib.sha256(blob).hexdigest()
    result={'archive_name':args.archive.name,'archive_sha256':sha,'archive_bytes':len(blob),
      'utc_started':datetime.datetime.now(datetime.timezone.utc).isoformat(),'clean_extraction':True,
      'mode':args.mode,'external_independent_review':False}
    with tempfile.TemporaryDirectory(prefix='b699-r5-clean-') as td:
        dest=Path(td);assert not list(dest.iterdir())
        with zipfile.ZipFile(args.archive) as z:
            members=z.namelist()
            for s in members:
                if not (dest/s).resolve().is_relative_to(dest.resolve()):raise ValueError('unsafe zip member')
            if z.testzip() is not None:raise AssertionError('zip CRC failure')
            z.extractall(dest)
        roots=list(dest.iterdir());assert len(roots)==1 and roots[0].is_dir();root=roots[0]
        manifest='SHA256SUMS' if args.mode=='final' else 'PAYLOAD.sha256';checked=[]
        for line in (root/manifest).read_text().splitlines():
            h,rel=line.split('  ',1);p=(root/rel).resolve()
            if not p.is_relative_to(root.resolve()):raise ValueError('unsafe manifest member')
            assert hashlib.sha256(p.read_bytes()).hexdigest()==h,rel
            checked.append(rel)
        rp=dest/'INNER_REPLAY.json'
        proc=subprocess.run([sys.executable,str(root/'scripts/replay.py'),'--receipt',str(rp)],capture_output=True,text=True,timeout=120)
        if proc.returncode:raise RuntimeError(proc.stdout+'\n'+proc.stderr)
        inner=json.loads(rp.read_text())
        assert inner['status']=='PASS'
        result.update(status='PASS',archive_members=len(members),manifest=manifest,
          manifest_entries_verified=len(checked),replay=inner,
          replay_stdout=proc.stdout,replay_stderr=proc.stderr,
          extracted_tree_was_separate_from_working_tree=True)
    result['temporary_extraction_removed']=True
    result['utc_completed']=datetime.datetime.now(datetime.timezone.utc).isoformat()
    args.receipt.parent.mkdir(parents=True,exist_ok=True)
    args.receipt.write_text(json.dumps(result,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print(json.dumps({'status':'PASS','archive_sha256':sha,'archive_members':len(members),
      'manifest_entries_verified':len(checked),'certificates_regenerated':inner['byte_identical_count'],
      'mutations_rejected':inner['mutation_tests']['mutations_rejected']},sort_keys=True))
if __name__=='__main__':main()
