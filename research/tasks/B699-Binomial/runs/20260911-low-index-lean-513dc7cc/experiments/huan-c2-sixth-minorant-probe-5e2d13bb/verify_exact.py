"""Standard-library exact certificate checker; does not call a solver.

Rebuild all jumps from reciprocal slopes, check every half-open cell, its
midpoint, its right-hand limit, all closed endpoints, balance and the positive D.
"""
from datetime import datetime, timezone
from fractions import Fraction as F
from hashlib import sha256
from math import lcm
from pathlib import Path
import json

HERE = Path(__file__).resolve().parent


def floor(x):
    return x.numerator // x.denominator


def ceil(x):
    return -floor(-x)


def log_interval(x):
    x = F(x)
    power = 0
    while x > 2:
        x /= 2
        power += 1
    assert 1 <= x <= 2 and power >= 0
    def unit(y):
        z = (y - 1) / (y + 1)
        lower = sum((2 * z ** (2 * k + 1) / (2 * k + 1) for k in range(100)), F(0))
        remainder = 2 * z ** 201 / (201 * (1 - z * z))
        return lower, lower + remainder
    a, b = unit(x)
    l2, u2 = unit(F(2))
    return a + power * l2, b + power * u2


def outer(lo, hi, places=18):
    den = 10 ** places
    return [str(F(floor(lo * den), den)), str(F(ceil(hi * den), den))]


def factors(n):
    result = {}
    divisor = 2
    while divisor * divisor <= n:
        while n % divisor == 0:
            result[divisor] = result.get(divisor, 0) + 1
            n //= divisor
        divisor += 1
    if n > 1:
        result[n] = result.get(n, 0) + 1
    return result


model = json.loads((HERE / 'model.json').read_bytes())
candidate = json.loads((HERE / 'candidate.json').read_bytes())
assert model['basis_numerators'] == list(range(1, 31))
assert model['basis_denominator'] == 6 and model['period'] == 6
slopes = [F(j, 6) for j in range(1, 31)]
g_slopes = [F(9), F(4), F(1)]
all_points = {F(0), F(6)}
basis_points = {F(0), F(6)}
for index, slope in enumerate(slopes + g_slopes):
    assert (6 * slope).denominator == 1
    for step in range(int(6 * slope) + 1):
        point = F(step) / slope
        all_points.add(point)
        if index < 30:
            basis_points.add(point)
points = sorted(all_points)
assert points == list(map(F, model['breakpoints']))
assert len(points) - 1 == model['intervals']
assert sorted(all_points - basis_points) == list(map(F, model['g_only_breakpoints']))
assert F(1, 9) in all_points - basis_points
weights = list(map(F, candidate['weights']))
assert len(weights) == 30
balance = sum((a * w for a, w in zip(slopes, weights)), F(0))
assert balance == 0
denominator = lcm(*(w.denominator for w in weights))
assert all((denominator * w).denominator == 1 for w in weights)
D = [F(0)] * 30
for j, weight in ((3, 1), (6, -1), (24, -1), (27, 1)):
    D[j - 1] = F(weight)
assert D == list(map(F, model['D_baseline_weights']))
assert sum((a * w for a, w in zip(slopes, D)), F(0)) == 0


def rhs(t):
    return int(floor(9 * t) - 2 * floor(4 * t) - floor(t) == 2)


def lhs(t, ws):
    return sum((w * floor(a * t) for a, w in zip(slopes, ws)), F(0))


minimum_slack = None
for index, (left, right) in enumerate(zip(points, points[1:])):
    midpoint = (left + right) / 2
    direct_row = [floor(a * left) for a in slopes]
    assert model['A'][index] == direct_row and model['b'][index] == rhs(left)
    # Complete jumps make each original floor constant on the whole cell.
    for a in slopes + g_slopes:
        assert floor(a * left) == floor(a * midpoint) == ceil(a * right) - 1
    for ws in (weights, D):
        assert lhs(left, ws) <= rhs(left)
        assert lhs(midpoint, ws) == lhs(left, ws)
        assert rhs(midpoint) == rhs(left)
    slack = rhs(left) - lhs(left, weights)
    minimum_slack = slack if minimum_slack is None else min(minimum_slack, slack)
for point in points:
    assert lhs(point, weights) <= rhs(point)
    assert lhs(point, D) <= rhs(point)
assert lhs(F(6), weights) == lhs(F(0), weights) == rhs(F(6)) == rhs(F(0)) == 0
quantized = sum((F(c) * w for c, w in zip(model['reduced_cost_integer_1e9'], weights[1:])), F(0))
assert quantized >= model['D_baseline_quantized_objective'] > 0
assert quantized == -F(candidate['quantized_minimum'])

