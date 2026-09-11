"""Finite integer algebra and static source audit only; never invokes Lean."""
from pathlib import Path
from hashlib import sha256
from datetime import datetime, timezone
from math import factorial, prod
import json
import re
import time

HERE = Path(__file__).resolve().parent
RUN = HERE.parent.parent
REPO = RUN.parents[4]
OLD = RUN.parent / '20260909-low-index-structure-b41a5a63/lean'
START = time.perf_counter()


def digest(path):
    data = path.read_bytes()
    return {'bytes': len(data), 'sha256': sha256(data).hexdigest()}


def ceil_root_ratio(num, den, exponent):
    assert num > 0 and den > 0 and exponent > 0
    low, high, steps = 0, 1, 0
    while den * high ** exponent < num:
        high *= 2
        steps += 1
        assert steps < 128
    while high - low > 1:
        mid = (low + high) // 2
        if den * mid ** exponent < num:
            low = mid
        else:
            high = mid
    assert den * high ** exponent >= num
    assert high == 0 or den * (high - 1) ** exponent < num
    return high


small_primes = [p for p in range(2, 11)
                if all(p % d for d in range(2, p))]
assert small_primes == [2, 3, 5, 7]
mu, lam, degree = len(small_primes), 2 * 7 - 3, 2 * sum(range(1, 8)) + sum(range(1, 8))
K = 2 ** (2 * sum(range(1, 8))) * prod(factorial(h) for h in range(1, 8)) ** 3
assert mu == 4 and lam == 11 and degree == 84
assert mu * lam + degree == 128 == 11 * lam + 7
assert K == 142131407644347048724404082572664265244672000000000
C = (2 * factorial(11)) ** 11

# These tests check the scalar algebra behind the proof, not an actual noCommon
# premise or original B699 row. The source translation is the imported theorem.
configs = [
    {'i': 3, 'lambda': 2, 'mu': 2, 'E': 3, 'delta': 1, 'K': 1, 'C': 1,
     'n': [2, 3, 4, 5, 7, 11]},
    {'i': 4, 'lambda': 3, 'mu': 2, 'E': 8, 'delta': 2, 'K': 1, 'C': 1,
     'n': [2, 3, 4, 5, 7, 11]},
    {'i': 11, 'lambda': 11, 'mu': 4, 'E': 84, 'delta': 7, 'K': K, 'C': C,
     'n': [110, 128, 221]},
]
counts = []
for cfg in configs:
    i, l, t, E, d, k, c = [cfg[x] for x in ['i', 'lambda', 'mu', 'E', 'delta', 'K', 'C']]
    assert t * l + E == i * l + d
    count = 0
    for n in cfg['n']:
        for H in [n, n + 1, 2 * n]:
            m0 = ceil_root_ratio(c * H ** d, k, l * (t - 1))
            u0 = ceil_root_ratio(k * n ** (i * l), c * n ** E, l)
            for M in [m0, m0 + 1]:
                for U in [u0, u0 + 1]:
                    assert n <= H and l > 0 and k > 0
                    assert k * n ** (i * l) <= c * U ** l * n ** E
                    assert c * H ** d <= k * M ** (l * (t - 1))
                    assert k * n ** (i * l + d) <= k * n ** E * (M ** (t - 1) * U) ** l
                    assert n ** t <= M ** (t - 1) * U
                    count += 1
    counts.append({'parameters': {x: cfg[x] for x in ['i', 'lambda', 'mu', 'E', 'delta']},
                   'n_values': cfg['n'], 'H_values_per_n': ['n', 'n+1', '2n'], 'instances': count})

# Omitting n<=H would be unsound even for the elementary scalar interface.
# This is an algebra counterexample, not a B699 counterexample.
assert 4 ** 6 <= 8 ** 2 * 4 ** 3
assert 1 ** 1 <= 1 ** 2
assert not 4 ** 2 <= 1 * 8
wrong_direction = {'kind': 'scalar algebra only, not B699', 'n': 4, 'H': 1, 'M': 1,
                   'U': 8, 'K': 1, 'C': 1, 'lambda': 2, 'mu': 2, 'E': 3, 'i': 3,
                   'delta': 1, 'base_and_certificate_hold': True, 'desired_bound': '16 <= 8',
                   'missing_condition': 'n <= H'}

