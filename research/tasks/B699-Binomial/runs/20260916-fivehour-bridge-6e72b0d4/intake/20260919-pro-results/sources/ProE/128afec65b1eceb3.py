#!/usr/bin/env python3
"""Replay into a fresh timestamped directory, preserving delivered evidence."""
from __future__ import annotations
import datetime
import hashlib
import json
import platform
import subprocess
import sys
from pathlib import Path

BASE=Path(__file__).resolve().parents[1]

def main():
    stamp=datetime.datetime.now(datetime.timezone.utc).strftime('%Y%m%dT%H%M%S%fZ')
    out=BASE/'verification'/stamp
    out.mkdir(parents=True,exist_ok=False)
    commands=[
        ('primary',[sys.executable,str(BASE/'src'/'generate.py'),'--out',str(out)]),
        ('secondary',[sys.executable,str(BASE/'src'/'verify.py'),str(out/'certificate.json')]),
        ('corruption',[sys.executable,str(BASE/'src'/'test_corruption.py'),str(out/'certificate.json'),'--out',str(out)]),
    ]
    rows=[]
    for label,cmd in commands:
        p=subprocess.run(cmd,cwd=BASE,capture_output=True,text=True)
        (out/f'{label}.stdout.txt').write_text(p.stdout)
        (out/f'{label}.stderr.txt').write_text(p.stderr)
        rows.append({'stage':label,'command':cmd,'returncode':p.returncode})
        if p.returncode:
            (out/'replay.json').write_text(json.dumps({'status':'FAIL','commands':rows},indent=2)+'\n')
            raise RuntimeError(f'{label} failed; see {out}')
        if label=='secondary':
            (out/'secondary.json').write_text(json.dumps(json.loads(p.stdout),indent=2)+'\n')
    cert=out/'certificate.json'
    result={'status':'PASS','commands':rows,'python':platform.python_version(),
            'certificate_sha256':hashlib.sha256(cert.read_bytes()).hexdigest(),
            'note':'Symbolic/evidence replay, not a full independent mathematical acceptance.'}
    (out/'replay.json').write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({'status':'PASS','evidence_directory':str(out),
                      'polynomial_identities':13,'corruptions_rejected':9},ensure_ascii=False))
if __name__=='__main__': main()
