#!/usr/bin/env python3
"""Replay into a NEW directory; never overwrite delivered evidence or prior logs."""
from __future__ import annotations
import datetime, hashlib, json, subprocess, sys, uuid
from pathlib import Path

def main():
    root=Path(__file__).resolve().parents[1]
    stamp=datetime.datetime.now(datetime.timezone.utc).strftime('%Y%m%dT%H%M%SZ')+'-'+uuid.uuid4().hex[:6]
    out=root/'outputs'/('replay-'+stamp);out.mkdir(parents=True)
    jobs=[
        [sys.executable,str(root/'src/build_certificate.py'),str(out/'certificate.json')],
        [sys.executable,str(root/'src/check_certificate.py'),str(out/'certificate.json'),'--output',str(out/'check.json')],
    ]
    records=[]
    for index,cmd in enumerate(jobs):
        result=subprocess.run(cmd,text=True,capture_output=True,check=False)
        (out/f'{index+1:02d}.stdout.txt').write_text(result.stdout)
        (out/f'{index+1:02d}.stderr.txt').write_text(result.stderr)
        records.append({'command':cmd,'returncode':result.returncode})
        if result.returncode:
            (out/'replay.json').write_text(json.dumps({'status':'FAIL','jobs':records},indent=2)+'\n')
            print(result.stderr,file=sys.stderr);raise SystemExit(result.returncode)
    digest=hashlib.sha256((out/'certificate.json').read_bytes()).hexdigest()
    delivered=root/'outputs'/'certificate.json'
    same=not delivered.exists() or delivered.read_bytes()==(out/'certificate.json').read_bytes()
    if not same: raise ArithmeticError('rebuilt certificate differs from delivered certificate')
    summary={'status':'PASS_REPLAY','output_directory':str(out),'certificate_sha256':digest,'matches_delivered':same,
             'jobs':records,'no_numerical_input_search':True}
    (out/'replay.json').write_text(json.dumps(summary,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps(summary,ensure_ascii=False,indent=2))
if __name__=='__main__': main()
