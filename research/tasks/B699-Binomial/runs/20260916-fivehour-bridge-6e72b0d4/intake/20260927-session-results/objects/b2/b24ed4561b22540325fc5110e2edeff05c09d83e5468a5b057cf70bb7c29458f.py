#!/usr/bin/env python3
"""Safely extract into a NEW temporary directory, verify manifests, and replay offline."""
from __future__ import annotations
import argparse, hashlib, json, os, platform, subprocess, sys, tempfile, time, zipfile
from pathlib import Path, PurePosixPath


def sha(path):return hashlib.sha256(path.read_bytes()).hexdigest()
def canonical(obj):return (json.dumps(obj,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode()


def verify_manifest(root,filename,required=True):
    p=root/filename
    if not p.exists():
        if required:raise ValueError(f'Missing manifest {filename}')
        return {'present':False,'checked':0}
    checks=[];seen=set()
    for line in p.read_text().splitlines():
        if not line.strip():continue
        expected,rel=line.split('  ',1)
        parts=PurePosixPath(rel)
        if parts.is_absolute() or '..' in parts.parts or rel in seen:raise ValueError('Unsafe or duplicate manifest path')
        seen.add(rel);f=root/rel
        if not f.is_file() or sha(f)!=expected:raise ValueError(f'Hash mismatch: {rel}')
        checks.append(rel)
    return {'present':True,'checked':len(checks),'status':'PASS'}


def replay(archive):
    start=time.monotonic();archive=archive.resolve()
    if not archive.is_file():raise ValueError('Archive does not exist')
    with tempfile.TemporaryDirectory(prefix='b699-zero-split-clean-') as temp:
        temp=Path(temp);extract=temp/'extracted';extract.mkdir()
        assert not list(extract.iterdir())
        with zipfile.ZipFile(archive) as z:
            infos=z.infolist();names=[];roots=set()
            for info in infos:
                p=PurePosixPath(info.filename)
                if p.is_absolute() or '..' in p.parts or not p.parts:raise ValueError('Unsafe archive path')
                if ((info.external_attr>>16)&0o170000)==0o120000:raise ValueError('Symlinks are not accepted')
                names.append(info.filename);roots.add(p.parts[0])
            if len(names)!=len(set(names)) or len(roots)!=1:raise ValueError('Duplicate paths or multiple archive roots')
            bad=z.testzip()
            if bad:raise ValueError(f'ZIP CRC failure: {bad}')
            z.extractall(extract)
        root=extract/next(iter(roots))
        before={p.relative_to(root).as_posix():sha(p) for p in root.rglob('*') if p.is_file()}
        payload=verify_manifest(root,'PAYLOAD_SHA256SUMS.txt')
        final=verify_manifest(root,'SHA256SUMS.txt',False)
        out=temp/'verification.json'
        env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1')
        command=[sys.executable,'-B',str(root/'scripts/verify.py'),'--output',str(out)]
        done=subprocess.run(command,cwd=root,env=env,capture_output=True,text=True,timeout=120)
        if done.returncode:raise RuntimeError(f'Verification failed: {done.stderr} {done.stdout}')
        verification=json.loads(out.read_text())
        if verification.get('status')!='PASS':raise RuntimeError('Verification did not pass')
        after={p.relative_to(root).as_posix():sha(p) for p in root.rglob('*') if p.is_file()}
        if before!=after:raise RuntimeError('Verifier modified the extracted payload')
        return dict(status='PASS',archive_name=archive.name,archive_sha256=sha(archive),
                    archive_bytes=archive.stat().st_size,archive_files=len(before),
                    fresh_empty_extraction_directory=True,zip_crc='PASS',
                    payload_manifest=payload,final_manifest=final,
                    extracted_tree_unchanged=True,offline_verification=verification,
                    python=platform.python_version(),seconds=round(time.monotonic()-start,6),
                    note='Same-author clean replay. Integrity and arithmetic checks do not establish independent mathematical review.')

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('archive',type=Path);p.add_argument('--output',type=Path);a=p.parse_args()
    try:r=replay(a.archive)
    except Exception as e:
        r={'status':'FAIL','error':f'{type(e).__name__}: {e}'}
        if a.output:a.output.write_bytes(canonical(r))
        else:sys.stdout.buffer.write(canonical(r))
        raise
    if a.output:
        a.output.parent.mkdir(parents=True,exist_ok=True);a.output.write_bytes(canonical(r))
    else:sys.stdout.buffer.write(canonical(r))
