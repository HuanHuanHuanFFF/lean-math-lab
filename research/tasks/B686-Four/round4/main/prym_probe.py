"""Bounded exact finite-field diagnostic for the k=5 curve and its quotient.

This is computation, NOT a Lean proof of the geometry or an integral-point
classification. No floating-point arithmetic is used in point counts.
"""
import argparse
import json
import math
import time
from pathlib import Path
import numpy as np


def trim(a, p):
    a = [int(c) % p for c in a]
    while len(a) > 1 and not a[-1]:
        a.pop()
    return a or [0]


def sub(a, b, p):
    return trim([(a[i] if i < len(a) else 0) -
                 (b[i] if i < len(b) else 0)
                 for i in range(max(len(a), len(b)))], p)


def rem(a, b, p):
    a, b = trim(a, p), trim(b, p)
    assert b != [0]
    inv = pow(b[-1], -1, p)
    while len(a) >= len(b) and a != [0]:
        c, j = a[-1] * inv % p, len(a) - len(b)
        for i, bi in enumerate(b):
            a[i + j] = (a[i + j] - c * bi) % p
        a = trim(a, p)
    return a


def gcd(a, b, p):
    while trim(b, p) != [0]:
        a, b = b, rem(a, b, p)
    inv = pow(trim(a, p)[-1], -1, p)
    return trim([v * inv for v in a], p)


def mulmod(a, b, modulus, p):
    c = [0] * (len(a) + len(b) - 1)
    for i, ai in enumerate(a):
        for j, bj in enumerate(b):
            c[i + j] += ai * bj
    return rem(c, modulus, p)


def powmod(a, exponent, modulus, p):
    out = [1]
    while exponent:
        if exponent & 1:
            out = mulmod(out, a, modulus, p)
        a = mulmod(a, a, modulus, p)
        exponent //= 2
    return out


def prime_divisors(n):
    return [d for d in range(2, n + 1)
            if n % d == 0 and all(d % e for e in range(2, math.isqrt(d) + 1))]