# By balance, gamma=sum a*w*log(a)=sum a*w*log(j); expand small integer j exactly.
log_coefficients = {}
for j, (a, w) in enumerate(zip(slopes, weights), 1):
    for prime, exponent in factors(j).items():
        log_coefficients[prime] = log_coefficients.get(prime, F(0)) + a * w * exponent
log_coefficients = {p: c for p, c in log_coefficients.items() if c}
lo = hi = F(0)
for prime, coefficient in log_coefficients.items():
    lower, upper = log_interval(prime)
    if coefficient >= 0:
        lo += coefficient * lower
        hi += coefficient * upper
    else:
        lo += coefficient * upper
        hi += coefficient * lower
target = F(910560352, 10 ** 9)
dl2, du2 = log_interval(2)
dl3, du3 = log_interval(3)
D_lower, D_upper = 9 * dl3 - 13 * du2, 9 * du3 - 13 * dl2
assert D_lower > 0 and D_upper < target
classification = ('ABOVE_TARGET_EXACT_FEASIBLE_CANDIDATE' if lo > target else
                  'BELOW_TARGET_EXACT_FEASIBLE_CANDIDATE' if hi < target else
                  'TARGET_COMPARISON_NOT_RESOLVED')
sources = json.loads((HERE / 'SOURCE_MAP.json').read_bytes())['sources']
for item in sources:
    path = HERE / item['path']
    assert sha256(path.read_bytes()).hexdigest() == item['sha256']
    assert path.stat().st_size == item['bytes']

result = {
    'status': classification,
    'utc': datetime.now(timezone.utc).isoformat(),
    'weights': list(map(str, weights)),
    'nonzero': {str(a): str(w) for a, w in zip(slopes, weights) if w},
    'K': denominator,
    'balance': str(balance), 'period': 6,
    'complete_cells': len(points) - 1, 'all_endpoints': len(points),
    'g_only_breakpoints_checked': len(all_points - basis_points),
    'g_j54_not_a_variable': True,
    'minimum_exact_slack': str(minimum_slack),
    'log_prime_coefficients': {str(p): str(c) for p, c in sorted(log_coefficients.items())},
    'rate_rational_outer_18places': outer(lo, hi),
    'target': str(target), 'rate_minus_target_outer': outer(lo - target, hi - target),
    'D_baseline_rate_outer': outer(D_lower, D_upper),
    'matches_D_weights': weights == D,
    'matches_D_true_rate': log_coefficients == {2: F(-13), 3: F(9)},
    'exact_objective_only_for_candidate': True,
    'true_log_optimality_claim': False,
    'factorial_bridge_scope': 'Positive m divisible by6; C1 layer; C2>=C1/(9m); no all-six-residue transfer established.',
    'sources_matching': len(sources),
    'files': [{'path': name, 'sha256': sha256((HERE / name).read_bytes()).hexdigest()}
              for name in ('probe.py', 'verify_exact.py', 'model.json', 'candidate.json', 'SOURCE_MAP.json')],
    'new_Lean_runs': 0, 'new_original_problem_coverage': 0,
}
if lo > target:
    # A constructive paper-only bound on multiples of6, using elementary factorial integrals.
    # log C2 >= gamma*m - A*log(m) - 3*A, A=1+sum negative weight magnitudes.
    # log(m)<=sqrt(m), m>=max(6,(4*A/delta)^2,12*A/delta) gives a strict margin.
    gamma_lower = F(floor(lo * 10 ** 18), 10 ** 18)
    delta = gamma_lower - target
    assert delta > 0
    error_weight = 1 + sum((-w for w in weights if w < 0), F(0))
    cutoff = max(F(6), (4 * error_weight / delta) ** 2, 12 * error_weight / delta)
    M = 6 * ceil(cutoff / 6)
    result['paper_effective_multiple6_cutoff'] = {
        'M': M, 'gamma_lower': str(gamma_lower), 'delta': str(delta),
        'A': str(error_weight), 'inequality': 'log C2 >= gamma_lower*m-A*log m-3A',
        'assumptions': 'C1/C2 layer bridge; Legendre factorial-ratio inequality; elementary factorial integral bounds; m positive and divisible by6',
        'Lean_accepted': False, 'other_five_residue_classes': 'not supplied',
    }
(HERE / 'verification.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
print(json.dumps({key: result[key] for key in ('status', 'nonzero', 'K', 'complete_cells', 'all_endpoints',
                                              'g_only_breakpoints_checked', 'rate_rational_outer_18places',
                                              'matches_D_weights', 'matches_D_true_rate')}, ensure_ascii=False))
