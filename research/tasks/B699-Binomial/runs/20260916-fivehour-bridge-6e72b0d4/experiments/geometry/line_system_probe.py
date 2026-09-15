"""Bounded geometric discovery; exact coverage checks certify returned weights only."""
from pathlib import Path
from fractions import Fraction
from itertools import combinations
import hashlib
import json
import math
import sys
import time

ROOT = Path(__file__).resolve().parent
OLD = ROOT.parents[2] / '20260916-paper-frontier-a1c74e93' / 'experiments/h023'
# Resolve from the explicitly supplied shared worktree, avoiding path-depth assumptions.
OLD = Path.cwd() / 'research/tasks/B699-Binomial/runs/20260916-paper-frontier-a1c74e93/experiments/h023'
sys.path.insert(0, str(OLD))
from probe_dual import LP
from probe_gcd_frontier import pool

RS = (1, 4, 5, 6)
PTS = [(b, r-b) for r in RS for b in range(r+1)]
SMALL = {1: 14, 4: 28, 5: 210, 6: 84}


def line(p, q):
    x, y = p
    u, v = q
    a, b, c = y-v, u-x, x*v-u*y
    g = math.gcd(a, b, c)
    a, b, c = a//g, b//g, c//g
    if next(z for z in (a, b, c) if z) < 0:
        a, b, c = -a, -b, -c
    return a, b, c


def geometric_lines():
    out = []
    for a, b, c in sorted({line(p, q) for p, q in combinations(PTS, 2)}):
        orders = [int(a*x+b*y+c == 0) for x, y in PTS]
        missing = []
        for r in RS:
            vals = [a*x+b*(r-x)+c for x in range(r+1)]
            if all(vals):
                prod = abs(math.prod(vals))
                lcm = math.lcm(*(abs(z) for z in vals))
                rough = lcm
                for p in (2, 3, 5):
                    while rough % p == 0:
                        rough //= p
                if rough % 7 == 0 and rough % 49 != 0:
                    rough //= 7
                missing.append({'row': r, 'values': vals,
                                'product': prod, 'lcm': lcm, 'rough_lcm': rough,
                                'n_upper': SMALL[r]*rough+r})
        # A line with a positive quadrant unbounded ray necessarily has opposite signs.
        out.append({'poly': [[1, 0, a], [0, 1, b], [0, 0, c]],
                    'line': [a, b, c], 'degree': 1, 'orders': orders,
                    'origin_order': int(c == 0),
                    'coefficient_norm': abs(a)+abs(b)+abs(c),
                    'source': 'all-grid-lines', 'missing_rows': missing,
                    'unbounded_positive_ray': a*b < 0,
                    'zero_branch_n_upper': min((m['n_upper'] for m in missing), default=None)})
    return out


def primal(fs, name):
    size = len(fs)
    A = [[-f['orders'][i] for f in fs] + [int(x+y == r) for r in RS]
         for i, (x, y) in enumerate(PTS)]
    b = [0]*len(PTS)
    deg = [f['degree'] for f in fs] + [0]*len(RS)
    A += [deg, [-z for z in deg]]
    b += [1, -1]
    result = LP(A, b, [0]*size+[1]*len(RS)).solve()
    if result is None:
        return {'name': name, 'feasible': False}
    fr = [Fraction(float(z)).limit_denominator(10**7) for z in result]
    lcm = math.lcm(*(z.denominator for z in fr))
    vv = [int(z*lcm) for z in fr]
    g = math.gcd(*vv)
    vv = [z//g for z in vv]
    selected = [dict(f, weight=vv[i]) for i, f in enumerate(fs) if vv[i]]
    weights = dict(zip(RS, vv[size:]))
    D = sum(f['degree']*f['weight'] for f in selected)
    W = sum(weights.values())
    assert all(z >= 0 for z in vv)
    assert all(sum(f['orders'][i]*f['weight'] for f in selected) >= weights[x+y]
               for i, (x, y) in enumerate(PTS))
    return {'name': name, 'feasible': True, 'pool_size': size,
            'D': D, 'W': W, 'strict': W > D, 'weights': weights,
            'exact_coverage': True, 'selected': selected}


def dual(fs):
    A = [f['orders'][:] for f in fs]
    b = [f['degree'] for f in fs]
    for r in RS:
        row = [int(x+y == r) for x, y in PTS]
        A.extend([row, [-z for z in row]])
        b.extend([1, -1])
    for i, p in enumerate(PTS):
        j = PTS.index(p[::-1])
        if i >= j:
            continue
        row = [0]*len(PTS)
        row[i], row[j] = 1, -1
        A.extend([row, [-z for z in row]])
        b.extend([0, 0])
    v = LP(A, b, [0]*len(PTS)).solve()
    if v is None:
        return {'feasible': False}
    fr = [Fraction(float(z)).limit_denominator(10**7) for z in v]
    exact = all(z >= 0 for z in fr) and all(sum(a*z for a, z in zip(row, fr)) <= bound
                                          for row, bound in zip(A, b))
    return {'feasible': True, 'weights': [str(z) for z in fr],
            'sum_squares': str(sum(z*z for z in fr)), 'exact_all_inequalities': exact,
            'constraints': len(A),
            'scope': 'finite listed pool product cone only; no universal polynomial obstruction'}


def main():
    start = time.time()
    lines = geometric_lines()
    old = pool()
    results = [primal(lines, 'all-lines'), primal(old+lines, 'frozen-positive-plus-all-lines')]
    dual_result = dual(old+lines)
    vectors = sorted({(tuple(f['orders']), f['degree']) for f in old+lines})
    (ROOT/'finite_cone_vectors.json').write_text(json.dumps(
        [{'orders': list(v), 'degree': d} for v, d in vectors], separators=(',', ':')),
        encoding='utf-8')
    out = {'elapsed': time.time()-start, 'lines': lines, 'tests': results, 'dual': dual_result,
           'scope': 'discovery and exact finite coverage; line nonzero branches pending'}
    path = ROOT/'line_system_probe.json'
    path.write_text(json.dumps(out, indent=2), encoding='utf-8')
    summary = {'elapsed': out['elapsed'], 'lines': len(lines),
               'unbounded_positive_lines': sum(f['unbounded_positive_ray'] for f in lines),
               'positive_lines_without_missing_row': [f['line'] for f in lines if f['unbounded_positive_ray'] and not f['missing_rows']],
               'dual': dual_result,
               'tests': [{k: v for k, v in t.items() if k != 'selected'} |
                         {'factors': len(t.get('selected', [])),
                          'lines_used': [{'line': f['line'], 'weight': f['weight'], 'upper': f['zero_branch_n_upper']}
                                         for f in t.get('selected', []) if f['source'] == 'all-grid-lines']}
                         for t in results],
               'output_sha256': hashlib.sha256(path.read_bytes()).hexdigest()}
    print(json.dumps(summary))


if __name__ == '__main__':
    main()
