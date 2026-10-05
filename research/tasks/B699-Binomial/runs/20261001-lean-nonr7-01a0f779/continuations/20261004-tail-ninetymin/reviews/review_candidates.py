"""Freeze independently inspected finite sources and exact literal targets.

Only static source/edge checks; never upgrades candidates to Lean acceptance.
"""
import hashlib
import json
import re
from datetime import datetime, timezone
from pathlib import Path

HERE = Path(__file__).resolve().parent
SUPPLY = HERE.parent / 'supply'
REPO = next(p for p in HERE.parents if (p / '.git').exists())
NS = 'B699TailNinety20261004'
STOP = datetime.fromisoformat('2026-10-04T11:52:50+00:00')


def require(value, message):
    if not value:
        raise ValueError(message)


def frozen(path):
    raw = path.read_bytes()
    return {'path': path.relative_to(REPO).as_posix(), 'bytes': len(raw),
            'sha256': hashlib.sha256(raw).hexdigest()}


def main():
    require(datetime.now(timezone.utc) < STOP, 'Review hard deadline reached')
    static_files = [SUPPLY / v for v in ('EndpointLegacy.lean', 'RatioCore.lean',
                    'RatioEndpointLegacy.lean', 'FixedPilot16.lean', 'RatioPilot16.lean',
                    'Tail6000Legacy.lean', 'Tail10000Legacy.lean')]
    static_files += sorted(SUPPLY.glob('RatioBlock*.lean'))
    static_files += [HERE / f'Tail{k}ExactLegacy.lean' for k in (5001, 6000, 10000)]
    sources = []
    for path in static_files:
        text = path.read_text(encoding='utf-8-sig')
        require(not re.search(r'\b(?:sorry|admit|axiom)\b', text), 'Placeholder/new axiom in ' + path.name)
        roots = re.findall(r'^#print axioms (\S+)\s*$', text, re.M)
        require(roots and len(roots) == len(set(roots)), 'AX inventory incomplete: ' + path.name)
        sources.append({**frozen(path), 'expectedTransitiveAxiomRoots': roots,
                        'status': 'static-source-reviewed-not-kernel-accepted'})
    segments = []
    for path in [SUPPLY / 'RatioPilot16.lean', *sorted(SUPPLY.glob('RatioBlock*.lean'))]:
        text = path.read_text(encoding='utf-8-sig')
        typ = re.search(r'theorem chain : RatioPrimeChain (\d+) (\d+) := by', text)
        require(typ is not None, 'Chain type missing: ' + path.name)
        lo, hi = map(int, typ.groups())
        steps = list(map(int, re.findall(r'refine \.step \(q := (\d+)\)', text)))
        nodes = [lo, *steps]
        require(nodes[-1] == hi and len(nodes) > 1, 'Chain endpoint mismatch: ' + path.name)
        primes = [(int(v), int(p)) for v, p in re.findall(r'theorem prime(\d+) : Nat.Prime (\d+) := by norm_num', text)]
        require(primes == list(enumerate(nodes[1:], 1)), 'Prime literals differ from steps: ' + path.name)
        for p, q in zip(nodes, nodes[1:]):
            require(p < q and 4095 * q <= 4096 * p, 'Invalid relative edge: ' + path.name)
        segments.append({'file': path.name, 'firstPrime': lo, 'lastPrime': hi,
                         'edgeCount': len(steps), 'integerRelativeEdgesValid': True})
    require(segments[0]['firstPrime'] == 20482069, 'Seed endpoint differs')
    for left, right in zip(segments, segments[1:]):
        require(left['lastPrime'] == right['firstPrime'], 'Concatenation seam differs')
    endpoints = {6000: next(v['lastPrime'] for v in segments if v['file'] == 'RatioBlock011.lean'),
                 10000: segments[-1]['lastPrime']}
    for k, endpoint in endpoints.items():
        require(4095 * k <= endpoint, 'Final endpoint condition fails')
        txt = (SUPPLY / f'Tail{k}Legacy.lean').read_text(encoding='utf-8-sig')
        require(f'tail_chain_{k} : RatioPrimeChain 20482069 {endpoint}' in txt,
                'Consumer chain endpoint differs')
    expected_literals = {}
    for k in (5001, 6000, 10000):
        txt = (HERE / f'Tail{k}ExactLegacy.lean').read_text(encoding='utf-8-sig')
        for name in (f'complete_{k}_exact', f'all_upto_{k}_exact'):
            require(f'theorem {name} ' in txt, 'Literal root missing')
        expected_literals[str(k)] = {
            f'B699TailNinetyVerify20261004.complete_{k}_exact':
            f'theorem B699TailNinetyVerify20261004.complete_{k}_exact : ∀ (n j : ℕ), {k} < j → j ≤ n / 2 → ∃ p, Nat.Prime p ∧ {k} ≤ p ∧ p ∣ n.choose {k} ∧ p ∣ n.choose j',
            f'B699TailNinetyVerify20261004.all_upto_{k}_exact':
            f'theorem B699TailNinetyVerify20261004.all_upto_{k}_exact : ∀ (n i j : ℕ), 4883 ≤ i → i ≤ {k} → i < j → j ≤ n / 2 → ∃ p, Nat.Prime p ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j'}
    result = {'utc': datetime.now(timezone.utc).isoformat(),
              'verifier': '/root/tail90_verification',
              'baseline': '297dcd3943fc6468212cc6240bc65a3b9a17ccc2',
              'status': 'static-source-reviewed-not-kernel-accepted',
              'sources': sources, 'relativeSegments': segments, 'endpoints': endpoints,
              'newCandidatePrimeCount': sum(v['edgeCount'] for v in segments),
              'expectedActualLiteralTypes': expected_literals,
              'candidateCompleteExtraMathematicalInputs': [],
              'genuineInfiniteGapSupplied': False,
              'remainingObligations': ['Fresh actual compilation for all adopted sources',
                  'Exact actual literal types, all transitive axioms and normal checker',
                  'Fixed Git source/new object parts/raw/run binding',
                  'Old217e/29a3 physical provider closure and exact member completeness'],
              'script': frozen(Path(__file__))}
    (HERE / 'CANDIDATES-INDEPENDENT-SOURCE-REVIEW.json').write_text(
        json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print('Static source review: %d files, %d relative edges; no kernel acceptance' %
          (len(sources), result['newCandidatePrimeCount']))


if __name__ == '__main__':
    main()
