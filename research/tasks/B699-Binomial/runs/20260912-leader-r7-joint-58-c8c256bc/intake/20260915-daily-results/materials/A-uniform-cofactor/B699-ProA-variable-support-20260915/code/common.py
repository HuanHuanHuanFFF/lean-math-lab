"""Exact, standard-library utilities for the new cofactor obligations only."""
from __future__ import annotations
from fractions import Fraction as F
from itertools import combinations
from math import factorial, prod

P0 = (2, 3, 5, 7)
M = {2: 8, 3: 3, 5: 5, 7: 7}
R = 171603713767500


def enc(x: F | int) -> list[int]:
    x = F(x)
    return [x.numerator, x.denominator]


def dec(x: list[int]) -> F:
    if len(x) != 2 or not all(isinstance(t, int) for t in x) or x[1] <= 0:
        raise ValueError('invalid rational')
    return F(*x)


def log_interval(x: F | int, terms: int = 32) -> tuple[F, F]:
    """atanh series with a proved, one-sided geometric tail; x >= 1."""
    x = F(x)
    if x < 1 or terms < 1:
        raise ValueError('require x >= 1 and positive term count')
    z = (x - 1) / (x + 1)
    s = sum((2*z**(2*k+1)/F(2*k+1) for k in range(terms)), F(0))
    tail = 2*z**(2*terms+1) / ((2*terms+1)*(1-z*z))
    return s, s + tail


def scaled_log_interval(n: int, terms: int = 20) -> tuple[F, F]:
    """Second reduction: log n = k log 2 + log(n/2^k), with reduced ratio < 2."""
    k = n.bit_length()-1
    l2, u2 = log_interval(2, terms)
    lr, ur = log_interval(F(n, 2**k), terms)
    return k*l2 + lr, k*u2 + ur


def e_upper(terms: int = 8) -> F:
    # First omitted term times a geometric tail, all subsequent ratios <= 1/(terms+2).
    return sum((F(1, factorial(k)) for k in range(terms+1)), F(0)) + F(terms+2, (terms+1)*factorial(terms+1))


def valuation(n: int, p: int) -> int:
    if n <= 0 or p < 2:
        raise ValueError('positive n and p >= 2 required')
    v = 0
    while n % p == 0:
        n //= p
        v += 1
    return v


def rough7(n: int) -> int:
    """Full rough part, NOT the radical. No factorization of the result is needed."""
    if n < 1:
        raise ValueError('positive input required')
    for p in P0:
        while n % p == 0:
            n //= p
    return n


def vp_fact(n: int, p: int) -> int:
    if n < 0:
        raise ValueError('nonnegative factorial argument required')
    out = 0
    while n:
        n //= p
        out += n
    return out


def vp_choose(n: int, j: int, p: int) -> int:
    if not 0 <= j <= n:
        raise ValueError('invalid binomial arguments')
    return vp_fact(n, p)-vp_fact(j, p)-vp_fact(n-j, p)


def carry_count(n: int, j: int, p: int) -> int:
    q, ans = p, 0
    while q <= n:
        ans += int((j % q) > (n % q))
        q *= p
    return ans


def profiles():
    return [tuple(H) for h in (1, 2) for H in combinations(P0, h)]


def profile_constants(H, lower, upper, height_multiplier):
    h = len(H)
    c = F(48*44**8 if h == 1 else 6*44**11)
    theta = prod(upper[p] for p in H)
    D = height_multiplier*c*theta*sum((F(q)/lower[q] for q in P0 if q not in H), F(0))
    additive = F(36 if h == 1 else 26)
    A = (additive+10*D)/17
    return c, theta, D, A
