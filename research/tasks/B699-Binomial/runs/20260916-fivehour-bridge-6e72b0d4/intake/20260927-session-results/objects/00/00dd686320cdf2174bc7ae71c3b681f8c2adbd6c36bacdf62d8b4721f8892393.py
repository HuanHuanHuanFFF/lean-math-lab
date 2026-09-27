"""Clean-extract the actual ZIP and run its own read-only verifier."""
from __future__ import annotations
import argparse,hashlib,json,os,subprocess,sys,tempfile,time,zipfile
from pathlib import Path,PurePosixPath

def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def snapshot(root):return {p.relative_to(root).as_posix():sha(p) for p in root.rglob('*') if p.is_file()}
def main():
    pa=argparse.ArgumentParser();pa.add_argument('archive');pa.add_argument('--output',required=True);pa.add_argument('--payload-only',action='store_true');args=pa.parse_args()
    archive=Path(args.archive).resolve();output=Path(args.output).resolve();start=time.perf_counter()
    if not archive.is_file():raise SystemExit('archive not found')
    with tempfile.TemporaryDirectory(prefix='b699-k5-clean-') as tmp:
        tmp=Path(tmp);extract=tmp/'extracted';extract.mkdir()
        with zipfile.ZipFile(archive) as z:
            names=z.namelist()
            if len(set(names))!=len(names):raise ValueError('duplicate members')
            if any(PurePosixPath(n).is_absolute() or '..' in PurePosixPath(n).parts for n in names):raise ValueError('unsafe member')
            roots={PurePosixPath(n).parts[0] for n in names};assert len(roots)==1
            for info in z.infolist():
                if (info.external_attr>>16)&0o170000==0o120000:raise ValueError('symlinks not accepted')
            z.extractall(extract)
        root=extract/next(iter(roots));before=snapshot(root)
        receipt=tmp/'verifier.json';cmd=[sys.executable,'-B',str(root/'scripts/verify.py'),'--output',str(receipt)]
        if args.payload_only:cmd+=['--payload-only']
        env=dict(os.environ);env['PYTHONDONTWRITEBYTECODE']='1'
        run=subprocess.run(cmd,check=False,capture_output=True,text=True,env=env,timeout=120)
        if run.returncode:
            raise RuntimeError('Verifier failed:\n'+run.stdout+'\n'+run.stderr)
        verification=json.loads(receipt.read_text());after=snapshot(root)
        assert before==after and verification['status']=='PASS'
        report={'status':'PASS','archive_name':archive.name,'archive_sha256':sha(archive),
                'payload_only_archive':args.payload_only,'clean_temporary_directory':True,
                'archive_file_count':len(before),'tree_unchanged':True,
                'tree_listing_sha256':hashlib.sha256(json.dumps(before,sort_keys=True).encode()).hexdigest(),
                'verification':verification,'elapsed_seconds':time.perf_counter()-start,
                'scope_note':'Executed this ZIP after fresh extraction; does not rerun or certify all historical mathematics.'}
        output.write_text(json.dumps(report,ensure_ascii=False,indent=2,sort_keys=True)+'\n')
        print(json.dumps(report,ensure_ascii=False,indent=2))
if __name__=='__main__':main()
