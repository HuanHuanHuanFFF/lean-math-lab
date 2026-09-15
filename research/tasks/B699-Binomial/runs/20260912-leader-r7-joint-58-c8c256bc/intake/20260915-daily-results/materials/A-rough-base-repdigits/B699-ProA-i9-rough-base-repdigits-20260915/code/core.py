"""Exact arithmetic helpers. No floating-point mathematics or external packages."""
from math import gcd, isqrt

def valuation(n: int, p: int) -> int:
    if n <= 0 or p < 2:
        raise ValueError('valuation requires positive integer and p>=2')
    v = 0
    while n % p == 0:
        n //= p
        v += 1
    return v

def smooth(n: int, primes=(2, 3, 5, 7)) -> int:
    if n <= 0:
        raise ValueError('positive integer required')
    ans = 1
    for p in primes:
        while n % p == 0:
            n //= p
            ans *= p
    return ans

def order5(b: int) -> int:
    if b % 5 == 0:
        raise ValueError('unit modulo5 required')
    for f in (1, 2, 4):
        if pow(b, f, 5) == 1:
            return f
    raise AssertionError('unreachable')

def repunit(b: int, k: int, t: int) -> int:
    if b < 2 or k < 1 or t < 1:
        raise ValueError('invalid geometric sum')
    x = b ** k
    return (x ** t - 1) // (x - 1)

def degree_case(k: int, t: int) -> int:
    if k < 1 or t < 2:
        raise ValueError('invalid source parameters')
    if t % 2 or k % 4 == 0:
        return 0
    if k % 2 == 0:
        return 2
    return 1 if t % 4 == 2 else 3

def initial_factor(b: int, d: int) -> int:
    return [1, b+1, b*b+1, (b+1)*(b*b+1)][d]

def predicted_v2_v5(b: int, k: int, t: int) -> tuple[int,int]:
    if gcd(b, 10) != 1:
        raise ValueError('odd base prime to5 required')
    if t % 2:
        v2 = 0
    elif k % 2 == 0:
        v2 = valuation(t, 2)
    else:
        v2 = valuation(b+1, 2) + valuation(t, 2) - 1
    f = order5(b)
    if k % f == 0:
        v5 = valuation(t, 5)
    elif (k*t) % f:
        v5 = 0
    else:
        v5 = valuation(b ** f - 1, 5) + valuation(k*t, 5)
    return v2, v5

def binomial_valuation(n: int, j: int, p: int) -> int:
    if not 0 <= j <= n:
        raise ValueError('bad binomial input')
    a, b, c, out = n, j, n-j, 0
    while a:
        a //= p; b //= p; c //= p
        out += a-b-c
    return out

def prime_factors(n: int) -> list[int]:
    if n < 1:
        raise ValueError('positive integer required')
    out=[]; d=2
    while d*d <= n:
        if n % d == 0:
            out.append(d)
            while n % d == 0:
                n //= d
        d = 3 if d == 2 else d+2
    if n > 1:
        out.append(n)
    return out

def is_prime(n: int) -> bool:
    return n >= 2 and not any(n % d == 0 for d in range(2, isqrt(n)+1))

def geom_mod(x: int, t: int, mod: int) -> tuple[int,int]:
    """Return (x**t, sum_{r<t} x**r) mod mod, O(log t) multiplications."""
    if t < 0 or mod <= 0:
        raise ValueError('bad modular geometric sum')
    if t == 0:
        return 1 % mod, 0
    a, s = geom_mod(x, t//2, mod)
    a2, s2 = a*a % mod, s*(1+a) % mod
    return ((a2*x % mod, (s2+a2) % mod) if t % 2 else (a2, s2))

def source_conditions(b: int, c: int, e: int, k: int, t: int) -> bool:
    if not (b >= 11 and gcd(b,210)==1 and 1 <= c < b and e >= 1 and k >= 1 and t >= 2):
        return False
    _, r = geom_mod(pow(b,k,400), t, 400)
    return c*pow(b,e,400)*r % 400 == 0
