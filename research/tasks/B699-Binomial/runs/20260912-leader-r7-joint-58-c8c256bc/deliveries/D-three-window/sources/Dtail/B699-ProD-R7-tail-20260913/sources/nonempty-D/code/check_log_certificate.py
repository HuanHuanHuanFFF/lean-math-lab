#!/usr/bin/env python3
"""Independent, integer-only acceptance of the two fixed-log certificates.

No generator import, Fraction arithmetic, floating point, or continued-fraction
library. Each logarithm is enclosed using independently rounded fixed-point
series. This checks finite data; the reduction from B699 is in notes/PROOFS.md.
"""
from __future__ import annotations
import argparse
import copy
import json
from math import gcd, isqrt
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
B0 = 3 * 10**22
SCALE = 1 << 768


def require(ok: bool, message: str) -> None:
    if not ok:
        raise ValueError(message)


def ceil_div(a: int, b: int) -> int:
    require(a >= 0 and b > 0, 'invalid ceil division')
    return (a + b - 1) // b


def series(a: int, b: int, count: int) -> tuple[int, int]:
    """Enclose SCALE * sum_{k>=0} (a/b)^k/(2k+1)."""
    require(0 < a < b and count > 0, 'invalid series arguments')
    apow = bpow = 1
    lower = 0
    for k in range(count):
        lower += (SCALE * apow) // (bpow * (2*k+1))
        apow *= a
        bpow *= b
    tail = ceil_div(SCALE * apow * b, bpow * (2*count+1) * (b-a))
    # Each of the count rounded terms loses strictly less than one unit.
    return lower, lower + count + tail


def log_intervals(requested=(3, 6)) -> dict[int, tuple[int, int]]:
    a, b = series(1, 9, 192)
    result = {2: ((2*a)//3, ceil_div(2*b, 3))}
    for D, numerator in ((3, 1), (6, 2)):
        if D not in requested:
            continue
        a, b = series(numerator, 3, 512)
        z = isqrt(D*SCALE*SCALE)
        require(z*z < D*SCALE*SCALE < (z+1)*(z+1), 'sqrt enclosure')
        result[D] = ((2*z*a)//(3*SCALE), ceil_div(2*(z+1)*b, 3*SCALE))
    return result


def binary_sqrt(n: int) -> int:
    """Binary square root, separate from the builder's math.isqrt terminal test."""
    require(n >= 0, 'negative square root')
    lo, hi = 0, 1 << ((n.bit_length()+1)//2)
    while lo+1 < hi:
        mid = (lo+hi)//2
        if mid*mid <= n:
            lo = mid
        else:
            hi = mid
    return hi if hi*hi == n else lo


def check(data: dict) -> dict:
    require(set(data) == {'schema', 'B', 'analytic_v_upper_exclusive',
                         'reduced_v_upper_exclusive', 'approximation_certificates',
                         'terminal_check'}, 'unexpected/missing top-level fields')
    require(data['schema'] == 'B699-ProD-two-log-1', 'schema')
    require(data['B'] == str(B0), 'B must not be weakened')
    require(data['analytic_v_upper_exclusive'] == str(10**22), 'analytic bound')
    require(data['reduced_v_upper_exclusive'] == 96, 'terminal bound')
    rows = data['approximation_certificates']
    require(isinstance(rows, list) and len(rows) == 2, 'exactly two rows needed')
    require([x.get('D') for x in rows] == [3, 6], 'missing/duplicate fixed logarithm')
    iv = log_intervals()
    checked_rows = []
    for row in rows:
        require(set(row) == {'D', 'r', 's'}, 'row fields')
        require(isinstance(row['r'],str) and isinstance(row['s'],str)
                and len(row['r'])<=64 and len(row['s'])<=64, 'certificate integer size/type')
        D, r, s = row['D'], int(row['r']), int(row['s'])
        require(r > 0 and s > B0, 'positive numerator and large denominator')
        require(gcd(r, s) == 1, 'coprimality')
        require(20*s < 2**96, 'denominator too large for claimed finite range')
        for numerator, denominator in ((iv[D][0], iv[2][1]),
                                       (iv[D][1], iv[2][0])):
            require(2*B0*abs(s*numerator-r*denominator) < denominator,
                    f'logarithm enclosure failed for D={D}')
        checked_rows.append({'D':D, 'denominator_bits':s.bit_length(),
                             'twenty_s_less_than_2pow96':True})
    require(96**9 == 692533995824480256 < 10**18, 'analytic coefficient')
    require(2*10**22 + 5 < 10**23, 'coarse log upper argument')
    require(10**22//2 > 2 + 69*10**18, 'coarse root cutoff')
    require(2*10**22 + 5 < B0, 'exponent coefficient bound')
    terminals = data['terminal_check']
    require(set(terminals) == {'1', '2'}, 'both conics required')
    total = 0
    for a in (1, 2):
        require(terminals[str(a)] == {'v_min':3, 'v_max':95, 'solutions':[]},
                'terminal certificate scope/content')
        for v in range(3, 96):
            n = 2**v
            numerator = 4*a*(n-1)*(n-2) + 3
            if numerator % 3 == 0:
                z = binary_sqrt(numerator//3)
                require(z*z <= numerator//3 < (z+1)*(z+1), 'integer sqrt validation')
                require(3*z*z != numerator, f'unexpected conic solution a={a}, v={v}')
            total += 1
    return {'status':'PASS', 'method':'integer fixed-point log enclosures plus binary square roots',
            'fixed_point_bits':768, 'series_terms':[192,512,512],
            'approximation_rows':checked_rows, 'terminal_cells':total,
            'terminal_solutions':0}


def mutation_tests(data: dict) -> int:
    variants = []
    def add(f):
        x = copy.deepcopy(data); f(x); variants.append(x)
    add(lambda x: x['approximation_certificates'].pop())
    add(lambda x: x['approximation_certificates'].reverse())
    for pos in (0,1):
        for field in ('r','s'):
            for delta in (-1,1):
                add(lambda x, p=pos, f=field, d=delta:
                    x['approximation_certificates'][p].__setitem__(f,
                    str(int(x['approximation_certificates'][p][f])+d)))
    add(lambda x: x.__setitem__('B', str(B0//100)))
    add(lambda x: x.__setitem__('analytic_v_upper_exclusive', str(10**21)))
    add(lambda x: x.__setitem__('reduced_v_upper_exclusive',95))
    add(lambda x: x['terminal_check'].pop('2'))
    add(lambda x: x['terminal_check']['1'].__setitem__('v_max',94))
    add(lambda x: x['terminal_check']['2'].__setitem__('solutions',[[3,1]]))
    for idx, x in enumerate(variants):
        try:
            check(x)
        except (ValueError, TypeError, KeyError):
            continue
        raise ValueError(f'bad-certificate mutation {idx} was accepted')
    return len(variants)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument('certificate', nargs='?', type=Path,
                        default=ROOT/'evidence/two-log-certificates.json')
    parser.add_argument('--mutations', action='store_true')
    args = parser.parse_args()
    require(args.certificate.stat().st_size<=16384, 'certificate file too large')
    data = json.loads(args.certificate.read_text(encoding='utf-8'))
    out = check(data)
    if args.mutations:
        out['bad_certificates_rejected'] = mutation_tests(data)
    print(json.dumps(out, sort_keys=True))


if __name__ == '__main__':
    main()
