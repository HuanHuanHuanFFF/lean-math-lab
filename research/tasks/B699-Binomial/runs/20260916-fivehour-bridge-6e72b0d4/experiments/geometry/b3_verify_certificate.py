"""Independent standard-library polynomial gcd and complete-period bitset checker."""
from pathlib import Path
from fractions import Fraction
import hashlib
import json
import math
import time

ROOT = Path(__file__).resolve().parent


def prime(p):
    if p < 2:
        return False
    return all(p % d for d in range(2, math.isqrt(p)+1))


def trim(f):
    while f and f[-1] == 0:
        f.pop()
    return f


def remainder(f, g, p):
    f = trim([x % p for x in f])
    inv = pow(g[-1], -1, p)
    while len(f) >= len(g):
        shift = len(f)-len(g)
        factor = f[-1]*inv % p
        for i, value in enumerate(g):
            f[i+shift] = (f[i+shift]-factor*value) % p
        trim(f)
    return f


def multiply(f, g, modulus, p):
    result = [0]*(len(f)+len(g)-1)
    for i, a in enumerate(f):
        for j, b in enumerate(g):
            result[i+j] = (result[i+j]+a*b) % p
    return remainder(result, modulus, p)


def no_root_by_gcd(eps, h, p, s):
    x = pow(2, s, p)
    D, E = (x-eps) % p, (x*x-2) % p
    poly = [-h*D*E % p, (72*D*D+9*E) % p, -36*D % p, 4 % p]
    value, power, exponent = [1], [0, 1], p
    while exponent:
        if exponent & 1:
            value = multiply(value, power, poly, p)
        power = multiply(power, power, poly, p)
        exponent //= 2
    value += [0]*max(0, 2-len(value))
    value[1] = (value[1]-1) % p
    f, g = poly, trim(value)
    while g:
        f, g = g, remainder(f, g, p)
    return len(f) == 1


def direct_P(eps, h, x, a):
    D = x-eps
    return 4*a*(a-3*D)*(a-6*D)-(h*D-9*a)*(x*x-2)


def main():
    start = time.time()
    path = ROOT/'b3_cover_certificate.json'
    data = json.loads(path.read_text())
    L = data['global_period']
    assert L == 55440
    repeats = {}
    def mask(m, classes):
        assert L % m == 0
        if m not in repeats:
            repeats[m] = ((1 << L)-1)//((1 << m)-1)
        return sum(1 << r for r in classes)*repeats[m]
    checked = 0
    eliminated = {1: [], -1: []}
    survivors = {1: [], -1: []}
    for template in data['templates']:
        eps, h = template['epsilon'], template['h']
        assert eps in (-1, 1) and h % 3 != 0
        assert 1 <= h <= (53 if eps == 1 else 62)
        allowed = mask(6, [1, 5] if eps == 1 else [2, 4])
        covered = 0
        for entry in template['cover']:
            q, m = entry['q'], entry['period']
            assert math.gcd(2, q) == 1 and pow(2, m, q) == 1 and L % m == 0
            for s in entry['bad_exponents']:
                assert 0 <= s < m
                if q % 3 == 0:
                    assert q in (3, 9, 27)
                    x = pow(2, s, q)
                    assert all(direct_P(eps, h, x, a) % q for a in range(q) if a % 3)
                else:
                    assert prime(q)
                    assert no_root_by_gcd(eps, h, q, s), (eps, h, q, s)
                checked += 1
            covered |= mask(m, entry['bad_exponents'])
        remaining = allowed & ~covered
        expected = mask(template['survivor_period'], template['surviving_exponents'])
        assert remaining == expected
        if remaining:
            survivors[eps].append({'h': h, 'period': template['survivor_period'],
                                   'classes': template['surviving_exponents']})
        else:
            eliminated[eps].append(h)
    assert len(data['templates']) == 78
    assert len(eliminated[1]) == 28 and len(eliminated[-1]) == 36
    seed_h = set()
    for point in data['small_rational_points']:
        eps, h = point['epsilon'], point['h']
        x, a = Fraction(point['x']), Fraction(point['a'])
        e = point['exponent_seed']
        assert x == Fraction(2)**e
        assert direct_P(eps, h, x, a) == 0
        assert a.denominator & (a.denominator-1) == 0
        assert a.numerator % 3
        assert e % 6 in ((1, 5) if eps == 1 else (2, 4))
        seed_h.add((eps, h))
    assert seed_h == {(eps, t['h']) for eps, ts in survivors.items() for t in ts}
    for witness in data['small_n16_witnesses']:
        n, j, p = witness['n'], witness['j'], witness['common_prime']
        assert n == 16 and prime(p) and p >= 3
        assert math.comb(n, 3) % p == math.comb(n, j) % p == 0
    # Regression of the odd-derivative two-adic lift, distinct from the arbitrary-k proof.
    for eps in (-1, 1):
        for h in range(1, 63):
            if h % 3 == 0:
                continue
            f = lambda a: 2*a**3+18*eps*a*a+27*a-eps*h
            a = h % 2
            for k in range(1, 17):
                lifts = [b for b in (a, a+2**k) if f(b) % 2**(k+1) == 0]
                assert len(lifts) == 1
                a = lifts[0]
    out = {'status': 'PASS', 'period': L, 'templates': 78,
           'independent_no_root_checks': checked, 'eliminated_h': eliminated,
           'survivors': survivors, 'all_survivor_h_have_exact_seed': True,
           'small_n16_original_witnesses_verified': 5,
           'two_adic_lift_regression_levels': 17,
           'certificate_sha256': hashlib.sha256(path.read_bytes()).hexdigest(),
           'elapsed': time.time()-start,
           'scope': 'complete period exclusions; residual h local barrier only for the stated necessary model, not full NC3'}
    (ROOT/'b3_verification.json').write_text(json.dumps(out, indent=2), encoding='utf-8')
    print(json.dumps(out))


if __name__ == '__main__':
    main()
