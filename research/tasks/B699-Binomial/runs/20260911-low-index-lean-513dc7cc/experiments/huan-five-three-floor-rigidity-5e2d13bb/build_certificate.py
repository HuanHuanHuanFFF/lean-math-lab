"""Exact finite certificate for the paper rigidity argument; no Lean invocation."""
from pathlib import Path
from fractions import Fraction as Q
from math import floor, gcd, prod
from hashlib import sha256
from datetime import datetime, timezone
import json
import time

HERE = Path(__file__).resolve().parent
RUN = HERE.parent.parent
START = time.perf_counter()
N = 16
Z = [(Q(1, 8), Q(1, 4)), (Q(3, 8), Q(5, 8)), (Q(3, 4), Q(7, 8))]


def phi(x):
    a, b = 3 * x, 2 * x
    return int(2 * (a - floor(a)) + b - floor(b) >= 2)


def F(e, x):
    return sum(v * floor(j * x) for j, v in enumerate(e, 1))


def dot(a, b):
    return sum(x * y for x, y in zip(a, b))


def matrix_product(a, b):
    return [[sum(x * y for x, y in zip(row, col)) for col in zip(*b)] for row in a]


def digest(path):
    data = path.read_bytes()
    return {'bytes': len(data), 'sha256': sha256(data).hexdigest()}


# Complete breakpoints of phi and its reflection, with constant open-cell values.
phi_cuts = sorted({Q(k, j) for j in [2, 3, 8] for k in range(j + 1)})
phase_cells = []
derived_zero = []
for left, right in zip(phi_cuts, phi_cuts[1:]):
    x = (left + right) / 2
    values = [phi(x), phi(1 - x)]
    for y in [(2 * left + right) / 3, (left + 2 * right) / 3]:
        assert [phi(y), phi(1 - y)] == values
    phase_cells.append({'left': str(left), 'right': str(right), 'phi': values[0],
                        'reflected_phi': values[1]})
    if values == [0, 0]:
        if derived_zero and derived_zero[-1][1] == left and phi(left) == phi(1 - left) == 0:
            derived_zero[-1][1] = right
        else:
            derived_zero.append([left, right])
assert derived_zero == [list(z) for z in Z]

# Finite sanity check of the all-J proof. The actual universal proof is in REPORT.
large_J = []
jump_tests = 0
for J in range(17, 129):
    if J % 2:
        a, case = (J - 1) // 2, 'odd'
    elif J % 4 == 0:
        a, case = J // 2 - 1, 'zero_mod_four'
    else:
        a, case = J // 2 - 2, 'two_mod_four'
    x, eps = Q(a, J), Q(1, 4 * J * J)
    assert gcd(a, J) == 1 and Q(3, 8) < x - eps < x < x + eps < Q(1, 2)
    assert phi(x - eps) == phi(1 - x + eps) == phi(x + eps) == phi(1 - x - eps) == 0
    for j in range(1, J + 1):
        assert (j * (x - eps)).denominator != 1
        assert (j * (x + eps)).denominator != 1
        assert floor(j * (x + eps)) - floor(j * (x - eps)) == int(j == J)
        jump_tests += 1
    if J in [17, 18, 20, 128]:
        large_J.append({'J': J, 'a': a, 'case': case, 'point': str(x), 'epsilon': str(eps)})

witnesses = []
for b in range(1, N + 1):
    available = []
    for a in range(1, b):
        if gcd(a, b) != 1:
            continue
        x = Q(a, b)
        containing = [z for z in Z if z[0] < x < z[1]]
        if containing:
            available.append((a, x, containing[0]))
    if not available:
        continue
    a, x, (left, right) = available[0]
    eps = min((x - left) / 2, (right - x) / 2, Q(1, 4 * N * N))
    jump = [int(j % b == 0) for j in range(1, N + 1)]
    assert all((j * (x - eps)).denominator != 1 and (j * (x + eps)).denominator != 1
               for j in range(1, N + 1))
    assert [floor(j * (x + eps)) - floor(j * (x - eps)) for j in range(1, N + 1)] == jump
    assert phi(x - eps) == phi(1 - x + eps) == phi(x + eps) == phi(1 - x - eps) == 0
    witnesses.append({'denominator': b, 'numerator': a, 'point': str(x), 'epsilon': str(eps),
                      'containing_zero_interval': [str(left), str(right)], 'jump_row': jump,
                      'all_reduced_points_in_zero_intervals': [str(t[1]) for t in available]})
