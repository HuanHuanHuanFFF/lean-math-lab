"""Exact integer utilities. Standard library only; no floating-point arithmetic."""
from math import gcd, isqrt
from typing import List, Tuple


def valuation(x: int, p: int) -> int:
    if x == 0:
        raise ValueError("valuation(0) is infinite and is not represented here")
    if p < 2:
        raise ValueError("p must be >= 2")
    x = abs(x)
    e = 0
    while x % p == 0:
        x //= p
        e += 1
    return e


def jacobi(a: int, n: int) -> int:
    if n <= 0 or n % 2 == 0:
        raise ValueError("Jacobi denominator must be positive and odd")
    a %= n
    sign = 1
    while a:
        while a % 2 == 0:
            a //= 2
            if n % 8 in (3, 5):
                sign = -sign
        a, n = n, a
        if a % 4 == n % 4 == 3:
            sign = -sign
        a %= n
    return sign if n == 1 else 0


def is_prime(n: int) -> bool:
    if n < 2:
        return False
    if n % 2 == 0:
        return n == 2
    d = 3
    while d * d <= n:
        if n % d == 0:
            return False
        d += 2
    return True


def factor_trial(n: int) -> List[Tuple[int, int]]:
    if n < 1:
        raise ValueError("positive integer required")
    out = []
    p = 2
    while p * p <= n:
        e = 0
        while n % p == 0:
            n //= p
            e += 1
        if e:
            out.append((p, e))
        p = 3 if p == 2 else p + 2
    if n > 1:
        out.append((n, 1))
    return out


def squarefree_kernel(n: int) -> int:
    out = 1
    for p, e in factor_trial(n):
        if e % 2:
            out *= p
    return out


def vp_binomial(n: int, j: int, p: int) -> int:
    """Legendre floor-sum formula, without forming the binomial coefficient."""
    if not 0 <= j <= n:
        raise ValueError("invalid binomial arguments")
    k = n - j
    q = p
    out = 0
    while q <= n:
        out += n // q - j // q - k // q
        q *= p
    return out


def hensel_root(a: int, b: int, p: int, k: int) -> int:
    """A selected simple root of a*x^2=b modulo odd prime p^k."""
    if p == 2 or k < 1:
        raise ValueError("odd prime and positive exponent required")
    roots = [r for r in range(1, p) if (a*r*r-b) % p == 0]
    if not roots:
        raise ValueError("no nonzero root")
    r, q = roots[0], p
    for _ in range(1, k):
        digit = (-((a*r*r-b)//q) * pow(2*a*r, -1, p)) % p
        r += digit*q
        q *= p
    assert (a*r*r-b) % q == 0
    return r


def exact_odd_root(a: int, b: int, p: int, k: int) -> Tuple[int, int]:
    """Residue class with v_p(a*x^2-b)=k, modulus p^(k+1)."""
    r = hensel_root(a, b, p, k)
    q = p**k
    for digit in range(p):
        x = r + digit*q
        if (a*x*x-b) % (q*p):
            assert valuation(a*x*x-b, p) == k
            return x, q*p
    raise AssertionError("a simple root must have non-root next digits")


def exact_two_root(a: int, b: int, k: int) -> Tuple[int, int]:
    """Here a,b are odd and b/a=1 mod 8; return valuation exactly k>=3."""
    if k < 3 or a % 2 == 0 or b % 2 == 0:
        raise ValueError("invalid 2-adic root contract")
    q = 8
    roots = [r for r in range(1, 8, 2) if (a*r*r-b) % 8 == 0]
    while q < 2**k:
        roots = sorted(x for r in roots for x in (r, r+q)
                       if (a*x*x-b) % (2*q) == 0)
        q *= 2
    for r in roots:
        if (a*r*r-b) % (2*q):
            assert valuation(a*r*r-b, 2) == k
            return r, 2*q
    raise AssertionError("expected a non-lifting root at the next level")


def crt(congruences: List[Tuple[int, int]]) -> Tuple[int, int]:
    x, mod = 0, 1
    for r, m in congruences:
        if gcd(mod, m) != 1:
            raise ValueError("CRT moduli must be coprime")
        x += ((r-x) * pow(mod, -1, m) % m) * mod
        mod *= m
        x %= mod
    return x, mod


def parameter_family(t: int) -> dict:
    if t < 1:
        raise ValueError("t must be positive")
    U = 9000*t*t
    j = 9030*t*t
    n = 2718030*t*t - 300
    k = n-j
    g = gcd(n, j)
    q4 = (n-4)//2
    E4 = gcd(q4, j*k)
    C = gcd(q4, j-2)
    A4 = gcd(q4, (j-1)*(k-1))
    return dict(t=t, n=n, j=j, k=k, U=U, Y=(n-1)*30*t,
                g=g, alpha=n//g, q4=q4, E4=E4, C=C, A4=A4)
