"""Clean extraction, manifests, exact verification; all outputs outside the archive tree."""
from __future__ import annotations
import argparse,hashlib,json,os,subprocess,sys,tempfile,time,zipfile
from pathlib import Path,PurePosixPath

def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def canonical(obj):return (json.dumps(obj,sort_keys=True,ensure_ascii=False,indent=2)+'\n').encode()
def tree(root):return {str(p.relative_to(root)):sha(p) for p in sorted(root.rglob('*')) if p.is_file()}
def manifest(root,name,require_complete):
    f=root/name
    if not f.exists():return None
    lines=f.read_text().splitlines();seen=set()
    for line in lines:
        hh,rel=line.split('  ',1)
        p=PurePosixPath(rel)
        if p.is_absolute() or '..' in p.parts or rel in seen:raise ValueError('unsafe/duplicate manifest entry')
        seen.add(rel);target=root/rel
        if not target.is_file() or sha(target)!=hh:raise AssertionError('hash mismatch: '+rel)
    if require_complete:
        actual=set(tree(root))-{name}
        if actual!=seen:raise AssertionError('final manifest is not complete')
    return {'manifest':name,'entries':len(seen),'status':'PASS'}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('archive',type=Path);ap.add_argument('--output',type=Path,required=True)
    args=ap.parse_args();archive=args.archive.resolve();start=time.monotonic()
    with tempfile.TemporaryDirectory(prefix='b699-m2zero-clean-') as td:
        dest=Path(td)
        with zipfile.ZipFile(archive) as z:
            names=z.namelist()
            if len(names)!=len(set(names)):raise ValueError('duplicate ZIP members')
            for info in z.infolist():
                p=PurePosixPath(info.filename)
                if p.is_absolute() or '..' in p.parts:raise ValueError('unsafe ZIP member')
                if ((info.external_attr>>16)&0o170000)==0o120000:raise ValueError('symlink not allowed')
            z.extractall(dest)
        roots=list(dest.iterdir())
        if len(roots)!=1 or not roots[0].is_dir():raise ValueError('one root directory required')
        root=roots[0];before=tree(root)
        final=manifest(root,'SHA256SUMS.txt',True)
        payload=manifest(root,'PAYLOAD_SHA256SUMS.txt',False)
        if not final and not payload:raise AssertionError('no checksum manifest')
        env=dict(os.environ);env['PYTHONDONTWRITEBYTECODE']='1';env.pop('PYTHONPATH',None)
        run=subprocess.run([sys.executable,'-B',str(root/'scripts/verify.py')],cwd=root,
                           env=env,text=True,capture_output=True,timeout=120)
        if run.returncode:raise RuntimeError(run.stderr+'\n'+run.stdout)
        verified=json.loads(run.stdout)
        if verified.get('status')!='PASS' or before!=tree(root):raise AssertionError('verification or read-only check failed')
        result={'status':'PASS','archive':archive.name,'archive_sha256':sha(archive),
                'archive_bytes':archive.stat().st_size,'zip_file_count':len(before),
                'fresh_temporary_directory':td,'temporary_directory_removed_on_return':True,
                'final_manifest':final,'payload_manifest':payload,
                'verifier_returncode':run.returncode,'verifier_result':verified,
                'evidence_tree_unchanged':True,'elapsed_seconds':round(time.monotonic()-start,6),
                'claim':'clean extraction plus same-author exact finite replay; not proof formalization'}
    args.output.resolve().write_bytes(canonical(result));sys.stdout.buffer.write(canonical(result))
if __name__=='__main__':main()
