"""Exact arithmetic; finite diagnostics are not a search for NC6 solutions."""
from __future__ import annotations
from fractions import Fraction
from math import gcd


def vp_int(x: int, p: int) -> int:
    if x == 0:
        raise ValueError('valuation of zero: handle that branch separately')
    x = abs(x)
    e = 0
    while x % p == 0:
        x //= p
        e += 1
    return e


def vp(x: int | Fraction, p: int) -> int:
    x = Fraction(x)
    return vp_int(x.numerator, p) - vp_int(x.denominator, p)


def mod_fraction(x: int | Fraction, modulus: int) -> int:
    x = Fraction(x)
    if gcd(x.denominator, modulus) != 1:
        raise ValueError('denominator is not invertible')
    return x.numerator * pow(x.denominator, -1, modulus) % modulus


def crt(items: list[tuple[int, int]]) -> tuple[int, int]:
    a, m = 0, 1
    for b, q in items:
        if gcd(m, q) != 1:
            raise ValueError('CRT moduli must be pairwise coprime')
        a += m * ((b-a)*pow(m, -1, q) % q)
        m *= q
        a %= m
    return a, m


def sqrt_lift_unit(a: int, p: int, precision: int) -> int:
    """Simple-root Hensel lifting for an odd prime and a unit square."""
    if p < 3 or precision < 1 or a % p == 0:
        raise ValueError('requires an odd prime, positive precision and a unit')
    roots = [r for r in range(1, p) if (r*r-a) % p == 0]
    if not roots:
        raise ValueError('not a quadratic residue')
    r, modulus = roots[0], p
    for _ in range(1, precision):
        digit = ((a-r*r)//modulus) * pow(2*r, -1, p) % p
        r += digit * modulus
        modulus *= p
        assert (r*r-a) % modulus == 0
    return r


def exponential_lift(A: int, b: int, target: int, p: int,
                     c: int, precision: int) -> tuple[int, int]:
    """Solve A*b^t=target (mod p^precision), with vp(b-1)=c >= 1."""
    if precision < c or vp_int(b-1, p) != c or gcd(A*b*target,p)!=1:
        raise ValueError('invalid exponential-lift hypotheses')
    if (A-target) % (p**c):
        raise ValueError('initial coset does not match')
    t = 0
    for k in range(c, precision):
        pk, mod = p**k, p**(k+1)
        current = A * pow(b, t, mod) % mod
        jump = pow(b, p**(k-c), mod)
        assert (jump-1) % pk == 0
        coefficient = (current % p) * ((jump-1)//pk) % p
        assert coefficient != 0
        err = (target-current) % mod
        assert err % pk == 0
        digit = (err//pk) * pow(coefficient,-1,p) % p
        t += digit * p**(k-c)
        assert (A*pow(b,t,mod)-target) % mod == 0
    return t, p**(precision-c)


def binomial_vp(n: int, j: int, p: int) -> int:
    if not 0 <= j <= n:
        raise ValueError('illegal binomial input')
    q, total = p, 0
    while q <= n:
        total += n//q - j//q - (n-j)//q
        q *= p
    return total
