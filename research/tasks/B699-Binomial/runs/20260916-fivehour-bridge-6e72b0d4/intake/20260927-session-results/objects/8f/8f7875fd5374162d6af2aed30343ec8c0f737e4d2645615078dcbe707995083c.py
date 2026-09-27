#!/usr/bin/env python3
"""Extract a zip into a new empty temporary directory; verify and check immutability."""
import argparse,hashlib,json,os,stat,subprocess,sys,tempfile,time,zipfile
from pathlib import Path,PurePosixPath

def digest(path):
    h=hashlib.sha256()
    with path.open('rb') as f:
        for b in iter(lambda:f.read(1024*1024),b''):h.update(b)
    return h.hexdigest()

def snapshot(root):return {str(p.relative_to(root)):digest(p) for p in sorted(root.rglob('*')) if p.is_file()}

def main():
    ap=argparse.ArgumentParser(description=__doc__);ap.add_argument('archive',type=Path)
    ap.add_argument('--output',type=Path,required=True);ap.add_argument('--payload-only',action='store_true')
    args=ap.parse_args();arc=args.archive.resolve();out=args.output.resolve();start=time.perf_counter()
    with tempfile.TemporaryDirectory(prefix='k6-clean-extract-') as td:
        td=Path(td);target=td/'extracted';target.mkdir()
        with zipfile.ZipFile(arc) as z:
            names=set()
            for m in z.infolist():
                pp=PurePosixPath(m.filename)
                assert not pp.is_absolute() and '..' not in pp.parts and '\\' not in m.filename
                assert m.filename not in names;names.add(m.filename)
                assert not stat.S_ISLNK(m.external_attr>>16)
                assert (target/m.filename).resolve().is_relative_to(target)
            z.extractall(target)
        tops=list(target.iterdir());assert len(tops)==1 and tops[0].is_dir()
        root=tops[0];before=snapshot(root)
        assert not out.is_relative_to(root)
        receipt=td/'verifier-result.json'
        cmd=[sys.executable,'-B',str(root/'scripts'/'verify.py'),'--output',str(receipt),
             '--mode','payload' if args.payload_only else 'final']
        env=os.environ.copy();env['PYTHONDONTWRITEBYTECODE']='1'
        p=subprocess.run(cmd,text=True,capture_output=True,env=env,timeout=180)
        if p.returncode:
            raise RuntimeError('Verification failed:\n'+p.stdout+'\n'+p.stderr)
        verified=json.loads(receipt.read_text());after=snapshot(root)
        assert before==after and verified['status']=='PASS'
        result={'status':'PASS','archive':arc.name,'archive_sha256':digest(arc),'bytes':arc.stat().st_size,
                'mode':'payload-stage' if args.payload_only else 'final-archive',
                'fresh_empty_extraction':True,'file_count':len(before),
                'tree_sha256':hashlib.sha256(json.dumps(before,sort_keys=True,separators=(',',':')).encode()).hexdigest(),
                'extracted_tree_unchanged':True,'verifier':verified,
                'elapsed_seconds':time.perf_counter()-start,
                'scope':'same-author clean replay, not external review or Lean'}
    out.parent.mkdir(parents=True,exist_ok=True);out.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(result,indent=2))
if __name__=='__main__':main()
