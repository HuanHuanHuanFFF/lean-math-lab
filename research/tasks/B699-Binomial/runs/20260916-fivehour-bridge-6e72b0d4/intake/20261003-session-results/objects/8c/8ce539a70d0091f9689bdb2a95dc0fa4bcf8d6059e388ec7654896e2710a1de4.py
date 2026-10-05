#!/usr/bin/env python3
"""Clean extraction, full-member hash audit, deterministic certificate replay.
Only the new R4 verification script is executed. No network, Lean, or repository.
"""
from __future__ import annotations
import argparse, datetime, hashlib, json, os, stat, subprocess, sys, tempfile, zipfile
from pathlib import Path, PurePosixPath


def sha(data):return hashlib.sha256(data).hexdigest()

def members(root):
    return {str(p.relative_to(root)):sha(p.read_bytes()) for p in sorted(root.rglob('*')) if p.is_file()}

def replay(archive:Path):
    data=archive.read_bytes()
    rec={'archive_name':archive.name,'archive_sha256':sha(data),'archive_bytes':len(data),
         'started_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),
         'status':'FAIL','network_used':False,'Lean_run':False,'repository_modified':False}
    with tempfile.TemporaryDirectory(prefix='b699-r4-clean-') as td:
        tmp=Path(td);unpack=tmp/'unpacked';unpack.mkdir()
        with zipfile.ZipFile(archive) as z:
            roots=set()
            for info in z.infolist():
                pp=PurePosixPath(info.filename)
                if pp.is_absolute() or '..' in pp.parts or not pp.parts:
                    raise ValueError('Unsafe ZIP path')
                if stat.S_ISLNK(info.external_attr>>16):
                    raise ValueError('ZIP symlink is not accepted')
                roots.add(pp.parts[0]);dest=unpack.joinpath(*pp.parts)
                if info.is_dir():dest.mkdir(parents=True,exist_ok=True)
                else:
                    dest.parent.mkdir(parents=True,exist_ok=True);dest.write_bytes(z.read(info))
            if len(roots)!=1:raise ValueError('Expected exactly one archive root')
        root=unpack/next(iter(roots));before=members(root)
        manifest=root/'MANIFEST.sha256';expected={}
        for ln in manifest.read_text().splitlines():
            if not ln.strip():continue
            h,name=ln.split(None,1);name=name.strip().lstrip('*')
            if name in expected:raise ValueError('Duplicate manifest name')
            expected[name]=h
        if set(expected)!=set(before)-{'MANIFEST.sha256'}:
            raise ValueError('Manifest membership mismatch')
        for name,h in expected.items():
            if before[name]!=h:raise ValueError('Member SHA mismatch: '+name)
        generated=tmp/'regenerated'
        cmd=[sys.executable,str(root/'scripts/verify.py'),'--root',str(root),
             '--output',str(generated),'--check',str(root/'certificates')]
        env=dict(os.environ);env['PYTHONDONTWRITEBYTECODE']='1'
        cp=subprocess.run(cmd,capture_output=True,text=True,timeout=45,env=env)
        rec['verifier_exit_code']=cp.returncode;rec['verifier_stdout']=cp.stdout;rec['verifier_stderr']=cp.stderr
        if cp.returncode!=0:raise RuntimeError('R4 verifier failed: '+cp.stderr)
        regenerated=members(generated)
        original=members(root/'certificates')
        if regenerated!=original:raise ValueError('Regenerated certificate bytes differ')
        for name in original:
            if json.loads((generated/name).read_text())!=json.loads((root/'certificates'/name).read_text()):
                raise ValueError('Regenerated certificate JSON differs')
        after=members(root)
        if before!=after:raise ValueError('Read-only replay changed payload bytes')
        rec.update({'status':'PASS','manifest_sha256':sha(manifest.read_bytes()),
                    'manifest_members':len(expected),'total_ordinary_members':len(before),
                    'certificates_regenerated':len(original),'certificate_sha256':original,
                    'all_member_hashes_passed':True,'certificate_json_equal':True,
                    'certificate_bytes_equal':True,'payload_unchanged':True,
                    'old_scripts_executed':False,'clean_extraction':True,
                    'finished_utc':datetime.datetime.now(datetime.timezone.utc).isoformat()})
    rec['temporary_directory_removed']=True
    return rec


def main():
    ap=argparse.ArgumentParser();ap.add_argument('archive',type=Path);ap.add_argument('--receipt',type=Path)
    args=ap.parse_args();result=replay(args.archive.resolve())
    text=json.dumps(result,ensure_ascii=False,sort_keys=True,indent=2)+'\n'
    if args.receipt:
        args.receipt.parent.mkdir(parents=True,exist_ok=True);args.receipt.write_text(text)
    print(text,end='')

if __name__=='__main__':main()