evidence_path = RUN / 'verification/20260910T193504764901Z/evidence.json'
evidence = json.loads(evidence_path.read_text(encoding='utf-8'))
assert evidence['success'] and evidence['exit_code'] == 0 and evidence['all_new_project_closure_compiled']
source_names = ['CofactorCover.lean', 'PrimePowerEnumeration.lean', 'FiniteCover.lean',
                'IntervalCover.lean', 'LargeDivisorWitness.lean', 'ThreeWindowSize.lean',
                'HeightCertificate.lean']
source_records = []
for name in source_names:
    path = OLD / name
    rel = path.relative_to(REPO).as_posix()
    rec = next(r for r in evidence['compile_records'] if r['source'] == rel)
    assert rec['source_sha256_before'] == rec['source_sha256_after'] == digest(path)['sha256']
    assert rec['exit_code'] == 0 and not rec['timed_out']
    log_path = REPO / rec['log']
    assert digest(log_path)['sha256'] == rec['log_sha256']
    audits = [line for line in log_path.read_text(encoding='utf-8').splitlines()
              if 'depends on axioms:' in line]
    assert audits and all('sorryAx' not in line for line in audits)
    source_records.append({'source': rel, **digest(path), 'exit_code': 0,
                           'log': rec['log'], 'log_sha256': rec['log_sha256'], 'audits': audits})

prefix = 'B699LowIndex.UpperHeight.'
modules = []
for name in ['UpperSmallPart.lean', 'I11SmallPart.lean', 'UpperCoverLayer.lean']:
    path = HERE / name
    text = path.read_text(encoding='utf-8')
    assert 'UNCOMPILED CANDIDATE' in text
    assert not re.search(r'\b(sorry|admit|native_decide)\b|^\s*axiom\s', text, re.M)
    declarations = []
    for line, row in enumerate(text.splitlines(), 1):
        match = re.match(r'(def|theorem|instance)\s+(\w+)', row)
        if match:
            declarations.append({'kind': match[1], 'name': prefix + match[2], 'line': line})
    audits = re.findall(r'^#print axioms (\S+)', text, re.M)
    assert sorted(audits) == sorted(x['name'] for x in declarations)
    modules.append({'file': name, **digest(path), 'declarations': declarations,
                    'imports': re.findall(r'^import (\S+)', text, re.M), 'audit_roots': audits})

result = {'utc': datetime.now(timezone.utc).isoformat(),
          'status': 'bounded exact scalar arithmetic and static source audit only; no Lean invoked',
          'closed_i11_constants': {'small_primes': small_primes, 'mu': mu, 'lambda': lam,
                                   'windowDegree': degree, 'heightExponent': 128,
                                   'i_times_lambda': 121, 'delta': 7, 'K': str(K)},
          'scalar_algebra_checks': counts, 'wrong_direction_counterexample': wrong_direction,
          'adopted_evidence': str(evidence_path.relative_to(REPO)),
          'adopted_evidence_sha256': digest(evidence_path)['sha256'],
          'source_records': source_records, 'candidate_modules': modules,
          'total_candidate_audit_roots': sum(len(m['audit_roots']) for m in modules),
          'elapsed_seconds': round(time.perf_counter() - START, 6)}
(HERE / 'candidate-checks.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
print(json.dumps({'status': result['status'], 'scalar_instances': sum(x['instances'] for x in counts),
                  'audit_roots': result['total_candidate_audit_roots'],
                  'elapsed_seconds': result['elapsed_seconds'],
                  'candidate_sha256': {m['file']: m['sha256'] for m in modules}}, ensure_ascii=False))