def irreducible(f, p):
    f = trim(f, p)
    n = len(f) - 1
    if n <= 0:
        return False
    x = rem([0, 1], f, p)
    h = x
    checks = {n // d for d in prime_divisors(n)}
    for r in range(1, n + 1):
        h = powmod(h, p, f, p)
        if r in checks and len(gcd(sub(h, x, p), f, p)) != 1:
            return False
    return sub(h, x, p) == [0]


def field_modulus(p, r):
    if r == 1:
        return [0, 1]
    for code in range(1, p ** r):
        digits = [(code // p ** i) % p for i in range(r)]
        if digits[0] and irreducible(digits + [1], p):
            return digits + [1]
    raise AssertionError("finite field modulus not found")


class Field:
    def __init__(self, p, r):
        self.p, self.r, self.q = p, r, p ** r
        self.modulus = field_modulus(p, r)
        self.weights = np.array([p ** i for i in range(r)], dtype=np.int64)

    def digits(self, a):
        a = np.asarray(a, dtype=np.int64)
        return [(a // int(w)) % self.p for w in self.weights]

    def encode(self, digits):
        return sum(int(w) * (c % self.p) for w, c in zip(self.weights, digits))

    def linear(self, terms, constant=0):
        ds = [0] * self.r
        ds[0] = constant
        for coefficient, a in terms:
            for i, ai in enumerate(self.digits(a)):
                ds[i] = ds[i] + coefficient * ai
        return self.encode(ds)

    def multiply(self, a, b):
        ad, bd = self.digits(a), self.digits(b)
        c = [0] * (2 * self.r - 1)
        for i, ai in enumerate(ad):
            for j, bj in enumerate(bd):
                c[i + j] = c[i + j] + ai * bj
        c = [ci % self.p for ci in c]
        for j in range(2 * self.r - 2, self.r - 1, -1):
            for i in range(self.r):
                c[j - self.r + i] = (c[j - self.r + i] - c[j] * self.modulus[i]) % self.p
        return self.encode(c[:self.r])


def count_curves(p, r):
    started = time.monotonic()
    f = Field(p, r)
    x = np.arange(f.q, dtype=np.int64)
    x2 = f.multiply(x, x)
    x3 = f.multiply(x, x2)
    x4 = f.multiply(x2, x2)
    x5 = f.multiply(x2, x3)
    x6 = f.multiply(x3, x3)
    fx = f.linear([(1, x5), (-5, x3), (4, x)])
    four_fx = f.linear([(4, fx)])
    hist = np.bincount(fx, minlength=f.q)
    hist4 = np.bincount(four_fx, minlength=f.q)
    c_affine = int(np.dot(hist, hist4))
    g = math.gcd(5, f.q - 1)
    c_infinity = g if pow(4, (f.q - 1) // g, p) == 1 else 0
    sextic = f.linear([(9, x6), (64, x5), (-200, x3), (64, x)], 144)
    square_hist = np.bincount(x2, minlength=f.q)
    d_affine = int(np.sum(square_hist[sextic]))
    assert square_hist[0] == 1
    assert set(map(int, np.unique(square_hist))).issubset({0, 1, 2})
    return dict(p=p, r=r, q=f.q, modulus=f.modulus,
                C=c_affine + c_infinity, D=d_affine + 2,
                C_affine=c_affine, C_infinity=c_infinity,
                D_affine=d_affine, D_infinity=2,
                seconds=round(time.monotonic() - started, 3))


def weil_from_sums(p, genus, sums):
    assert len(sums) >= genus
    coefficients = [1]
    for j in range(1, genus + 1):
        numerator = -sum(coefficients[j-i] * sums[i-1] for i in range(1, j+1))
        assert numerator % j == 0
        coefficients.append(numerator // j)
    return coefficients + [p ** j * coefficients[genus-j] for j in range(1, genus+1)]


def power_sums(coefficients, count):
    degree = len(coefficients) - 1
    s = []
    for j in range(1, count + 1):
        total = sum(coefficients[i] * s[j-i-1] for i in range(1, min(j, degree+1)))
        if j <= degree:
            total += j * coefficients[j]
        s.append(-total)
    return s


def polynomial_product_desc(a, b):
    out = [0] * (len(a) + len(b) - 1)
    for i, ai in enumerate(a):
        for j, bj in enumerate(b):
            out[i+j] += ai * bj
    return out


def good_reduction_tests(p):
    critical = [82944, 0, -47500, 0, 3125]
    scaled_critical = [256*82944, 0, -16*47500, 0, 3125]
    sextic = [144, 64, 0, -200, 0, 64, 9]
    derivative = [i*sextic[i] for i in range(1, len(sextic))]
    return dict(critical_gcd=gcd(critical, scaled_critical, p),
                sextic_derivative_gcd=gcd(sextic, derivative, p))


def probe(p, max_r):
    good = good_reduction_tests(p)
    assert p not in (2, 3, 5)
    assert good['critical_gcd'] == [1] and good['sextic_derivative_gcd'] == [1]
    counts = []
    for r in range(1, max_r + 1):
        row = count_curves(p, r)
        counts.append(row)
        print(json.dumps(row), flush=True)
    cs = [p ** (i+1) + 1 - row['C'] for i, row in enumerate(counts)]
    ds = [p ** (i+1) + 1 - row['D'] for i, row in enumerate(counts)]
    ps = [row['D'] - row['C'] for row in counts]
    dpoly, ppoly = weil_from_sums(p, 2, ds), weil_from_sums(p, 4, ps)
    assert power_sums(dpoly, max_r) == ds
    assert power_sums(ppoly, max_r) == ps
    cpoly = polynomial_product_desc(dpoly, ppoly)
    assert power_sums(cpoly, max_r) == cs
    if max_r >= 6:
        assert weil_from_sums(p, 6, cs) == cpoly
    witness_primes = [ell for ell in [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43]
                      if irreducible(list(reversed(ppoly)), ell)]
    result = dict(p=p, good_reduction_algebra=good, counts=counts,
                  D_polynomial_descending=dpoly,
                  Prym_polynomial_descending=ppoly,
                  C_polynomial_descending=cpoly,
                  Prym_irreducible_mod_primes=witness_primes,
                  exact_Newton_and_reciprocity_checks=True,
                  Lean_verified=False)
    print(json.dumps({k: v for k, v in result.items() if k != 'counts'}), flush=True)
    return result


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--primes', nargs='+', type=int, default=[7, 11])
    parser.add_argument('--max-r', type=int, default=6)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    assert 4 <= args.max_r <= 6
    assert all(7 <= p <= 13 for p in args.primes)
    out = [probe(p, args.max_r) for p in args.primes]
    args.output.write_text(json.dumps(out, indent=2) + '\n')


if __name__ == '__main__':
    main()