assert [w['denominator'] for w in witnesses] == [2, 5, 6, 7, 9, 11, 12, 13, 14, 15, 16]

# Thirteen exact linear equations: eleven jump rows, equal count, and slope balance.
A = [w['jump_row'] for w in witnesses] + [[1] * N, list(range(1, N + 1))]
row_names = [f'jump_denominator_{w["denominator"]}' for w in witnesses] + ['count_balance', 'slope_balance']
free = [4, 8, 10]
pivots = [j for j in range(1, N + 1) if j not in free]
order = pivots + free
work = [[Q(row[j - 1]) for j in order] for row in A]
T = [[Q(int(r == c)) for c in range(len(A))] for r in range(len(A))]
rank = 0
for col in range(N):
    pivot = next((r for r in range(rank, len(A)) if work[r][col]), None)
    if pivot is None:
        continue
    work[rank], work[pivot] = work[pivot], work[rank]
    T[rank], T[pivot] = T[pivot], T[rank]
    scale = work[rank][col]
    work[rank] = [x / scale for x in work[rank]]
    T[rank] = [x / scale for x in T[rank]]
    for r in range(len(A)):
        if r != rank:
            coeff = work[r][col]
            work[r] = [x - coeff * y for x, y in zip(work[r], work[rank])]
            T[r] = [x - coeff * y for x, y in zip(T[r], T[rank])]
    rank += 1
    if rank == len(A):
        break
