"""Bounded independent arithmetic replay. No Lean, sieves, or downloads.

Run from the worktree root with Python -B. Existing artifacts stay unchanged.
The logarithm check uses alternating log(1+t), unlike audit.py's atanh series.
"""
from datetime import datetime, timezone
from fractions import Fraction as Q
from hashlib import sha256
from pathlib import Path
import json

ROOT = Path.cwd().resolve()
HERE = Path(__file__).resolve().parent
RUN = Path('research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc')
PROC = Path('research/external-results/20260911-proc-r2-ea89a10a/payload/b699-proc-r2-resumed-20260911')
EXPECTED_HEAD = 'f0b0cc10fbab9db7133aae9914178caf0b4c587b'


def read(path):
    return json.loads(path.read_bytes())


def digest(path):
    return sha256(path.read_bytes()).hexdigest()


def display_interval(lo, hi, digits=12):
    den = 10 ** digits
    return [str(Q((lo * den).__floor__(), den)),
            str(Q((hi * den).__ceil__(), den))]


def log1p_interval(t, terms=120):
    assert 0 < t < 1 and terms % 2 == 0
    partial = sum(((-1) ** (k + 1) * t ** k / k
                   for k in range(1, terms + 1)), Q(0))
    return partial, partial + t ** (terms + 1) / (terms + 1)


saved = read(HERE / 'arithmetic-certificate.json')
target = Q(910560352, 10 ** 9)
eta = Q(213, 10 ** 6)
kappa = Q(259, 125)
start = 10000
chosen = Q(183, 200)
errors = [Q(11, 250), Q(4, 125), Q(13, 500), Q(11, 500)]
precise_errors = [Q(21976879, 500000000), Q(777, 25000),
                  Q(12688357, 500000000), Q(21976879, 1000000000)]
rows = []
for j in range(1, 5):
    upper_slope, offset, lower_slope = Q(9, 2 * j), Q(1, j), Q(4, j)
    err, precise = errors[j - 1], precise_errors[j - 1]
    for candidate in (err, precise):
        assert candidate > 0
        assert candidate ** 2 >= kappa ** 2 * upper_slope / start
        assert candidate >= eta * upper_slope
    value = upper_slope - (1 + eta) * lower_slope - err - offset / start
    sharp = upper_slope - (1 + eta) * lower_slope - precise - offset / start
    assert value == Q(saved['rows'][j - 1]['rate'])
    assert sharp == Q(saved['rows'][j - 1]['precise_rate'])
    rows.append({'j': j, 'rate': str(value), 'precise_rate': str(sharp)})
coarse_rate = sum((Q(r['rate']) for r in rows), Q(0))
precise_rate = sum((Q(r['precise_rate']) for r in rows), Q(0))
assert coarse_rate == Q(54941, 60000) > chosen > target
assert precise_rate == Q(2751887947, 3000000000)

# Derive the three aggregate coefficients directly from the interval formula.
harmonic4 = sum((Q(1, j) for j in range(1, 5)), Q(0))
upper_sum = Q(9, 2) * harmonic4
lower_sum = 4 * harmonic4
ideal_rate = upper_sum - lower_sum
assert ideal_rate == Q(25, 24)
epsilon = Q(1, 200)
half_slope = (1 - epsilon) * upper_sum - (1 + epsilon) * lower_sum
half_offset = (1 - epsilon) * harmonic4
assert (half_slope, half_offset) == (Q(61, 64), Q(199, 96))
assert half_slope - half_offset / 48 < target < half_slope - half_offset / 49
finite_theta_rate = ideal_rate - sum(errors) - harmonic4 / start
assert finite_theta_rate == Q(22019, 24000) > chosen
assert kappa ** 2 <= epsilon ** 2 * 172000 and eta < epsilon
assert Q(9, 8) * 10 ** 6 - Q(1, 4) >= 10 ** 6
assert Q(9, 2) * 10 ** 6 - 1 < 4500000

# Algebra needed to lift each selected q to an h=1 contribution.
# For 1<=j<=4, 2*j*q<=9*m-2 forces (j-1)*q<=4*m.
assert all(9 * (j - 1) <= 8 * j for j in range(1, 5))
# Consecutive interval upper endpoint is strictly below the preceding lower.
assert all(9 * j <= 8 * (j + 1) for j in range(1, 4))
endpoint_checks = []
for m in (1, 2, 3, 51, 9999, 10000, 1000000):
    for j in range(1, 5):
        left = (4 * m) // j
        right = (9 * m - 2) // (2 * j)
        candidates = sorted({q for edge in (left, right)
                             for q in range(max(1, edge - 1), edge + 3)})
        for q in candidates:
            inside = 4 * m < j * q and 2 * j * q <= 9 * m - 2
            if inside:
                assert m < q
                assert (j - 1) * q <= 4 * m < j * q
                assert 2 * ((4 * m) % q) + (m % q) >= 2 * q + 2
            endpoint_checks.append([m, j, q, inside])
# These are generic-modulus boundary diagnostics, not a prime table or finite N proof.

# Independent effective BFT G1 -> C2 numerical comparison at m=51.
lg = log1p_interval(Q(1549, 5000))
l15 = log1p_interval(Q(1, 2))
l43 = log1p_interval(Q(1, 3))
l2 = (l15[0] + l43[0], l15[1] + l43[1])
l51over32 = log1p_interval(Q(19, 32))
l204 = (7 * l2[0] + l51over32[0], 7 * l2[1] + l51over32[1])
g51 = (4 * lg[0] - l204[1] / 51, 4 * lg[1] - l204[0] / 51)
assert g51[0] > chosen > target and 2 * l2[0] > 1
old_g51 = list(map(Q, saved['BFT_to_C2_at_m51']))
assert max(g51[0], old_g51[0]) <= min(g51[1], old_g51[1])
assert (9 * 9999 - 1) // 2 == 44995
assert (9 * 9999 - 2) // 2 == 44994
assert 9999 - 51 + 1 == 9949

