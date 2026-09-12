"""Check the serialized finite proof certificate without Gaussian elimination."""
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
path = HERE / 'rigidity-certificate.json'
data = json.loads(path.read_text(encoding='utf-8'))


def phi(x):
    den = x.denominator
    return int(2 * ((3 * x.numerator) % den) + ((2 * x.numerator) % den) >= 2 * den)


def F(e, x):
    return sum(v * ((j * x.numerator) // x.denominator) for j, v in enumerate(e, 1))


Z = [(Q(a), Q(b)) for a, b in data['paired_zero_open_intervals']]
denominators = [b for b in range(1, 17) if any(
    gcd(a, b) == 1 and any(l < Q(a, b) < r for l, r in Z) for a in range(1, b))]
assert denominators == [x['denominator'] for x in data['jump_witnesses']]
A = [[int(j % b == 0) for j in range(1, 17)] for b in denominators] + [[1] * 16, list(range(1, 17))]
assert A == data['linear_system']['matrix_A']
T = [[Q(x) for x in row] for row in data['linear_system']['row_transform_T']]
R = [[Q(x) for x in row] for row in data['linear_system']['reduced_rows_TA']]
assert [[sum(T[i][k] * A[k][j] for k in range(13)) for j in range(16)] for i in range(13)] == R
pivots = data['linear_system']['pivot_indices']
free = data['linear_system']['free_indices']
assert sorted(pivots + free) == list(range(1, 17))
for i, row in enumerate(R):
    assert [row[j - 1] for j in pivots] == [Q(int(i == k)) for k in range(13)]
for name in ['basis_r', 'basis_s', 'basis_t']:
    v = data['linear_system'][name]
    assert all(sum(a * b for a, b in zip(row, v)) == 0 for row in A)
for w in data['jump_witnesses']:
    x, eps, b = Q(w['point']), Q(w['epsilon']), w['denominator']
    assert gcd(w['numerator'], b) == 1
    assert any(l < x - eps < x + eps < r for l, r in Z)
    assert all(phi(y) == phi(1 - y) == 0 for y in [x - eps, x + eps])
    assert [floor(j * (x + eps)) - floor(j * (x - eps)) for j in range(1, 17)] == w['jump_row']

points = sorted({Q(k, j) for j in range(1, 17) for k in range(j + 1)})
assert [str(x) for x in points] == data['full_open_cell_cuts']
mids = [(a + b) / 2 for a, b in zip(points, points[1:])]
corner_results = []
for case in data['remaining_integer_corners']:
    e = case['e_ascending_from_j1']
    assert sum(e) == sum(j * v for j, v in enumerate(e, 1)) == 0
    numerator = prod(j ** (j * v) for j, v in enumerate(e, 1) if v > 0)
    denominator = prod(j ** (-j * v) for j, v in enumerate(e, 1) if v < 0)
    growth = Q(numerator, denominator)
    assert str(growth) == case['growth']
    assert growth == Q(64, 27) ** case['u'] * Q(3125, 256) ** case['t'] <= Q(64, 27)
    values = [F(e, x) for x in mids]
    assert values == case['F_on_full_open_cells']
    passes = all(v <= phi(x) for x, v in zip(mids, values))
    assert passes == case['all_open_cells_pass']
    corner_results.append({'u': case['u'], 't': case['t'], 'growth': str(growth), 'phase_pass': passes})

# An extra finite classification check; the growth upper bound does not need it.
bad_corner = next(x for x in data['remaining_integer_corners'] if (x['u'], x['t']) == (0, -1))
x = Q(17, 25)
assert F(bad_corner['e_ascending_from_j1'], x) == 1 and phi(x) == 0
counter = {'scope': 'inadmissibility of one necessary-parameter corner, not a counterexample to the theorem',
           'u': 0, 't': -1, 'x': str(x), 'F': 1, 'phi': 0}
assert all(row['phase_pass'] for row in corner_results if (row['u'], row['t']) != (0, -1))

for rel, expected in data['source_hashes'].items():
    blob = (RUN / rel).read_bytes()
    assert len(blob) == expected['bytes'] and sha256(blob).hexdigest() == expected['sha256']
out = {'utc': datetime.now(timezone.utc).isoformat(),
       'status': 'independent exact certificate check passed; paper theorem still not Lean compiled',
       'certificate_sha256': sha256(path.read_bytes()).hexdigest(),
       'row_transform_checked': True, 'rank_witness_identity_size': 13,
       'jump_denominators': denominators, 'corner_results': corner_results,
       'excluded_corner_witness': counter, 'input_sources_unchanged': True,
       'elapsed_seconds': round(time.perf_counter() - START, 6),
       'new_Lean_results': 0, 'actual_integrality_to_phase_transfer_proved': False}
(HERE / 'independent-check.json').write_text(json.dumps(out, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
print(json.dumps({k: out[k] for k in ['status', 'rank_witness_identity_size', 'corner_results',
                                    'elapsed_seconds']}, ensure_ascii=False))
