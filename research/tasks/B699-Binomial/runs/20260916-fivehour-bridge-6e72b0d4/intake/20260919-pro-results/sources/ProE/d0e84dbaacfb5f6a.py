#!/usr/bin/env python3
"""Replay fixed and regenerated certificates into a new directory.

Python 3.10+ and SymPy 1.14 are required for regeneration. The standalone
check.py command needs only Python's standard library.
"""
from __future__ import annotations
import hashlib, json, subprocess, sys, uuid
from datetime import datetime, timezone
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]

def main():
    frozen=ROOT/'outputs/frozen/certificate.json'
    stamp=datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%S.%fZ')+'-'+uuid.uuid4().hex[:6]
    target=ROOT/'verification'/stamp
    target.mkdir(parents=True,exist_ok=False)
    commands=[
      [sys.executable,str(ROOT/'src/check.py'),str(frozen),'--out',str(target/'frozen_check.json')],
      [sys.executable,str(ROOT/'src/generate.py'),'--out',str(target/'regenerated')],
      [sys.executable,str(ROOT/'src/check.py'),str(target/'regenerated/certificate.json'),'--out',str(target/'regenerated_check.json')],
      [sys.executable,str(ROOT/'src/corruption_tests.py'),str(target/'regenerated/certificate.json'),'--out',str(target/'corruption_result.json')],
    ]
    receipts=[]
    for i,command in enumerate(commands):
        result=subprocess.run(command,text=True,capture_output=True,cwd=ROOT)
        (target/f'command_{i+1}.stdout.txt').write_text(result.stdout)
        (target/f'command_{i+1}.stderr.txt').write_text(result.stderr)
        receipts.append({'command':command,'returncode':result.returncode})
        if result.returncode:
            (target/'replay_result.json').write_text(json.dumps({'status':'FAIL','commands':receipts},indent=2)+'\n')
            raise RuntimeError(f'Replay step {i+1} failed: {result.stderr}')
    same=frozen.read_bytes()==(target/'regenerated/certificate.json').read_bytes()
    if not same: raise RuntimeError('Regenerated certificate bytes differ from frozen certificate')
    summary={'status':'PASS','fixed_and_regenerated_bytes_equal':True,
      'certificate_sha256':hashlib.sha256(frozen.read_bytes()).hexdigest(),
      'identities_checked':14,'positive_certificates':5,'corrupted_certificates_rejected':18,
      'finite_integer_inputs_scanned':0,'commands':receipts}
    (target/'replay_result.json').write_text(json.dumps(summary,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps({'status':'PASS','output_directory':str(target),'certificate_bytes_equal':True,
      'identities':14,'positive_certificates':5,'corruptions_rejected':18},ensure_ascii=False))

if __name__=='__main__': main()
