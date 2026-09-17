"""Complete exponent-period sieve for all b=3,m=1 normalized cubic h templates."""
from pathlib import Path
import hashlib
import json
import math
import time

import numpy as np

ROOT = Path(__file__).resolve().parent
PERIOD = 55440
MAX_PRIME = 1000


def prime(p):
    return p >= 2 and all(p % d for d in range(2, math.isqrt(p)+1))


def order_two(q):
    x = 1
    for m in range(1, q*q+1):
        x = x*2 % q
        if x == 1:
            return m
    raise AssertionError(q)


def roots_table(q, m, eps, hs):
    a = np.arange(q, dtype=np.int64)
    if q % 3 == 0:
        a = a[a % 3 != 0]
    bad = np.zeros((len(hs), m), dtype=np.bool_)
    x = 1
    for s in range(m):
        D = (x-eps) % q
        E = (x*x-2) % q
        rhs = (4*a*(a-3*D)*(a-6*D)+9*a*E) % q
        coefficient = D*E % q
        if math.gcd(coefficient, q) == 1:
            possible = np.zeros(q, dtype=np.bool_)
            possible[rhs*pow(coefficient, -1, q) % q] = True
            bad[:, s] = ~possible[np.array(hs) % q]
        else:
            bad[:, s] = ~np.any((rhs[None, :]-np.array(hs)[:, None]*coefficient) % q == 0, axis=1)
        x = x*2 % q
    assert x == 1
    return bad


def minimal_period(row):
    divisors = [d for d in range(6, PERIOD+1, 6) if PERIOD % d == 0]
    for d in divisors:
        if np.array_equal(row, np.tile(row[:d], PERIOD//d)):
            return d
    return PERIOD


def main():
    start = time.time()
    mods = []
    for q in [9, 27]+[p for p in range(3, MAX_PRIME+1, 2) if prime(p)]:
        m = order_two(q)
        if PERIOD % m == 0:
            mods.append((q, m))
    mods.sort(key=lambda z: (z[0], z[1]))
    all_s = np.arange(PERIOD)
    outputs = {}
    arrays = {}
    for eps, upper, allowed in ((1, 53, (1, 5)), (-1, 62, (2, 4))):
        hs = [h for h in range(1, upper+1) if h % 3]
        mask = np.tile(np.isin(all_s % 6, allowed), (len(hs), 1))
        local = []
        for q, m in mods:
            bad = roots_table(q, m, eps, hs)
            mask &= ~bad[:, all_s % m]
            arrays[f'e{eps}_q{q}_bad'] = bad
            local.append({'q': q, 'period': m, 'prime': prime(q),
                          'bad_entries': int(np.count_nonzero(bad))})
        summaries = []
        for i, h in enumerate(hs):
            d = minimal_period(mask[i])
            classes = np.flatnonzero(mask[i, :d]).tolist()
            summaries.append({'h': h, 'period': d, 'surviving_classes': classes,
                              'class_count': len(classes),
                              'newly_eliminated': not classes and not (eps == 1 and h == 25),
                              'prior_parent_h25': eps == 1 and h == 25})
        arrays[f'e{eps}_survivors'] = mask
        arrays[f'e{eps}_h'] = np.array(hs, dtype=np.uint16)
        outputs[str(eps)] = {'h_values': hs, 'local_moduli': local, 'summaries': summaries,
                             'eliminated_h': [s['h'] for s in summaries if not s['class_count']],
                             'surviving_h': [s['h'] for s in summaries if s['class_count']]}
    np.savez_compressed(ROOT/'b3_period_sieve.npz', **arrays)
    small = []
    for j in range(4, 9):
        p = next(p for p in (3, 5, 7, 11, 13) if math.comb(16, 3) % p == 0 and math.comb(16, j) % p == 0)
        small.append({'n': 16, 'j': j, 'common_prime': p})
    out = {'period': PERIOD, 'max_prime': MAX_PRIME, 'moduli': mods,
           'by_sign': outputs, 'small_n16_witnesses': small,
           'elapsed': time.time()-start,
           'scope': 'complete finite exponent periods and all a residues; exclusion is necessary-model implication, surviving residues are not NC3 examples'}
    (ROOT/'b3_period_sieve.json').write_text(json.dumps(out, indent=2), encoding='utf-8')
    print(json.dumps({'period': PERIOD, 'moduli': len(mods), 'elapsed': out['elapsed'],
                      'signs': {eps: {'eliminated_h': s['eliminated_h'], 'surviving_h': s['surviving_h'],
                                     'survivor_counts': {str(t['h']): t['class_count'] for t in s['summaries'] if t['class_count']}}
                                for eps, s in outputs.items()}, 'small_n16': small}))


if __name__ == '__main__':
    main()
