#!/usr/bin/env python3
"""Recheck every finite obligation, plus the archive's member hashes.

No external packages, network, original-instance sweep, logarithmic bounds,
LLL, or history replay is required. Infinite assertions remain paper proofs.
"""
from __future__ import annotations
import argparse
import hashlib
import json
from pathlib import Path
from checks import all_evidence

def verify_hashes(root: Path) -> int:
    manifest=root/'SHA256SUMS'
    if not manifest.is_file():
        raise AssertionError('missing SHA256SUMS')
    seen=set()
    for line in manifest.read_text(encoding='utf-8').splitlines():
        if not line:
            continue
        expected,rel=line.split('  ',1)
        path=root/rel
        if not path.is_file() or path.resolve().is_relative_to(root.resolve()) is False:
            raise AssertionError('invalid manifest path: '+rel)
        actual=hashlib.sha256(path.read_bytes()).hexdigest()
        if actual != expected:
            raise AssertionError('hash mismatch: '+rel)
        if rel in seen:
            raise AssertionError('duplicate hash entry')
        seen.add(rel)
    actual_members={str(p.relative_to(root)) for p in root.rglob('*') if p.is_file()
                    and '__pycache__' not in p.parts and p.name!='SHA256SUMS'}
    if seen != actual_members:
        raise AssertionError('member completeness mismatch')
    return len(seen)

def main():
    parser=argparse.ArgumentParser()
    parser.add_argument('--json',action='store_true')
    args=parser.parse_args()
    root=Path(__file__).resolve().parents[1]
    count=verify_hashes(root)
    expected=json.loads((root/'evidence'/'exact.json').read_text(encoding='utf-8'))
    actual=json.loads(json.dumps(all_evidence()))
    if expected != actual:
        raise AssertionError('finite mathematical evidence mismatch')
    output={
        'status':'PASS_SOURCE_SATURATION_CONSUMERS',
        'hashed_members':count,
        'whole_RES10_closed':False,
        'new_absolute_parameter_bound':False,
        'new_pair_consumers':True,
        'new_row_family_claim':False,
        'kernel_degrees':[6,8],
        'origin_orders':[3,2],
        'source_slots_rechecked':sum(r+1 for r in range(6))*2,
        'center_obstruction_rank':actual['center_obstruction']['rank'],
        'proof_level':'author paper proof + same-session deterministic finite verification; no Lean or independent audit',
    }
    print(json.dumps(output,ensure_ascii=False,indent=2) if args.json else output['status'])
if __name__=='__main__':
    main()
