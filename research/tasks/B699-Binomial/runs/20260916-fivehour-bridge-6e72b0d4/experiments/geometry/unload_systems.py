"""Bézout fixed-component discovery with exact low-degree factorization and traces."""
from pathlib import Path
from collections import Counter
import json
import math
import sys
import time

import sympy as sp

ROOT = Path(__file__).resolve().parent
OLD = Path.cwd()/'research/tasks/B699-Binomial/runs/20260916-paper-frontier-a1c74e93/experiments/h023'
sys.path.insert(0, str(OLD))
from probe_gcd_frontier import pool
from probe_dual import translate_order

ROWS = (1, 4, 5, 6)
POINTS = [(x, r-x) for r in ROWS for x in range(r+1)]
X, Y = sp.symbols('X Y')


def normalized(poly):
    terms = [(int(a), int(b), int(c)) for (a, b), c in sp.Poly(poly, X, Y).terms()]
    g = math.gcd(*(c for a, b, c in terms))
    if terms[0][2] < 0:
        g = -g
    return tuple((a, b, c//g) for a, b, c in terms)


def candidates():
    old = pool()
    polys = {}
    factored = 0
    for f in old:
        if f['degree'] > 3:
            continue
        expr = sum(c*X**a*Y**b for a, b, c in f['poly'])
        factors = sp.factor_list(expr)[1]
        factored += 1
        for factor, exponent in factors:
            key = normalized(factor)
            polys[key] = {'poly': key, 'degree': sp.total_degree(factor),
                          'source': 'irreducible-factor-of-old-positive'}
    for line in json.loads((ROOT/'line_system_probe.json').read_text())['lines']:
        expr = sum(c*X**a*Y**b for a, b, c in line['poly'])
        key = normalized(expr)
        polys[key] = {'poly': key, 'degree': 1, 'source': 'stage1-grid-line'}
    fs = []
    for f in polys.values():
        f['degree'] = int(f['degree'])
        f['orders'] = [translate_order(f['poly'], *p) for p in POINTS]
        fs.append(f)
    fs.sort(key=lambda f: (f['degree'], f['poly']))
    return fs, factored


def weights(D):
    w = {r: 0 for r in ROWS}
    for _ in range(D+1):
        r = min(ROWS, key=lambda r: ((r+1)*(w[r]+1), r))
        w[r] += 1
    return w


def unload(D, w, fs):
    degree = D
    m = [w[x+y] for x, y in POINTS]
    trace = []
    used = Counter()
    while degree >= 0 and any(m):
        violated = [(i, sum(a*b for a, b in zip(m, f['orders'])))
                    for i, f in enumerate(fs)
                    if sum(a*b for a, b in zip(m, f['orders'])) > degree*f['degree']]
        if not violated:
            break
        i, dot = max(violated, key=lambda z: (z[1]-degree*fs[z[0]]['degree'], -fs[z[0]]['degree'], -z[0]))
        f = fs[i]
        trace.append({'candidate': i, 'degree_before': degree, 'intersection_lower': dot,
                      'bezout_upper': degree*f['degree']})
        used[i] += 1
        degree -= f['degree']
        m = [max(0, a-b) for a, b in zip(m, f['orders'])]
    status = ('empty-by-negative-degree' if degree < 0 else
              'constant-residual' if not any(m) else 'residual-unresolved')
    symmetric = all(m[POINTS.index((y, x))] == m[i] for i, (x, y) in enumerate(POINTS))
    return {'initial_degree': D, 'initial_weights': w, 'initial_W': sum(w.values()),
            'status': status, 'residual_degree': degree, 'residual_multiplicities': m,
            'residual_symmetric': symmetric,
            'conditions': sum(a*(a+1)//2 for a in m),
            'columns': (degree+1)*(degree+2)//2 if degree >= 0 else 0,
            'factors': [{'candidate': i, 'exponent': e} for i, e in used.items()],
            'trace': trace}


def main():
    start = time.time()
    fs, count = candidates()
    tests = [unload(D, weights(D), fs) for D in (12, 20, 32, 50, 80)]
    out = {'elapsed': time.time()-start, 'old_low_degree_factored': count,
           'candidates': fs, 'tests': tests,
           'scope': 'Bézout fixed components only; selected row systems; no universal interpolation obstruction'}
    (ROOT/'unload_systems.json').write_text(json.dumps(out, indent=2), encoding='utf-8')
    print(json.dumps({'elapsed': out['elapsed'], 'old_low_degree_factored': count,
                      'irreducible_candidates': len(fs),
                      'tests': [{k: v for k, v in t.items() if k not in ('trace', 'factors', 'residual_multiplicities')}
                                | {'factor_count': sum(f['exponent'] for f in t['factors'])} for t in tests]}))


if __name__ == '__main__':
    main()
