#!/usr/bin/env python3
"""Clean extraction, exact manifest verification, then read-only certificate replay."""
from __future__ import annotations
import argparse
from datetime import datetime, timezone
import hashlib
import json
from pathlib import Path, PurePosixPath
import stat
import subprocess
import sys
import tempfile
import time
import zipfile


def sha(path:Path)->str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def replay(archive:Path)->dict:
    started=time.monotonic()
    archive=archive.resolve(strict=True)
    result={'archive_name':archive.name,'archive_sha256':sha(archive),
            'archive_bytes':archive.stat().st_size,
            'replay_started_utc':datetime.now(timezone.utc).isoformat(),
            'python_version':sys.version.split()[0],
            'clean_extraction':True,'network_used_by_replay':False,'Lean_run':False}
    with tempfile.TemporaryDirectory(prefix='b699-c-r2-replay-') as tmp:
        work=Path(tmp)
        with zipfile.ZipFile(archive) as zf:
            seen=set();roots=set()
            for info in zf.infolist():
                path=PurePosixPath(info.filename)
                if path.is_absolute() or '..' in path.parts or not path.parts:
                    raise ValueError('Unsafe archive path: '+info.filename)
                if info.filename in seen:
                    raise ValueError('Duplicate archive member: '+info.filename)
                seen.add(info.filename);roots.add(path.parts[0])
                if stat.S_ISLNK(info.external_attr>>16):
                    raise ValueError('Symbolic links are not allowed')
            if len(roots)!=1:raise ValueError('Expected one archive root')
            zf.extractall(work)
        root=work/next(iter(roots))
        manifest=root/'MANIFEST.sha256'
        expected={}
        for line in manifest.read_text(encoding='utf-8').splitlines():
            digest,rel=line.split('  ',1)
            p=PurePosixPath(rel)
            if p.is_absolute() or '..' in p.parts or rel in expected:
                raise ValueError('Unsafe/duplicate manifest entry')
            expected[rel]=digest
        actual={p.relative_to(root).as_posix() for p in root.rglob('*') if p.is_file()}
        if actual != set(expected)|{'MANIFEST.sha256'}:
            raise AssertionError('Manifest file set mismatch')
        for rel,digest in expected.items():
            if sha(root/rel)!=digest:raise AssertionError('Hash mismatch: '+rel)
        result['manifest_files_verified']=len(expected)
        result['manifest_sha256']=sha(manifest)
        proc=subprocess.run([sys.executable,str(root/'scripts/verify.py')],cwd=root,
            text=True,stdout=subprocess.PIPE,stderr=subprocess.PIPE,timeout=120,check=False)
        result['verification_exit_code']=proc.returncode
        result['verification_stderr']=proc.stderr
        if proc.returncode:
            result['verification_stdout']=proc.stdout
            raise RuntimeError(json.dumps(result,ensure_ascii=False,indent=2))
        result['verification']=json.loads(proc.stdout)
        if result['verification']['status']!='PASS':raise AssertionError('Verification not PASS')
        # Check that replay did not alter any archive file.
        for rel,digest in expected.items():
            if sha(root/rel)!=digest:raise AssertionError('Replay modified file: '+rel)
        result['payload_unchanged_after_replay']=True
    result['elapsed_seconds']=round(time.monotonic()-started,6)
    result['status']='PASS'
    return result


def main():
    p=argparse.ArgumentParser()
    p.add_argument('archive',type=Path)
    p.add_argument('--receipt',type=Path)
    args=p.parse_args()
    result=replay(args.archive)
    raw=json.dumps(result,ensure_ascii=False,sort_keys=True,indent=2)+'\n'
    if args.receipt:
        args.receipt.parent.mkdir(parents=True,exist_ok=True)
        args.receipt.write_text(raw,encoding='utf-8')
    print(raw,end='')

if __name__=='__main__':main()
