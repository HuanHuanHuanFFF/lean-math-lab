#!/usr/bin/env python3
"""Verify member hashes, cleanly extract, and replay the immutable math payload."""
from __future__ import annotations
import argparse, datetime, hashlib, json, os, platform, subprocess, sys, tempfile, time, zipfile
from pathlib import Path, PurePosixPath

def sha(data:bytes)->str:return hashlib.sha256(data).hexdigest()
def file_hashes(root:Path)->dict:
    return {p.relative_to(root).as_posix():sha(p.read_bytes()) for p in sorted(root.rglob('*')) if p.is_file()}

def main()->None:
    ap=argparse.ArgumentParser();ap.add_argument('archive',type=Path);ap.add_argument('--receipt',type=Path,required=True)
    args=ap.parse_args();started=time.monotonic();raw=args.archive.read_bytes()
    receipt={'archive_name':args.archive.name,'archive_sha256':sha(raw),
             'checked_at_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),
             'python_version':platform.python_version(),'clean_temporary_extraction':True,
             'status':'FAIL','mathematical_scope_note':'Proof/certificate replay only; adopted old unit-window and BFT proofs are not re-proved; not Lean.'}
    try:
        with tempfile.TemporaryDirectory(prefix='b699-c-r3-replay-') as td:
            base=Path(td)
            with zipfile.ZipFile(args.archive) as z:
                names=z.namelist();assert len(names)==len(set(names)),'duplicate members'
                roots=set()
                for name in names:
                    p=PurePosixPath(name)
                    assert not p.is_absolute() and '..' not in p.parts and '\\' not in name,'unsafe member'
                    assert len(p.parts)>=2,'expected a single archive root'
                    roots.add(p.parts[0])
                    info=z.getinfo(name)
                    assert ((info.external_attr>>16)&0o170000)!=0o120000,'symlink member'
                assert len(roots)==1,'multiple archive roots'
                z.extractall(base)
            root=base/next(iter(roots));before=file_hashes(root)
            manifest={}
            for line in (root/'MANIFEST.sha256').read_text().splitlines():
                h,name=line.split('  ',1);assert name not in manifest
                assert len(h)==64 and name!='MANIFEST.sha256'
                manifest[name]=h
            assert set(before)==set(manifest)|{'MANIFEST.sha256'},'unlisted or missing members'
            for name,h in manifest.items():assert before[name]==h,f'hash mismatch {name}'
            receipt['manifest_sha256']=before['MANIFEST.sha256']
            receipt['manifest_members_checked']=len(manifest)
            receipt['member_hashes']=manifest
            env=dict(os.environ);env['PYTHONDONTWRITEBYTECODE']='1'
            command=[sys.executable,'-B',str(root/'scripts/verify.py')]
            proc=subprocess.run(command,cwd=root,env=env,capture_output=True,text=True,timeout=120)
            receipt['command']=['python','-B','scripts/verify.py']
            receipt['exit_code']=proc.returncode;receipt['stdout']=proc.stdout;receipt['stderr']=proc.stderr
            after=file_hashes(root);receipt['payload_unchanged']=before==after
            assert proc.returncode==0,'math verifier rejected payload'
            assert before==after,'read-only replay changed payload'
            summary=json.loads(proc.stdout);assert summary['status']=='PASS'
            receipt['math_summary']=summary;receipt['status']='PASS'
    except Exception as exc:
        receipt['error']=f'{type(exc).__name__}: {exc}'
    receipt['elapsed_seconds']=round(time.monotonic()-started,6)
    args.receipt.parent.mkdir(parents=True,exist_ok=True)
    args.receipt.write_text(json.dumps(receipt,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print(json.dumps({k:receipt[k] for k in ['status','archive_sha256','manifest_members_checked','exit_code','payload_unchanged','elapsed_seconds'] if k in receipt},sort_keys=True,indent=2))
    if receipt['status']!='PASS':sys.exit(1)

if __name__=='__main__':main()
