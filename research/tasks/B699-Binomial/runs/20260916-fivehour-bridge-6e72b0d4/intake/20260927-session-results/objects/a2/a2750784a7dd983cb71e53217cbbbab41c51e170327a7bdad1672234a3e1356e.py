#!/usr/bin/env python3
"""Compare the entire deterministic certificate set against a fresh replay."""
import argparse,hashlib,json
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
def hashes(p):
    return {str(f.relative_to(p)):hashlib.sha256(f.read_bytes()).hexdigest()
            for f in sorted(p.rglob('*')) if f.is_file()}
a=argparse.ArgumentParser();a.add_argument('--out',type=Path,required=True);ns=a.parse_args()
expected=hashes(ROOT/'certificates');actual=hashes(ns.out/'certificates')
assert set(expected)==set(actual),('certificate file-set mismatch',set(expected)^set(actual))
assert actual==expected,('certificate byte mismatch',[k for k in expected if expected[k]!=actual[k]])
r=json.loads((ns.out/'REPLAY_RECEIPT.json').read_text())
assert r['status']=='PASS' and r['exit_code']==0 and r['certificate_sha256']==actual
print('PASS_ALL_DETERMINISTIC_CERTIFICATES',len(actual))
