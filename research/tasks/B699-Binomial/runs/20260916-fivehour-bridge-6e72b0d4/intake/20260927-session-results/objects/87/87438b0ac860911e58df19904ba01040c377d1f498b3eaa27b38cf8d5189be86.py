#!/usr/bin/env python3
"""Bind a fresh extraction/replay receipt to the exact final ZIP bytes."""
from __future__ import annotations
import argparse, hashlib, json, os, subprocess, sys, tempfile, zipfile
from pathlib import Path

def digest(p:Path)->str:return hashlib.sha256(p.read_bytes()).hexdigest()

def main()->None:
    p=argparse.ArgumentParser();p.add_argument('zip',type=Path);p.add_argument('--receipt',type=Path,required=True);a=p.parse_args()
    archive=a.zip.resolve();commands=[]
    with tempfile.TemporaryDirectory(prefix='r10_final_zip_') as td:
        dest=Path(td)
        with zipfile.ZipFile(archive) as z:
            names=z.namelist()
            for name in names:
                path=(dest/name).resolve()
                if not path.is_relative_to(dest) or name.startswith('/'):raise ValueError('unsafe zip entry')
            z.extractall(dest)
        dirs=[x for x in dest.iterdir() if x.is_dir()]
        if len(dirs)!=1:raise ValueError('expected one root directory')
        root=dirs[0];manifest={}
        for line in (root/'SHA256SUMS').read_text().splitlines():
            expected,rel=line.split(None,1);rel=rel.strip().lstrip('*')
            if digest(root/rel)!=expected:raise ValueError('final member mismatch: '+rel)
            manifest[rel]=expected
        actual={str(x.relative_to(root)) for x in root.rglob('*') if x.is_file()}
        if actual!=set(manifest)|{'SHA256SUMS'}:raise ValueError('unlisted final members')
        output=dest/'fresh_replay.json'
        env=os.environ.copy();env['PYTHONDONTWRITEBYTECODE']='1';env['PYTHONHASHSEED']='0'
        cp=subprocess.run([sys.executable,'scripts/replay.py','--receipt',str(output)],
                          cwd=root,env=env,text=True,capture_output=True,timeout=90)
        if cp.returncode:raise RuntimeError(cp.stdout+cp.stderr)
        replay=json.loads(output.read_text());assert replay['status']=='PASS'
        receipt={'status':'PASS','zip_name':archive.name,'zip_sha256':digest(archive),
                 'zip_bytes':archive.stat().st_size,'final_file_count':len(actual),
                 'final_manifest_files_verified':len(manifest),
                 'fresh_extraction':True,'fresh_replay':replay,
                 'stdout':cp.stdout,'stderr':cp.stderr,
                 'scope':'final archive integrity + fresh arithmetic replay; not external mathematical review'}
    a.receipt.parent.mkdir(parents=True,exist_ok=True)
    a.receipt.write_text(json.dumps(receipt,indent=2,ensure_ascii=False,sort_keys=True)+'\n')
    print(json.dumps({k:receipt[k] for k in ['status','zip_sha256','zip_bytes','final_file_count','final_manifest_files_verified']}))
if __name__=='__main__':main()
