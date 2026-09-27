#!/usr/bin/env python3
"""Compare deterministic certificates after a fresh full offline replay.
Usage: python code/compare_replay.py PACKAGE_ROOT REPLAY_OUTPUT
"""
from __future__ import annotations
import hashlib,json,sys
from pathlib import Path
sys.dont_write_bytecode=True

def hashes(root: Path) -> dict[str,str]:
    if not root.is_dir(): raise FileNotFoundError(root)
    return {str(p.relative_to(root)): hashlib.sha256(p.read_bytes()).hexdigest()
            for p in sorted(root.rglob('*')) if p.is_file()}

def main() -> None:
    if len(sys.argv)!=3: raise SystemExit('usage: compare_replay.py PACKAGE_ROOT REPLAY_OUTPUT')
    package,out=map(lambda x:Path(x).resolve(),sys.argv[1:])
    receipt=json.loads((out/'REPLAY_RECEIPT.json').read_text())
    if receipt['status']!='PASS' or receipt['summary']['status']!='PASS_T_PREIMAGE_S5_FRONTIER56' or receipt['exit_code']!=0:
        raise AssertionError('full replay receipt is not PASS')
    a,b=hashes(package/'certificates'),hashes(out/'certificates')
    if a!=b:
        changed=sorted(k for k in set(a)|set(b) if a.get(k)!=b.get(k))
        raise AssertionError(('deterministic certificate mismatch',changed))
    for rel,digest in receipt['code_sha256'].items():
        p=package/'code'/rel
        if hashlib.sha256(p.read_bytes()).hexdigest()!=digest:
            raise AssertionError(('replayed source differs',rel))
    print(json.dumps({'status':'PASS_EXACT_CERTIFICATE_REPLAY','deterministic_certificate_files':len(a),
        'sha256_maps_equal':True,'complete_file_sets_equal':True,'all_replayed_code_matches_package':True,
        'mathematical_status':receipt['summary']['status']},ensure_ascii=False,indent=2))
if __name__=='__main__': main()
