#!/usr/bin/env python3
"""Capture an actual command; never turn a launch failure into a tool exit code."""
import argparse, datetime, hashlib, json, os, shutil, subprocess, time
from pathlib import Path

def main():
    ap=argparse.ArgumentParser()
    ap.add_argument('--out',required=True)
    ap.add_argument('--cwd',required=True)
    ap.add_argument('--source',action='append',default=[])
    ap.add_argument('--timeout',type=float,default=120)
    ap.add_argument('command',nargs=argparse.REMAINDER)
    a=ap.parse_args();cmd=a.command
    if cmd and cmd[0]=='--':cmd=cmd[1:]
    if not cmd:ap.error('A command is required after --')
    out=Path(a.out).resolve();out.mkdir(parents=True,exist_ok=True)
    # Do not silently overwrite an earlier measurement.
    if (out/'receipt.json').exists():raise SystemExit('Refusing to overwrite existing receipt')
    cwd=Path(a.cwd).resolve()
    hashes={str(Path(s).resolve()):hashlib.sha256(Path(s).read_bytes()).hexdigest() for s in a.source}
    r={'start_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),
       'command':cmd,'cwd':str(cwd),'executable_resolved':shutil.which(cmd[0]),
       'source_sha256':hashes,'child_started':False,'status':None,'exit_code':None,
       'wall_seconds':None,'peak_memory_bytes':None,'memory_measurement':'not collected',
       'requested_toolchain':'leanprover/lean4:v4.33.1',
       'requested_mathlib_commit':'0df444a360eaa60ab8c11dca51a86af692955474',
       'actual_tool_versions':None,'cache_state':'not established',
       'timing_scope':'total child command, including startup/import, only if a child was started'}
    code=127;t0=time.monotonic()
    with (out/'stdout.log').open('wb') as so,(out/'stderr.log').open('wb') as se:
        try:
            p=subprocess.Popen(cmd,cwd=cwd,stdout=so,stderr=se)
            r['child_started']=True
            try:
                code=p.wait(timeout=a.timeout);r['status']='completed'
            except subprocess.TimeoutExpired:
                p.kill();p.wait();code=124;r['status']='timeout'
            r['exit_code']=p.returncode;r['wall_seconds']=time.monotonic()-t0
        except OSError as e:
            r['status']='launch_failed'
            r['launch_error']={'type':type(e).__name__,'errno':e.errno,'message':str(e)}
            (out/'launch-error.log').write_text(f'{type(e).__name__}: {e}\n')
    r['recorder_exit_code']=code
    r['end_utc']=datetime.datetime.now(datetime.timezone.utc).isoformat()
    for name in ['stdout.log','stderr.log','launch-error.log']:
        p=out/name
        if p.exists():r[name]={'bytes':p.stat().st_size,'sha256':hashlib.sha256(p.read_bytes()).hexdigest()}
    (out/'receipt.json').write_text(json.dumps(r,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps(r,ensure_ascii=False,indent=2))
    return code
if __name__=='__main__':raise SystemExit(main())
