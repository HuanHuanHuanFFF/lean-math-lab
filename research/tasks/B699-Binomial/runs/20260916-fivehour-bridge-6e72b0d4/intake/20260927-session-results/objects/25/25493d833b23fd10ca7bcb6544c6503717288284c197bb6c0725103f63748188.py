"""Exact arithmetic helpers. Python standard library only; no probabilistic tests."""
from functools import lru_cache
from math import comb, gcd, isqrt
import hashlib
import json

@lru_cache(None)
def factor(n):
    if n < 1:
        raise ValueError("factor expects a positive integer")
    out = []
    p = 2
    while p*p <= n:
        a = 0
        while n % p == 0:
            n //= p
            a += 1
        if a:
            out.append((p, a))
        p += 1 if p == 2 else 2
    if n > 1:
        out.append((n, 1))
    return tuple(out)

def is_prime(n):
    return n >= 2 and factor(n) == ((n, 1),)

def digits(n, base):
    if n < 0 or base < 2:
        raise ValueError("invalid digit input")
    out = []
    while n:
        n, a = divmod(n, base)
        out.append(a)
    return out or [0]

def lucas_nonzero(n, j, p):
    """True exactly when p does NOT divide binomial(n,j), for prime p."""
    if not 0 <= j <= n:
        return False
    while n or j:
        if j % p > n % p:
            return False
        n //= p
        j //= p
    return True

def vp_factorial(n, p):
    out = 0
    while n:
        n //= p
        out += n
    return out

def vp_binomial(n, j, p):
    return vp_factorial(n, p)-vp_factorial(j, p)-vp_factorial(n-j, p)

def c3_factorization(n):
    f = {}
    for m in (n, n-1, n-2):
        for p,a in factor(m):
            f[p] = f.get(p, 0)+a
    for p in (2,3):
        f[p] = f.get(p,0)-1
    return {p:a for p,a in sorted(f.items()) if a > 0}

def prime_powers(limit):
    out = []
    for v in range(5, limit+1, 2):
        f = factor(v)
        if len(f) == 1:
            p,a = f[0]
            out.append((v,p,a))
    return out

def crt_candidate(P,Q):
    j0 = P*pow(P, -1, Q)
    return min(j0, P*Q+1-j0)

def residuals(k,d,z):
    return [k-z*z-d*z, k-z*z+d*z, k-z*z+3*d*z-2*d*d]

def coarse_states(limit):
    """An intermediate NECESSARY ledger, not realized original inputs."""
    out = []
    for k in range(1, limit+1):
        for d in range(3, k//2+1, 2):
            if k%d or (k//d)%2 or len(factor(d)) != 1:
                continue
            u = k//d
            q,c = factor(d)[0]
            for z in range(1, (d-1)//2+1):
                if gcd(z,d) != 1:
                    continue
                rs = residuals(k,d,z)
                R = abs(rs[0]*rs[1]*rs[2])
                assert R > 0
                Pmax = (isqrt(d*d+4*k*(6*R+1))-d)//(2*k)
                for eps in (-1,1):
                    if not 0 <= z-eps*u <= d:
                        continue
                    out.append(dict(k=k,d=d,q=q,c=c,u=u,z=z,epsilon=eps,
                                    residuals=rs,R=R,Pmax=Pmax,
                                    above_old_gate=Pmax>k*(k+1),
                                    full_power_shape_survives=(eps == -1 and z == u)))
    return out

def small_window_audit(limit=256):
    h = hashlib.sha256()
    pair_count = prime_tests = retained_full_power_tests = 0
    for n in range(8, limit+1):
        primes = [p for p in c3_factorization(n) if p >= 3]
        for j in range(4, n//2+1):
            pair_count += 1
            value = comb(n,j)
            for p in primes:
                prime_tests += 1
                v = vp_binomial(n,j,p)
                ok = lucas_nonzero(n,j,p)
                assert ok == (v == 0) == (value % p != 0)
                r = n % p  # p divides exactly one of n,n-1,n-2.
                assert r in (0,1,2)
                a = dict(factor(n-r))[p]
                if ok:
                    assert j % (p**a) <= r
                    retained_full_power_tests += 1
                h.update(f'{n},{j},{p},{a},{v},{int(ok)}\n'.encode())
    return dict(n_max=limit,pairs=pair_count,prime_tests=prime_tests,
                nondivisible_full_power_window_tests=retained_full_power_tests,
                sha256=h.hexdigest())

def full_row_audit():
    out=[]
    for P,Q in [(11,13),(5,31),(17,19),(23,25),(29,31),(41,43)]:
        n=P*Q+1
        c3=comb(n,3)
        h=hashlib.sha256()
        min_odd=None
        for j in range(4,n//2+1):
            g=gcd(c3,comb(n,j))
            odd=g
            while odd%2==0:
                odd//=2
            assert odd > 1
            min_odd=odd if min_odd is None else min(min_odd,odd)
            h.update(f'{j},{g},{odd}\n'.encode())
        out.append(dict(P=P,Q=Q,n=n,pairs=n//2-3,min_odd_gcd=min_odd,
                        sha256=h.hexdigest()))
    return out

def canonical_bytes(obj):
    return (json.dumps(obj,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode()
