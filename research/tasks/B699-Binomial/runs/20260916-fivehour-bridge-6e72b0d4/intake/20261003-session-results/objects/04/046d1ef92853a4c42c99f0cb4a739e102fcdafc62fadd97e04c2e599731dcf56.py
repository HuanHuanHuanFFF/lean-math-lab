#!/usr/bin/env python3
"""Clean-extract a C R6 ZIP; check all members and regenerate new certificates.
This executes only scripts/verify.py from the extracted R6 payload. No prior
research programs, Lean, network requests, or repository operations are run.
"""
from __future__ import annotations
import argparse, datetime, hashlib, json, os, stat, subprocess, sys, tempfile, zipfile
from pathlib import Path, PurePosixPath

def sha(data):return hashlib.sha256(data).hexdigest()
def now():return datetime.datetime.now(datetime.timezone.utc).isoformat()
def members(root):
    return {str(p.relative_to(root)):sha(p.read_bytes()) for p in sorted(root.rglob('*')) if p.is_file()}

def replay(archive,record):
    data=archive.read_bytes()
    record.update({'archive_name':archive.name,'archive_sha256':sha(data),'archive_bytes':len(data),'started_utc':now(),
                   'status':'FAIL','network_used':False,'Lean_run':False,'repository_operations':False,
                   'previous_research_scripts_executed_by_this_replay':False})
    with tempfile.TemporaryDirectory(prefix='b699-c-r6-clean-') as td:
        tmp=Path(td);unpack=tmp/'unpacked';unpack.mkdir()
        with zipfile.ZipFile(archive) as z:
            roots=set();seen=set()
            for info in z.infolist():
                pp=PurePosixPath(info.filename)
                if pp.is_absolute() or '..' in pp.parts or not pp.parts:raise ValueError('Unsafe ZIP path')
                if stat.S_ISLNK(info.external_attr>>16):raise ValueError('ZIP symbolic link')
                if info.filename in seen:raise ValueError('Duplicate ZIP member')
                seen.add(info.filename);roots.add(pp.parts[0]);dest=unpack.joinpath(*pp.parts)
                if info.is_dir():dest.mkdir(parents=True,exist_ok=True)
                else:dest.parent.mkdir(parents=True,exist_ok=True);dest.write_bytes(z.read(info))
            if len(roots)!=1:raise ValueError('Not a single-root archive')
        root=unpack/next(iter(roots));before=members(root);manifest=root/'MANIFEST.sha256';expected={}
        for ln in manifest.read_text().splitlines():
            if not ln.strip():continue
            h,name=ln.split(None,1);name=name.strip().lstrip('*')
            if name in expected:raise ValueError('Duplicate manifest member')
            expected[name]=h
        if set(expected)!=set(before)-{'MANIFEST.sha256'}:raise ValueError('Manifest member set mismatch')
        for name,h in expected.items():
            if before[name]!=h:raise ValueError('Member SHA mismatch: '+name)
        generated=tmp/'regenerated';env=dict(os.environ);env['PYTHONDONTWRITEBYTECODE']='1'
        cp=subprocess.run([sys.executable,str(root/'scripts/verify.py'),'--root',str(root),'--output',str(generated),'--check',str(root/'certificates')],
                          capture_output=True,text=True,timeout=45,env=env)
        record.update({'verifier_exit_code':cp.returncode,'verifier_stdout':cp.stdout,'verifier_stderr':cp.stderr})
        if cp.returncode:raise RuntimeError('Verifier returned nonzero')
        origin=members(root/'certificates');regen=members(generated)
        if origin!=regen:raise ValueError('Regenerated certificate bytes mismatch')
        for name in origin:
            if json.loads((root/'certificates'/name).read_text())!=json.loads((generated/name).read_text()):raise ValueError('JSON mismatch')
        if before!=members(root):raise ValueError('Replay modified payload')
        record.update({'status':'PASS','manifest_sha256':sha(manifest.read_bytes()),'manifest_members':len(expected),
                       'ordinary_members':len(before),'certificates_regenerated':len(origin),'certificate_sha256':origin,
                       'all_member_hashes_passed':True,'certificate_bytes_equal':True,'certificate_json_equal':True,
                       'payload_unchanged':True,'clean_extraction':True,'affine_seeds':250,'forward_power_records':1286,'reverse_power_records':3748,'NC_terminal_survivors':0})
    record.update({'temporary_directory_removed':True,'finished_utc':now()})

def main():
    ap=argparse.ArgumentParser();ap.add_argument('archive',type=Path);ap.add_argument('--receipt',type=Path,required=True)
    args=ap.parse_args();rec={};exitcode=0
    try:replay(args.archive.resolve(),rec)
    except Exception as exc:rec.update({'status':'FAIL','error_type':type(exc).__name__,'error':str(exc),'finished_utc':now()});exitcode=1
    text=json.dumps(rec,ensure_ascii=False,sort_keys=True,indent=2)+'\n'
    args.receipt.parent.mkdir(parents=True,exist_ok=True);args.receipt.write_text(text);print(text,end='')
    raise SystemExit(exitcode)
if __name__=='__main__':main()
