#!/usr/bin/env python3
"""Extract a ZIP into a NEW directory, replay it fully, and write an honest receipt.
Python stdlib plus dependencies documented by the package. No network/Lean/git.
The output directory must not preexist. Failures are recorded, never called PASS.
"""
from __future__ import annotations
import argparse, datetime, hashlib, json, os, platform, stat, subprocess, sys, time, zipfile
from pathlib import Path, PurePosixPath

def sha(path:Path)->str:
    h=hashlib.sha256()
    with path.open('rb') as f:
        for chunk in iter(lambda:f.read(1024*1024),b''):h.update(chunk)
    return h.hexdigest()

def main()->int:
    ap=argparse.ArgumentParser()
    ap.add_argument('--archive',type=Path,required=True)
    ap.add_argument('--work',type=Path,required=True)
    ap.add_argument('--receipt',type=Path,required=True)
    ap.add_argument('--label',default='clean-replay')
    a=ap.parse_args(); archive=a.archive.resolve(); work=a.work.resolve(); receipt=a.receipt.resolve()
    if work.exists():raise FileExistsError('Must use a new directory: '+str(work))
    if not archive.is_file():raise FileNotFoundError(archive)
    work.mkdir(parents=True);(work/'logs').mkdir();unpack=work/'unpacked';unpack.mkdir()
    started=datetime.datetime.now(datetime.timezone.utc).isoformat();t=time.monotonic()
    rec={'status':'RUNNING','label':a.label,'started_utc':started,'archive_path':str(archive),'archive_sha256':sha(archive),'archive_bytes':archive.stat().st_size,'working_directory':str(work),'python':sys.version,'platform':platform.platform(),'steps':[],'network_required':False,'Lean':False,'repository_operations':False,'external_independent_review':False}
    def write():
        receipt.parent.mkdir(parents=True,exist_ok=True)
        receipt.write_text(json.dumps(rec,ensure_ascii=False,indent=2)+'\n')
    def step(name,cmd):
        print('START',name,flush=True);st=time.monotonic()
        env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1')
        p=subprocess.run(list(map(str,cmd)),cwd=work,capture_output=True,text=True,env=env)
        log=work/'logs'/(name+'.log');log.write_text(p.stdout+p.stderr)
        rec['steps'].append({'name':name,'command':list(map(str,cmd)),'exit_code':p.returncode,'elapsed_seconds':round(time.monotonic()-st,6),'log_path':str(log),'log_sha256':sha(log)})
        write();print('END',name,'exit',p.returncode,flush=True)
        if p.returncode:raise RuntimeError(name+' failed; see '+str(log))
        return p.stdout
    write()
    try:
        with zipfile.ZipFile(archive) as z:
            files=[];tops=set();seen=set()
            for n in z.infolist():
                p=PurePosixPath(n.filename)
                if p.is_absolute()or '..'in p.parts or '\\'in n.filename or not p.parts:raise ValueError('Unsafe ZIP path '+n.filename)
                if stat.S_ISLNK(n.external_attr>>16):raise ValueError('Symlink in ZIP')
                if n.filename in seen:raise ValueError('Duplicate ZIP member')
                seen.add(n.filename);tops.add(p.parts[0])
                if not n.is_dir():files.append(n.filename)
            if len(tops)!=1:raise ValueError('Expected one package root')
            bad=z.testzip()
            if bad:raise RuntimeError('ZIP CRC failure '+bad)
            z.extractall(unpack)
        root=unpack/next(iter(tops));fresh=work/'replay_output'
        rec['zip_crc_verified']=True;rec['zip_regular_file_count']=len(files)
        rec['payload_manifest_sha256']=sha(root/'MANIFEST.sha256')
        rec['input_binding_sha256']=sha(root/'inputs/SHA256.json')
        rec['code_sha256']={str(p.relative_to(root)):sha(p)for p in sorted((root/'code').rglob('*'))if p.is_file()}
        before=json.loads(step('manifest_before',[sys.executable,'-B',root/'code/verify_manifest.py']))
        step('full_mathematical_replay',[sys.executable,'-B','-u',root/'code/replay.py','--out',fresh])
        comparison=json.loads(step('compare_certificates',[sys.executable,'-B',root/'code/compare_replay.py','--out',fresh]))
        after=json.loads(step('manifest_after',[sys.executable,'-B',root/'code/verify_manifest.py']))
        if before!=after:raise RuntimeError('Payload changed during replay')
        if rec['archive_sha256']!=sha(archive):raise RuntimeError('Archive changed during verification')
        rec['manifest_before']=before;rec['manifest_after']=after;rec['comparison']=comparison
        rec['replay_summary']=json.loads((fresh/'certificates/summary.json').read_text())
        rec['full_replay_exit_code']=0;rec['certificate_files_compared']=comparison['count'];rec['all_deterministic_certificates_byte_identical']=True
        rec['status']='PASS_CLEAN_EXTRACTION_FULL_REPLAY_AND_BYTE_COMPARE';rec['final_exit_code']=0
    except Exception as ex:
        rec['status']='FAIL';rec['failure']=repr(ex);rec['final_exit_code']=1
    rec['finished_utc']=datetime.datetime.now(datetime.timezone.utc).isoformat();rec['elapsed_seconds']=round(time.monotonic()-t,6);write()
    print(json.dumps({k:rec.get(k)for k in ('status','archive_sha256','certificate_files_compared','final_exit_code')},indent=2),flush=True)
    return rec['final_exit_code']
if __name__=='__main__':sys.exit(main())