assert rank == 13
reduced_rows = matrix_product(T, [[Q(x) for x in row] for row in A])
basis_r = [1, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
basis_s = [3, -1, -3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0]
basis_t = [3, -1, -2, 0, -1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0]
for row in A:
    assert dot(row, basis_r) == dot(row, basis_s) == dot(row, basis_t) == 0
for j, row in zip(pivots, reduced_rows):
    expected = [Q(int(k == j)) for k in range(1, N + 1)]
    for f, value in zip(free, [basis_r[j - 1], basis_s[j - 1], basis_t[j - 1]]):
        expected[f - 1] -= value
    assert row == expected

point_values = []
for x in [Q(9, 80), Q(3, 20), Q(9, 32)]:
    assert all((j * x).denominator != 1 for j in range(1, N + 1))
    values = [F(v, x) for v in [basis_r, basis_s, basis_t]]
    reflected = [F(v, 1 - x) for v in [basis_r, basis_s, basis_t]]
    assert reflected == [-v for v in values]
    point_values.append({'x': str(x), 'phi': phi(x), 'reflected_phi': phi(1 - x),
                         'F_coefficients_r_s_t': values, 'reflected_F_coefficients': reflected})
assert [p['F_coefficients_r_s_t'] for p in point_values] == [[0, 0, 1], [0, 1, 1], [1, 2, 1]]
assert [(p['phi'], p['reflected_phi']) for p in point_values] == [(0, 1), (0, 0), (1, 0)]

# After s=-t and u=r+s, r=u+t. The prime exponents are a 2-column exact matrix.
basis_u = basis_r
basis_final_t = [r - s + t for r, s, t in zip(basis_r, basis_s, basis_t)]
prime_rows = {}
for p in [2, 3, 5, 7, 11, 13]:
    weights = []
    for j in range(1, N + 1):
        a, val = j, 0
        while a % p == 0:
            a //= p
            val += 1
        weights.append(j * val)
    prime_rows[p] = [dot(weights, basis_u), dot(weights, basis_final_t)]
assert prime_rows == {2: [6, -8], 3: [-3, 0], 5: [0, 5], 7: [0, 0], 11: [0, 0], 13: [0, 0]}

full_cuts = sorted({Q(k, j) for j in range(1, N + 1) for k in range(j + 1)})
full_mids = [(a + b) / 2 for a, b in zip(full_cuts, full_cuts[1:])]
corners = []
for u in [0, 1]:
    for t in [-1, 0]:
        e = [u * a + t * b for a, b in zip(basis_u, basis_final_t)]
        growth = prod((Q(j) ** (j * v) for j, v in enumerate(e, 1)), start=Q(1))
        expected = Q(64, 27) ** u * Q(3125, 256) ** t
        assert growth == expected <= Q(64, 27)
        values = [F(e, x) for x in full_mids]
        slacks = [phi(x) - v for x, v in zip(full_mids, values)]
        corners.append({'u': u, 't': t, 'e_ascending_from_j1': e, 'growth': str(growth),
                        'all_open_cells_pass': min(slacks) >= 0, 'minimum_slack': min(slacks),
                        'F_on_full_open_cells': values})

sources = [RUN / 'experiments/huan-G-factorial-divisor-test-5e2d13bb/REPORT.md',
           RUN / 'experiments/huan-G-factorial-divisor-test-5e2d13bb/check_phase_divisor.py',
           RUN / 'experiments/huan-rational-divisor-strengthening-5e2d13bb/REPORT.md',
           RUN / 'experiments/huan-rational-divisor-strengthening-5e2d13bb/phase-5-3.json',
           RUN / 'experiments/huan-rational-divisor-strengthening-5e2d13bb/FREEZE_V1.json']
out = {
    'utc': datetime.now(timezone.utc).isoformat(),
    'status': 'exact finite certificates supporting a paper theorem under explicit phase hypothesis; no Lean',
    'support_bound_proposed_by_paper_proof': 16,
    'phi_open_cells': phase_cells,
    'paired_zero_open_intervals': [[str(a), str(b)] for a, b in Z],
    'large_J_finite_check_only': {'J_range': [17, 128], 'J_cases_checked': 112,
                                 'floor_jump_instances': jump_tests, 'examples': large_J},
    'jump_witnesses': witnesses,
    'linear_system': {'row_names': row_names, 'matrix_A': A, 'rank': rank,
                      'free_indices': free, 'pivot_indices': pivots,
                      'row_transform_T': [[str(x) for x in row] for row in T],
                      'reduced_rows_TA': [[str(x) for x in row] for row in reduced_rows],
                      'basis_r': basis_r, 'basis_s': basis_s, 'basis_t': basis_t},
    'evaluation_points': point_values,
    'final_basis_u': basis_u, 'final_basis_t': basis_final_t,
    'prime_exponent_coefficients_u_t': prime_rows,
    'full_open_cell_cuts': [str(x) for x in full_cuts],
    'remaining_integer_corners': corners,
    'exact_growth_bound': '64/27',
    'source_hashes': {p.relative_to(RUN).as_posix(): digest(p) for p in sources},
    'elapsed_seconds': round(time.perf_counter() - START, 6),
    'actual_delta_integrality_to_phase_transfer_proved': False,
    'worker_Lean_invocations': 0,
}
(HERE / 'rigidity-certificate.json').write_text(json.dumps(out, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
print(json.dumps({'status': out['status'], 'jump_denominators': [w['denominator'] for w in witnesses],
                  'rank': rank, 'phase_cells_after_support_bound': len(full_mids),
                  'corners': [{k: x[k] for k in ['u', 't', 'growth', 'all_open_cells_pass']} for x in corners],
                  'elapsed_seconds': out['elapsed_seconds']}, ensure_ascii=False))
