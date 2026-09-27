"""Fresh extraction + read-only exact receiver, with before/after tree checks."""
from __future__ import annotations
import argparse,hashlib,json,os,stat,subprocess,sys,tempfile,zipfile
from pathlib import Path

def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def snapshot(root):return {p.relative_to(root).as_posix():sha(p) for p in root.rglob('*') if p.is_file()}
def run(archive,output):
    archive=archive.resolve()
    with tempfile.TemporaryDirectory(prefix='b699-m1-clean-') as td:
        td=Path(td);ex=td/'extracted';ex.mkdir()
        with zipfile.ZipFile(archive) as z:
            for info in z.infolist():
                p=ex/info.filename
                if not p.resolve().is_relative_to(ex.resolve()):raise ValueError('unsafe ZIP path')
                if stat.S_ISLNK(info.external_attr>>16):raise ValueError('symlinks forbidden')
            assert z.testzip() is None
            z.extractall(ex)
        roots=list(ex.iterdir());assert len(roots)==1 and roots[0].is_dir()
        root=roots[0];before=snapshot(root);resultfile=td/'verify.json'
        env=os.environ.copy();env['PYTHONDONTWRITEBYTECODE']='1'
        cmd=[sys.executable,'-B',str(root/'scripts'/'verify.py'),'--output',str(resultfile)]
        cp=subprocess.run(cmd,env=env,stdout=subprocess.PIPE,stderr=subprocess.PIPE,text=True,timeout=120)
        if cp.returncode:raise RuntimeError(cp.stdout+'\n'+cp.stderr)
        after=snapshot(root);assert before==after,'verification changed extraction tree'
        verify=json.loads(resultfile.read_text());assert verify['status']=='PASS'
        receipt=dict(status='PASS',archive_name=archive.name,archive_sha256=sha(archive),
          archive_bytes=archive.stat().st_size,extracted_files=len(before),fresh_directory=True,
          same_tree_before_after=True,verification=verify,stdout=cp.stdout,stderr=cp.stderr,
          note='Same-author computational replay; not an external mathematical review or Lean.')
        if output:
            output.resolve().parent.mkdir(parents=True,exist_ok=True)
            output.write_text(json.dumps(receipt,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
        print(json.dumps({k:v for k,v in receipt.items() if k not in ('stdout','stderr')},ensure_ascii=False,indent=2))
        return receipt
if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('archive',type=Path);ap.add_argument('--output',type=Path)
    a=ap.parse_args();run(a.archive,a.output)
