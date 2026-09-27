#!/usr/bin/env python3
"""Compare all regenerated deterministic certificates with this evidence package."""
import hashlib,json,sys
from pathlib import Path
sys.dont_write_bytecode=True
root=Path(__file__).resolve().parents[1]
def digest(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def main():
 if len(sys.argv)!=2:raise SystemExit('usage: python3 code/compare_replay.py REPLAY_OUTPUT')
 out=Path(sys.argv[1]).resolve();a=root/'certificates';b=out/'certificates'
 expected={str(p.relative_to(a)):digest(p)for p in a.rglob('*')if p.is_file()}
 actual={str(p.relative_to(b)):digest(p)for p in b.rglob('*')if p.is_file()}
 assert actual==expected,('deterministic certificate mismatch',[k for k in sorted(set(actual)|set(expected))if actual.get(k)!=expected.get(k)])
 receipt=json.loads((out/'REPLAY_RECEIPT.json').read_text());assert receipt['status']=='PASS'and receipt['exit_code']==0 and receipt['deterministic_certificates']==actual
 print('PASS_BYTE_IDENTICAL_CERTIFICATES',len(actual))
if __name__=='__main__':main()
