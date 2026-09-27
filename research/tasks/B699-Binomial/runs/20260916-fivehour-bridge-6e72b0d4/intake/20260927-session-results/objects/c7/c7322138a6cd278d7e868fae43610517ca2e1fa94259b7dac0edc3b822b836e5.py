#!/usr/bin/env python3
"""Safely extract an evidence ZIP into a NEW empty temporary directory and verify it."""
from pathlib import Path
import argparse,hashlib,json,os,subprocess,sys,tempfile,zipfile

def main():
    ap=argparse.ArgumentParser()
    ap.add_argument('archive',type=Path);ap.add_argument('--output',type=Path,required=True)
    ap.add_argument('--scope',default='final_zip')
    args=ap.parse_args();archive=args.archive.resolve()
    archive_hash=hashlib.sha256(archive.read_bytes()).hexdigest()
    with tempfile.TemporaryDirectory(prefix='b699-carry2-clean-') as td:
        base=Path(td).resolve()
        assert not list(base.iterdir())
        with zipfile.ZipFile(archive) as z:
            names=z.namelist()
            for name in names:
                target=(base/name).resolve()
                if not target.is_relative_to(base):raise ValueError('Unsafe ZIP path')
            z.extractall(base)
        roots=[p for p in base.iterdir() if p.is_dir()]
        if len(roots)!=1:raise ValueError('Expected exactly one archive root')
        root=roots[0]
        env=os.environ.copy();env['PYTHONDONTWRITEBYTECODE']='1'
        proc=subprocess.run([sys.executable,'-B',str(root/'scripts/verify.py')],
                            cwd=root,env=env,capture_output=True,text=True,check=False)
        if proc.returncode:
            raise RuntimeError(proc.stdout+'\n'+proc.stderr)
        verified=json.loads(proc.stdout)
        assert verified['status']=='PASS'
        receipt=dict(status='PASS',scope=args.scope,archive_name=archive.name,
                     archive_sha256=archive_hash,archive_size_bytes=archive.stat().st_size,
                     extracted_files=sum(1 for n in names if not n.endswith('/')),
                     fresh_empty_directory_confirmed=True,temporary_directory_removed_on_exit=True,
                     verification_returncode=proc.returncode,verification=verified,
                     stdout_sha256=hashlib.sha256(proc.stdout.encode()).hexdigest(),
                     independent_review=False)
    args.output.write_text(json.dumps(receipt,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print(json.dumps(dict(status='PASS',scope=args.scope,files=receipt['extracted_files'],
                         archive_sha256=archive_hash),sort_keys=True))

if __name__=='__main__':main()
