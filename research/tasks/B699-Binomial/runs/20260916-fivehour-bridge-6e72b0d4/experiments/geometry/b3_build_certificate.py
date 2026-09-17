"""Extract a compact complete-period no-root cover and exact small rational points."""
from pathlib import Path
from fractions import Fraction
import hashlib
import json
import math
import time

import numpy as np
import sympy as sp

ROOT = Path(__file__).resolve().parent


def main():
    start = time.time()
    data = json.loads((ROOT/'b3_period_sieve.json').read_text())
    raw = np.load(ROOT/'b3_period_sieve.npz')
    L = data['period']
    repeat = {}
    def mask(period, residues):
        if period not in repeat:
            repeat[period] = ((1 << L)-1)//((1 << period)-1)
        return sum(1 << int(r) for r in residues)*repeat[period]
    output = []
    points = []
    A = sp.symbols('a')
    for sign, record in data['by_sign'].items():
        eps = int(sign)
        allowed = (1, 5) if eps == 1 else (2, 4)
        allowed_mask = mask(6, allowed)
        for index, summary in enumerate(record['summaries']):
            h = summary['h']
            survivors = mask(summary['period'], summary['surviving_classes'])
            uncovered = allowed_mask & ~survivors
            candidates = []
            for q, m in data['moduli']:
                bad = np.flatnonzero(raw[f'e{eps}_q{q}_bad'][index])
                bad = [int(s) for s in bad if any((s-r) % math.gcd(m, 6) == 0 for r in allowed)]
                cover = mask(m, bad)
                if cover & uncovered:
                    candidates.append({'q': q, 'period': m, 'bad_exponents': bad, 'cover': cover})
            chosen = []
            while uncovered:
                best = max(candidates, key=lambda c: ((c['cover'] & uncovered).bit_count(), -c['q']))
                assert best['cover'] & uncovered
                chosen.append({k: v for k, v in best.items() if k != 'cover'})
                uncovered &= ~best['cover']
                candidates.remove(best)
            output.append({'epsilon': eps, 'h': h, 'survivor_period': summary['period'],
                           'surviving_exponents': summary['surviving_classes'], 'cover': chosen,
                           'prior_parent_h25': summary['prior_parent_h25']})
            if summary['class_count']:
                for e in ((-1, 1) if eps == 1 else (-2, 2)):
                    x = sp.Rational(2)**e
                    D = x-eps
                    P = 4*A*(A-3*D)*(A-6*D)-(h*D-9*A)*(x*x-2)
                    for a in sp.polys.polytools.ground_roots(sp.Poly(P, A, domain=sp.QQ)):
                        assert sp.simplify(P.subs(A, a)) == 0
                        den = int(sp.denom(a))
                        assert den & (den-1) == 0
                        assert int(sp.numer(a)) % 3 != 0
                        J = x+eps
                        numerator = abs(int(sp.numer(J)))
                        count = 0
                        while numerator % 3 == 0:
                            numerator //= 3
                            count += 1
                        assert count == 1
                        zeta = a*(x+eps)/3
                        original_legal = bool(x.q == 1 and zeta.q == 1 and 4 <= min(zeta, x*x-zeta) <= x*x/2)
                        points.append({'epsilon': eps, 'h': h, 'exponent_seed': e,
                                       'x': str(x), 'a': str(a),
                                       'power_of_two_denominator': den,
                                       'within_weak_a_range': bool(0 < a < 3*D and x >= 2),
                                       'original_legal_input': original_legal})
    reflection = sp.expand(4*(6*sp.Symbol('D')-A)*(3*sp.Symbol('D')-A)*(-A))
    x, D, h = sp.symbols('x D h')
    poly = lambda hh, aa: 4*aa*(aa-3*D)*(aa-6*D)-(hh*D-9*aa)*(x*x-2)
    assert sp.expand(poly(h, 6*D-A)+poly(54-h, A)) == 0
    small = data['small_n16_witnesses']
    out = {'global_period': L, 'templates': output, 'small_rational_points': points,
           'reflection': 'P_h(x,6D-a)=-P_(54-h)(x,a)',
           'small_n16_witnesses': small,
           'source_sieve_sha256': hashlib.sha256((ROOT/'b3_period_sieve.json').read_bytes()).hexdigest(),
           'elapsed': time.time()-start,
           'scope': 'complete-cover certificate and exact rational seed points; rational seeds are not NC3 counterexamples'}
    (ROOT/'b3_cover_certificate.json').write_text(json.dumps(out, indent=2), encoding='utf-8')
    print(json.dumps({'templates': len(output), 'cover_entries': sum(len(t['cover']) for t in output),
                      'no_root_tests': sum(len(c['bad_exponents']) for t in output for c in t['cover']),
                      'rational_points': points, 'elapsed': out['elapsed']}))


if __name__ == '__main__':
    main()
