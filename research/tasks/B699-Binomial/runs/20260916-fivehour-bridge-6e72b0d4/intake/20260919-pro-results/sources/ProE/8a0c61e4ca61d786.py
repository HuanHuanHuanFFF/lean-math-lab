#!/usr/bin/env python3
"""Replay into a new directory. No frozen evidence is overwritten."""
from __future__ import annotations
import sys
sys.dont_write_bytecode=True
import argparse, hashlib, json, os, subprocess, uuid
from datetime import datetime, timezone
from pathlib import Path
from check import verify, damaged_checks
from verify_manifest import verify as verify_manifest

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--verify-only',action='store_true');args=ap.parse_args()
    root=Path(__file__).resolve().parents[1]
    manifest=verify_manifest(root)
    out=root/'replays'/(datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%S.%fZ')+'-'+uuid.uuid4().hex[:6])
    out.mkdir(parents=True)
    frozen=root/'outputs'/'certificate.json';cert=frozen
    env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1')
    generated_equal=None
    if not args.verify_only:
        cert=out/'certificate.json'
        proc=subprocess.run([sys.executable,str(root/'src'/'generate.py'),str(cert)],
          capture_output=True,text=True,env=env)
        (out/'generation.log').write_text(proc.stdout+proc.stderr,encoding='utf-8')
        if proc.returncode:raise RuntimeError('generation failed; see '+str(out/'generation.log'))
        generated_equal=(cert.read_bytes()==frozen.read_bytes())
        if not generated_equal:raise RuntimeError('regenerated certificate differs from frozen bytes')
    obj=json.loads(cert.read_text(encoding='utf-8'))
    check=verify(obj);damage=damaged_checks(obj)
    result={'status':'PASS','mode':'verify-only' if args.verify_only else 'full',
      'manifest':manifest,'certificate_sha256':hashlib.sha256(cert.read_bytes()).hexdigest(),
      'regenerated_bytes_equal':generated_equal,'checks':check,'damaged_certificates':damage}
    (out/'result.json').write_text(json.dumps(result,ensure_ascii=False,sort_keys=True,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({'status':'PASS','mode':result['mode'],'frozen_files':manifest['files'],
      'identities':check['identity_records'],'positive_certificates':check['positive_certificates'],
      'mutants_rejected':damage['rejected'],'result':str(out/'result.json')},ensure_ascii=False))
if __name__=='__main__':main()
