#!/usr/bin/env python3
"""Verify the frozen payload, regenerate certificates, independently receive them."""
from __future__ import annotations
import argparse, datetime, hashlib, json, platform, subprocess, sys, tempfile, time
from pathlib import Path

NAMES=['claims.json','frontier42.json','full_power_regressions.json','infinite_family.json','terminal4096.json']

def sha(p:Path)->str:return hashlib.sha256(p.read_bytes()).hexdigest()
def verify_manifest(root:Path,name:str)->int:
    text=(root/name).read_text(encoding='utf-8');count=0
    for line in text.splitlines():
        if not line:continue
        digest,rel=line.split('  ',1)
        p=(root/rel).resolve()
        if not p.is_relative_to(root.resolve()):raise ValueError('unsafe manifest path')
        if not p.is_file() or sha(p)!=digest:raise ValueError('hash mismatch: '+rel)
        count+=1
    return count

def main()->None:
    ap=argparse.ArgumentParser();ap.add_argument('--receipt',type=Path);args=ap.parse_args()
    root=Path(__file__).resolve().parents[1];started=datetime.datetime.now(datetime.timezone.utc).isoformat();tic=time.perf_counter()
    count=verify_manifest(root,'SHA256SUMS.payload.txt')
    with tempfile.TemporaryDirectory(prefix='b699-r11-replay-') as td:
        t=Path(td);generated=t/'generated';steps=[]
        for command in [
          [sys.executable,str(root/'scripts/discover.py'),'--out',str(generated)],
          [sys.executable,str(root/'scripts/accept.py'),'--root',str(root),'--cert-dir',str(generated),'--receipt',str(t/'receiver.json')]]:
            p=subprocess.run(command,capture_output=True,text=True,check=False)
            steps.append(dict(program=Path(command[1]).name,returncode=p.returncode,stdout=p.stdout,stderr=p.stderr))
            if p.returncode:raise RuntimeError(json.dumps(steps[-1],ensure_ascii=False))
        checks=[]
        for name in NAMES:
            a=sha(root/'certificates'/name);b=sha(generated/name)
            if a!=b:raise AssertionError('certificate bytes differ: '+name)
            checks.append(dict(name=name,sha256=a,byte_identical=True))
        result=dict(status='PASS',started_utc=started,ended_utc=datetime.datetime.now(datetime.timezone.utc).isoformat(),elapsed_seconds=time.perf_counter()-tic,
            python=platform.python_version(),payload_files_checked=count,certificates=checks,
            separated_receiver=json.loads((t/'receiver.json').read_text()),steps=steps,
            evidence_level='same-author separated receiver; not Lean or external independent mathematical review')
        if args.receipt:
            args.receipt.parent.mkdir(parents=True,exist_ok=True);args.receipt.write_text(json.dumps(result,ensure_ascii=False,indent=2,sort_keys=True)+'\n',encoding='utf-8')
        print(json.dumps({k:result[k] for k in ('status','payload_files_checked','python','elapsed_seconds')},sort_keys=True))
if __name__=='__main__':main()
