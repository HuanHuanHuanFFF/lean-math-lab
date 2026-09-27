"""Extract an evidence ZIP into a new directory and run its read-only verifier."""
from pathlib import Path,PurePosixPath
import argparse,hashlib,json,os,stat,subprocess,sys,tempfile,time,zipfile

def digest(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def snap(root):return {str(p.relative_to(root)):digest(p) for p in sorted(root.rglob('*')) if p.is_file()}
def main():
    ap=argparse.ArgumentParser();ap.add_argument('archive',type=Path);ap.add_argument('--output',type=Path,required=True)
    args=ap.parse_args();archive=args.archive.resolve();t=time.perf_counter()
    with tempfile.TemporaryDirectory(prefix='b699-k3-clean-') as td:
        target=Path(td)/'extract';target.mkdir()
        with zipfile.ZipFile(archive) as z:
            assert sum(x.file_size for x in z.infolist())<100_000_000
            for x in z.infolist():
                p=PurePosixPath(x.filename)
                assert not p.is_absolute() and '..' not in p.parts and '\\' not in x.filename
                assert not stat.S_ISLNK(x.external_attr>>16)
            z.extractall(target)
        roots=[p for p in target.iterdir() if p.is_dir()];assert len(roots)==1
        root=roots[0];before=snap(root);receipt=Path(td)/'verify.json'
        env=os.environ.copy();env['PYTHONDONTWRITEBYTECODE']='1'
        command=[sys.executable,'-B',str(root/'scripts/verify.py'),'--output',str(receipt)]
        run=subprocess.run(command,text=True,capture_output=True,env=env,timeout=180)
        if run.returncode:raise RuntimeError(run.stdout+'\n'+run.stderr)
        verification=json.loads(receipt.read_text());after=snap(root)
        assert verification['status']=='PASS' and before==after
        result={'status':'PASS','archive':archive.name,'archive_sha256':digest(archive),
          'clean_temporary_extraction':True,'extracted_file_count':len(before),'tree_unchanged':True,
          'verification':verification,'elapsed_seconds':time.perf_counter()-t,
          'command_shape':'python -B <new-extract>/scripts/verify.py --output <outside-tree>/verify.json',
          'stdout':run.stdout.strip(),'stderr':run.stderr.strip()}
    out=args.output.resolve();out.parent.mkdir(parents=True,exist_ok=True)
    out.write_text(json.dumps(result,indent=2)+'\n');print(json.dumps(result))
if __name__=='__main__':main()
