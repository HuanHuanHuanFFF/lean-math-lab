"""Exact elementary core. Python standard library only; no probabilistic tests."""
from math import gcd, comb, isqrt
from itertools import product

INDICES = tuple(range(3, 10))

def prime(p: int) -> bool:
    return p >= 2 and all(p % d for d in range(2, isqrt(p) + 1))

def vp(n: int, p: int) -> int:
    assert n > 0 and p >= 2
    e = 0
    while n % p == 0:
        n //= p
        e += 1
    return e

def binom_v(n: int, k: int, p: int) -> int:
    assert 0 <= k <= n
    out, q = 0, p
    while q <= n:
        out += n // q - k // q - (n-k) // q
        q *= p
    return out

def trial_factor(n: int) -> dict[int, int]:
    assert n >= 1
    f = {}
    d = 2
    while d*d <= n:
        while n % d == 0:
            f[d] = f.get(d, 0) + 1
            n //= d
        d += 1 if d == 2 else 2
    if n > 1:
        f[n] = f.get(n, 0) + 1
    return f

def divisors(f: dict[int, int]) -> list[int]:
    ans = [1]
    for p, e in sorted(f.items()):
        ans = [d*p**a for d in ans for a in range(e+1)]
    return sorted(ans)

def alpha_auto(i: int, a: int) -> bool:
    return any(p > i or (p == i and e >= 2) for p,e in trial_factor(a).items())

def make_templates():
    result = []
    for i in INDICES:
        small = [p for p in range(2, i) if prime(p)]
        for a in range(2, 10):
            if alpha_auto(i, a):
                continue
            active = [p for p in small if a % p]
            positions = [1] + active
            R = max(positions)
            L = 1
            for p in active:
                q = p
                while q <= R:
                    L *= p
                    q *= p
            if prime(i) and a % i:
                L *= i
            for b in range(1, a//2+1):
                if gcd(a, b) != 1:
                    continue
                for r in positions:
                    terms = [abs(b*r-a*s) for s in range(r+1)]
                    assert all(terms)
                    factors = trial_factor(L)
                    for x in terms:
                        for p,e in trial_factor(x).items():
                            factors[p] = factors.get(p,0)+e
                    W = L
                    for x in terms:
                        W *= x
                    assert W == product_int(p**e for p,e in factors.items())
                    result.append(dict(i=i,alpha=a,beta=b,r=r,L=L,W=W,factors=factors))
    return result

def product_int(xs):
    out = 1
    for x in xs:
        out *= x
    return out

def candidate_domain(templates):
    triples, instances = set(), 0
    for z in templates:
        i,a,b,r = (z[k] for k in ('i','alpha','beta','r'))
        for d in divisors(z['factors']):
            instances += 1
            n = d+r
            if n % a:
                continue
            j = (n//a)*b
            if i < j and 2*j <= n:
                triples.add((i,n,j))
    return sorted(triples), instances

def witness(i: int,n: int,j: int) -> dict:
    # A bounded first pass is just a search optimization, never an acceptance rule.
    for p in range(i, 998):
        if prime(p):
            x, y = binom_v(n,i,p), binom_v(n,j,p)
            if x and y:
                return dict(i=i,n=n,j=j,p=p,vi=x,vj=y)
    factors = set()
    for r in range(i):
        factors.update(trial_factor(n-r))
    for p in sorted(factors):
        if p >= i:
            x,y = binom_v(n,i,p),binom_v(n,j,p)
            if x and y:
                return dict(i=i,n=n,j=j,p=p,vi=x,vj=y)
    raise AssertionError(('ORIGINAL COUNTEREXAMPLE CANDIDATE',i,n,j))
