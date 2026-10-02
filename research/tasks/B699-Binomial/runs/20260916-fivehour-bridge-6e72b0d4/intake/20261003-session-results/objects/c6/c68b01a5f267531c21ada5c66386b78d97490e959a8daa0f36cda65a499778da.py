#!/usr/bin/env python3
"""Read-only deterministic replay. Does NOT validate the external analytic theorem."""
from pathlib import Path
import hashlib, json, sys
from verify import run
ROOT=Path(__file__).resolve().parents[1]

def digest(p):return hashlib.sha256(p.read_bytes()).hexdigest()

def check_manifest(path):
    count=0
    for line in path.read_text().splitlines():
        if not line.strip() or line.startswith('#'):continue
        h,rel=line.split('  ',1)
        p=(ROOT/rel).resolve()
        assert p.is_relative_to(ROOT), f'Unsafe member: {rel}'
        assert p.is_file() and digest(p)==h,f'Hash mismatch: {rel}'
        count+=1
    return count

def main():
    assert sys.version_info >= (3,9), 'Python 3.9+ is required.'
    check_manifest(ROOT/'SHA256SUMS.txt')
    count=check_manifest(ROOT/'PAYLOAD_SHA256SUMS.txt')
    result=run()
    expected=json.loads((ROOT/'certificates/expected_verification.json').read_text())
    assert result==expected,'Deterministic mathematical checks changed.'
    receipt={
       'kind':'clean_extract_replay_of_frozen_payload',
       'status':'PASS','payload_manifest_sha256':digest(ROOT/'PAYLOAD_SHA256SUMS.txt'),
       'payload_members_verified':count,
       'expected_verification_sha256':digest(ROOT/'certificates/expected_verification.json'),
       'checks':'all member digests; full baseline SHA; 80 exact prime/interval certificates; rational cutoff; transport and weak-model tests; exact-binomial regression',
       'network_required':False,'lean_executed':False,
       'external_analytic_theorem_verified':False,
       'external_independent_mathematical_review':False,
       'trust_note':'Same-session reproducibility check. Hashes and Python PASS are not proof-assistant acceptance.'
    }
    existing=ROOT/'CLEAN_REPLAY_RECEIPT.json'
    if existing.exists():assert json.loads(existing.read_text())==receipt,'Receipt mismatch.'
    print(json.dumps(receipt,ensure_ascii=False,indent=2,sort_keys=True))
if __name__=='__main__':main()
