"""Exact arithmetic for K4-GENERAL-SLOTS. Standard library only.
A necessary integer model is never called an NC3 witness.
"""
from __future__ import annotations
import csv
import hashlib
import io
import math
from typing import Dict, Iterable, Tuple


def odd(x: int) -> int:
    if x <= 0:
        raise ValueError('odd() requires a positive integer')
    return x // (x & -x)


def source(x: int) -> int:
    """Retain every active odd prime power; remove 3 only at exponent one."""
    t = odd(x)
    return t // 3 if t % 3 == 0 and t % 9 != 0 else t


def valuation(x: int, p: int) -> int:
    if x <= 0 or p < 2:
        raise ValueError('positive x and p>=2 required')
    v = 0
    while x % p == 0:
        v += 1
        x //= p
    return v


def factorial_v(n: int, p: int) -> int:
    result = 0
    while n:
        n //= p
        result += n
    return result


def binomial_v(n: int, j: int, p: int) -> int:
    if not 0 <= j <= n:
        raise ValueError('j out of range')
    return factorial_v(n, p) - factorial_v(j, p) - factorial_v(n-j, p)


def lucas(n: int, j: int, p: int) -> bool:
    while n or j:
        if j % p > n % p:
            return False
        n //= p
        j //= p
    return True


def constants(k: int, u: int, z: int, a: int, eps: int):
    if eps == -1:
        return (k*a-(k+u)*z+1,
                k*a+(k-u)*z,
                (k-u)*(2*k-u)*z-k*u*a-(2*k-u))
    if eps == 1:
        return (k*a+(k+u)*z,
                k*a-(k-u)*z+1,
                (k-u)*(2*k-u)*z+k*u*a-2*(k-u))
    raise ValueError('eps must be -1 or 1')


def restore(k: int, u: int, z: int, a: int, eps: int):
    if u < 1 or (k*z-1) % u:
        raise ValueError('d must be an integer, u>=1')
    d = (k*z-1)//u
    P = d*a+eps*k
    Q = k*P+d
    n = P*Q+1
    X = u*P+a+z
    Y = z*a+eps*u
    j = P*X+(1-eps)//2
    assert j == Q*Y+(1+eps)//2
    return dict(k=k, u=u, z=z, a=a, eps=eps, d=d, P=P, Q=Q,
                n=n, j=j, X=X, Y=Y)


def check_integer_interface(r):
    k,u,z,a,e,d,P,Q,n,j = [r[x] for x in
         ('k','u','z','a','eps','d','P','Q','n','j')]
    assert k >= 3 and u >= 1 and z >= 3 and e in (-1,1)
    assert d*u == k*z-1 and d > 2*z and k < 2*d
    assert P >= 5 and P < Q < P*P
    assert P % 2 == Q % 2 == 1 and n % 4 == 0
    assert P < d*max(d,k) < 2*P
    assert 0 <= a+z <= d and 4 <= j <= n//2
    assert math.gcd(P,Q) == 1
    assert j % P == (1-e)//2 and j % Q == (1+e)//2
    R = (k-z*(d+z), k+z*(d-z), k-(d-z)*(2*d-z))
    assert R[0] < 0 < R[1] and R[2] < 0
    assert math.prod(R) > 0
    return True


COLUMNS = ('eps','z','a','d','P','Q','n','j','C0','C1','C2',
           'Lambda','T2','Lambda_mod_T2','T0','j_mod_T0','reason')


def terminal_record(e: int, z: int, a: int):
    r = restore(4,1,z,a,e)
    check_integer_interface(r)
    cs = constants(4,1,z,a,e)
    assert min(cs) > 0
    L = odd(math.lcm(*cs)); T2 = source(r['n']-2); T0 = source(r['n'])
    rem = L % T2
    assert rem != 0
    reason = 'size' if T2 > L else 'nondivisibility'
    return (e,z,a,r['d'],r['P'],r['Q'],r['n'],r['j'],*cs,L,T2,rem,T0,
            r['j']%T0,reason)


def terminal_a():
    """A: enumerate the original integer top block, applying original filters."""
    for e,limit in ((-1,307),(1,512)):
        for z in range(3,limit+1):
            d = 4*z-1
            for a in range(1,d-z+1):
                P=d*a+4*e
                Q=4*P+d
                if not (P < d*d < 2*P):
                    continue
                if P%2==0 or Q%2==0 or (P*Q+1)%4:
                    continue
                yield terminal_record(e,z,a)


