#!/usr/bin/env python3
"""Replay into a fresh directory; never overwrites frozen evidence."""
from __future__ import annotations
import argparse, datetime, hashlib, json, subprocess, sys, uuid
from pathlib import Path
from verify_manifest import verify

def main():
    parser=argparse.ArgumentParser()
    parser.add_argument('--verify-only',action='store_true')
    args=parser.parse_args()
    root=Path(__file__).resolve().parent.parent
    hashes=verify(root)
    stamp=datetime.datetime.now(datetime.timezone.utc).strftime('%Y%m%dT%H%M%SZ')+'-'+uuid.uuid4().hex[:8]
    out=root/'replays'/stamp;out.mkdir(parents=True,exist_ok=False)
    frozen=root/'outputs'/'certificate.json'
    cert=frozen
    if not args.verify_only:
        cert=out/'certificate.json'
        with (out/'generator.log').open('w',encoding='utf-8') as log:
            subprocess.run([sys.executable,str(root/'src'/'generate.py'),'--output',str(cert)],check=True,stdout=log,stderr=subprocess.STDOUT)
        if cert.read_bytes()!=frozen.read_bytes(): raise ValueError('regenerated certificate differs from frozen bytes')
    with (out/'checker.log').open('w',encoding='utf-8') as log:
        subprocess.run([sys.executable,str(root/'src'/'check.py'),str(cert),'--output',str(out/'verification.json')],
                       check=True,stdout=log,stderr=subprocess.STDOUT)
    report={'status':'PASS','mode':'stdlib-only' if args.verify_only else 'full',
            'manifest_files_checked':hashes,'certificate_sha256':hashlib.sha256(cert.read_bytes()).hexdigest(),
            'regenerated_bytes_equal':None if args.verify_only else True,
            'output_directory':str(out.relative_to(root))}
    (out/'replay.json').write_text(json.dumps(report,sort_keys=True,indent=2)+'\n',encoding='utf-8')
    print(json.dumps(report,ensure_ascii=False,sort_keys=True))
if __name__=='__main__':main()