# Independently replay only the 205 recorded original ProC old-A rows.
old = read(ROOT / PROC / 'source/B699-ProC-interrupted-handoff-20260911/input/A/evidence/content_tail.json')
previous = read(HERE / 'original-proc-205-replay.json')
old_replay = []
for family, expected in zip(old['rows'], previous['rows'], strict=True):
    corrected = Q(0)
    recorded_sum = Q(0)
    for entry in family['rows']:
        a, b, c, error, recorded = (Q(entry[key]) for key in ('A', 'B', 'C', 'error', 'rate'))
        assert (a - c - error - b / family['M'] - recorded) / c == Q(213, 10 ** 7)
        assert error >= 0 and error ** 2 >= kappa ** 2 * a / family['M']
        corrected += max(Q(0), a - c - eta * c - max(error, eta * a) - b / family['M'])
        recorded_sum += recorded
    assert recorded_sum == Q(family['lower'])
    assert corrected == Q(expected['corrected_same_terms_lower'])
    old_replay.append({'family': [family[key] for key in ('e', 'd', 'f')],
                       'terms': len(family['rows']),
                       'corrected_rate': str(corrected),
                       'outer_interval': display_interval(corrected, corrected),
                       'meets_recorded_target': corrected > Q(family['g'])})
assert sum(row['terms'] for row in old_replay) == 205
assert [row['meets_recorded_target'] for row in old_replay] == [True, True, False, True, True, True]

# Check the existing source manifest against current bytes without rewriting it.
manifest = read(HERE / 'SOURCE_MAP.json')
bindings = []
for item in manifest['sources']:
    path = Path(item['path'])
    path = path if path.is_absolute() else ROOT / path
    actual = digest(path)
    assert actual == item['sha256'] and path.stat().st_size == item['bytes']
    bindings.append({'path': item['path'], 'sha256': actual, 'match': True})

b686_path = ROOT / 'research/tasks/B686-Four/round8/continuation/verification.json'
b686 = read(b686_path)
assert b686['success'] and b686['exit_code'] == 0
for item in b686['hashes']:
    assert digest(ROOT / item['path']) == item['sha256']
audit_log = (ROOT / b686['hashes'][-1]['path']).read_text(encoding='utf-8')
assert "'B686PrimeCounting.prime_counting_linear' depends on axioms: [propext, Classical.choice, Quot.sound]" in audit_log
assert b686['audited_roots']['B686PrimeCounting.prime_counting_linear'] == ['Classical.choice', 'Quot.sound', 'propext']

stamp = datetime.now(timezone.utc)
result = {
    'status': 'PASS_INDEPENDENT_SMALL_EXACT_RECHECK',
    'utc': stamp.isoformat(),
    'root': str(ROOT),
    'repo_head_separately_observed': EXPECTED_HEAD,
    'scope': 'Exact arithmetic/source binding only; no Lean or prime-distribution proof',
    'rows': rows,
    'ideal_rate': str(ideal_rate),
    'coarse_BFT_rate': str(coarse_rate),
    'precise_BFT_rate': str(precise_rate),
    'chosen_rate': str(chosen),
    'chosen_margin': str(chosen - target),
    'half_percent': {'slope': str(half_slope), 'offset': str(half_offset),
                     'first_m_from_rate_alone': 49, 'finite_theta_rate': str(finite_theta_rate)},
    'G1_transfer_m51': {'outer_interval': display_interval(*g51),
                        'independent_series_terms': 120,
                        'agrees_with_previous_interval': True},
    'generic_modulus_endpoint_checks': len(endpoint_checks),
    'generic_modulus_checks_are_not_prime_or_C2_certificates': True,
    'old_A_205_replay': old_replay,
    'known_ETA_discovery_source': str(RUN / 'reviews/huan-i18-correction-second-5e2d13bb/REPORT.md'),
    'corrected_i18_279_term_certificate_untouched': True,
    'source_bindings': bindings,
    'b686_receipt': {'original_success': True, 'source_and_log_hashes_matching': 5,
                     'statement': '77*pi(N) <= 16*N + 616', 'new_Lean_acceptance': False},
    'Chebyshev_olean_exists_at_shared_path': (Path('D:/CodingProject/Math/.lake/packages/mathlib/.lake/build/lib/lean/Mathlib/NumberTheory/Chebyshev.olean')).exists(),
    'finite_C2_bridge': {'first': 51, 'last': 9999, 'singleton_count': 9949,
                         'prime_power_cutoff': 44995, 'four_interval_prime_cutoff': 44994,
                         'checked': False, 'required_only_if_retaining_m_ge_51': True},
    'new_Lean_runs': 0, 'new_prime_tables': 0, 'new_downloads': 0,
    'new_original_problem_coverage': 0,
    'checker_sha256': digest(Path(__file__)),
}
filename = 'recheck-' + stamp.strftime('%Y%m%dT%H%M%SZ') + '.json'
(HERE / filename).write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
print(json.dumps({'status': result['status'], 'output': filename,
                  'source_bindings': len(bindings), 'endpoint_checks': len(endpoint_checks),
                  'old_A_rows': 205, 'finite_C2_bridge_checked': False,
                  'new_Lean_runs': 0, 'new_prime_tables': 0}, ensure_ascii=False))