def terminal_p():
    """B: independently enumerate P in a residue class modulo 4d.
    This does not call terminal_a(), terminal_record(), restore(), constants(),
    odd(), or source(). It reconstructs the raw n,j, exact LCM and source values.
    """
    def src_loop(n):
        while n%2==0:
            n//=2
        if n%3==0 and n%9:
            n//=3
        return n
    for e,limit in ((-1,307),(1,512)):
        for z in range(3,limit+1):
            d = 4*z-1
            lower = d*d//2+1
            upper = min(d*d-1, d*(d-z)+4*e)
            residue = 3*d+4*e
            step = 4*d
            P = residue + ((lower-residue+step-1)//step)*step
            while P <= upper:
                a=(P-4*e)//d
                Q=4*P+d; n=P*Q+1
                j=Q*(z*a+e)+(1+e)//2
                assert P%2==Q%2==1 and n%4==0
                assert 4<=j<=n//2 and 0<=a+z<=d
                if e==-1:
                    cs=(4*a-5*z+1,4*a+3*z,21*z-4*a-7)
                else:
                    cs=(4*a+5*z,4*a-3*z+1,21*z+4*a-6)
                L=1
                for c in cs:
                    assert c>0
                    L=(L//math.gcd(L,c))*c
                while L%2==0:
                    L//=2
                T2=src_loop(n-2); T0=src_loop(n)
                rem=L%T2
                assert rem
                reason='size' if T2>L else 'nondivisibility'
                yield (e,z,a,d,P,Q,n,j,*cs,L,T2,rem,T0,j%T0,reason)
                P+=step


def csv_bytes(rows: Iterable[tuple]) -> bytes:
    f=io.StringIO(newline='')
    w=csv.writer(f,lineterminator='\n')
    w.writerow(COLUMNS)
    w.writerows(rows)
    return f.getvalue().encode('utf-8')


# Sparse integer polynomials with 5 variables (k,u,d,z,a).
NVAR=5
ZERO=(0,)*NVAR
Poly=Dict[Tuple[int,...],int]


def pc(c: int) -> Poly:
    return {ZERO:c} if c else {}


def pv(i: int) -> Poly:
    e=[0]*NVAR; e[i]=1
    return {tuple(e):1}


def pa(*args: Poly) -> Poly:
    r={}
    for p in args:
        for e,c in p.items():
            r[e]=r.get(e,0)+c
    return {e:c for e,c in r.items() if c}


def pn(p: Poly) -> Poly:
    return {e:-c for e,c in p.items()}


def pm(p: Poly,q: Poly) -> Poly:
    r={}
    for e,c in p.items():
        for f,b in q.items():
            g=tuple(x+y for x,y in zip(e,f))
            r[g]=r.get(g,0)+c*b
    return {e:c for e,c in r.items() if c}


def pp(p: Poly,n: int) -> Poly:
    r=pc(1)
    for _ in range(n):r=pm(r,p)
    return r


def peval(p: Poly,vals) -> int:
    return sum(c*math.prod(v**i for v,i in zip(vals,e)) for e,c in p.items())


def load_poly(rows) -> Poly:
    r={}
    for ex,c in rows:
        ex=tuple(ex)
        assert len(ex)==NVAR and min(ex)>=0 and int(c)==c
        assert ex not in r
        if c:r[ex]=c
    return r


def divide_exact(p: Poly,g: Poly) -> Poly:
    """Lexicographic exact multivariate division over Z, not floating point."""
    rem=dict(p);out={}
    ge=max(g);gc=g[ge]
    while rem:
        re=max(rem);rc=rem[re]
        assert all(x>=y for x,y in zip(re,ge)), 'not exactly divisible'
        assert rc%gc==0
        e=tuple(x-y for x,y in zip(re,ge));c=rc//gc
        out[e]=out.get(e,0)+c
        rem=pa(rem,pn(pm({e:c},g)))
    return {e:c for e,c in out.items() if c}


def sha(b: bytes)->str:
    return hashlib.sha256(b).hexdigest()
