"""Freeze the previously prepared actual-psi/actual-prime Thin pair for this window.

Usage: python freeze_thin_contract.py REPO_RUNTIME_SPEC_PATH
"""
import hashlib
import json
import re
import sys
from datetime import datetime, timezone
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = next(p for p in HERE.parents if (p / '.git').exists())
OLD = HERE.parent.parent / '20261005-local-power-ninetymin'

if __name__ == '__main__':
    sources = []
    producer = (OLD / 'supply/LocalPowerFiniteBridge.lean').relative_to(ROOT).as_posix()
    for path in [producer, (OLD / 'reviews/LocalPowerFiniteBridgeLiteral.lean').relative_to(ROOT).as_posix()]:
        raw = (ROOT / path).read_bytes()
        roots = re.findall(r'^#print axioms (\S+)\s*$', raw.decode(), re.M)
        if len(roots) != 2 or len(set(roots)) != 2:
            raise ValueError('Thin precise source AX target inventory changed')
        row = {'path': path, 'bytes': len(raw), 'sha256': hashlib.sha256(raw).hexdigest(), 'roots': roots,
               'scope': 'Actual tail Gap from true psi budget; Nat finiteMiddle[T0,B)+budget+I0 gives Gap(4095,1e7); no finite real psi/cross-window input'}
        if '/reviews/' in path:
            row['literalFor'] = producer
        sources.append(row)
    expected = ['fccbec9aa911c1475ee1beb967a75eced8c6a73b4f1c70a2feed8ebdfc82c6cd',
                'aa6123c503c92b87cc51571fb03d6b8f9b48e910cc0587b7a65fa752b526327e']
    if [r['sha256'] for r in sources] != expected:
        raise ValueError('Previously independently reviewed Thin bytes changed')
    origins = {}
    prior = json.loads((OLD / 'reviews/REVIEW-CONTRACT-v10.json').read_bytes())
    origins.update(prior['acceptedOrigins'])
    result = {'verifier': '/root/local_power_verification', 'reviewedUtc': datetime.now(timezone.utc).isoformat(),
              'roundStartUtc': '2026-10-05T09:44:48Z', 'proofStopUtc': '2026-10-05T10:09:30Z',
              'hardDeadlineUtc': '2026-10-05T10:14:48Z', 'sourceBaseline': 'b18b9db2752d08d039f8e26906260b4b92160685',
              'runtimeSpecPath': sys.argv[1], 'sources': sources, 'acceptedOrigins': origins,
              'originalCompleteIndexIncrement': 0, 'genuineInfiniteGapSupplied': False,
              'priorSourceReview': (OLD / 'reviews/STATEMENT-REVIEW.md').relative_to(ROOT).as_posix()}
    out = HERE / 'THIN-REVIEW-CONTRACT.json'
    if out.exists():
        raise ValueError('Refuse replacing fixed Thin contract')
    out.write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(json.dumps({'contract': str(out), 'sources': len(sources), 'expectedFreshAX': 4, 'runtimeSpec': sys.argv[1]}))
