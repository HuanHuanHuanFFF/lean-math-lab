"""Exact constructive content algorithms. No floats; no Lean claim.
Inputs are Python integers. Prime-specific valuations require a prime supplied
by the caller; test/certificate paths use the deterministic sieve below.
"""
from math import comb, gcd, isqrt, factorial
from itertools import combinations
from typing import Sequence


def _nat(x: int) -> bool:
    return isinstance(x, int) and not isinstance(x, bool) and x >= 0


def primes_to(n: int) -> list[int]:
    if not _nat(n): raise ValueError('nonnegative integer limit required')
    a = bytearray(b'\x01') * (n + 1)
    if n >= 0: a[0] = 0
    if n >= 1: a[1] = 0
    for p in range(2, isqrt(n) + 1):
        if a[p]: a[p*p:n+1:p] = bytes((n-p*p)//p+1)
    return [p for p in range(2, n+1) if a[p]]


def transport(rows: Sequence[int], cols: Sequence[int], base: int) -> list[list[int]]:
    if not _nat(base) or base < 2 or not rows or not cols:
        raise ValueError('nonempty margins and integer base >= 2 required')
    if not all(_nat(x) for x in (*rows,*cols)) or sum(rows) != sum(cols):
        raise ValueError('nonnegative integer margins with equal sums required')
    rr,cc=list(rows),list(cols)
    out=[[0]*len(cols) for _ in rows]
    q=1
    while q*base<=sum(rows): q*=base
    while q:
        # Separate implementation: visit all cells rather than two pointers.
        for u in range(len(rows)):
            for v in range(len(cols)):
                blocks=min(rr[u]//q,cc[v]//q)
                out[u][v]+=q*blocks; rr[u]-=q*blocks; cc[v]-=q*blocks
        q//=base
    if any(rr) or any(cc): raise ArithmeticError('unfilled margins')
    return out


def check_table(rows,cols,base,table):
    if len(table)!=len(rows) or any(len(r)!=len(cols) for r in table):
        raise ValueError('shape')
    if not all(_nat(x) for row in table for x in row): raise ValueError('entries')
    if [sum(row) for row in table]!=list(rows): raise ValueError('row sums')
    if [sum(table[u][v] for u in range(len(rows))) for v in range(len(cols))]!=list(cols):
        raise ValueError('column sums')
    q=base
    while q<=sum(rows):
        observed=sum(x//q for row in table for x in row)
        target=min(sum(x//q for x in rows),sum(x//q for x in cols))
        if observed!=target: raise ValueError(('unsaturated',q,observed,target))
        q*=base


def fact_v(n: int, p: int) -> int:
    out=0
    while n: n//=p; out+=n
    return out


def integer_v(n: int,p: int) -> int:
    if n<1 or p<2: raise ValueError('positive n, p>=2')
    out=0
    while n%p==0: n//=p;out+=1
    return out


def pade_direct(A: int,B: int,C: int) -> int:
    if not all(_nat(x) for x in (A,B,C)): raise ValueError('nonnegative integers')
    g=0
    for r in range(A+1): g=gcd(g,comb(A+C-r,C)*comb(B+r,r))
    return g


def pade_v(coords: Sequence[int],p: int) -> int:
    """d-coordinate generalized reflected convolution content, d>=2."""
    d=len(coords)
    if d<2 or not all(_nat(x) for x in coords) or p<2: raise ValueError('parameters')
    q=p;out=0
    while (d-1)*(q-1)+1<=sum(coords):
        out+=sum(x%q for x in coords)>=(d-1)*(q-1)+1
        q*=p
    return out


def pade_formula(coords: Sequence[int]) -> int:
    d=len(coords)
    if d<2 or not all(_nat(x) for x in coords): raise ValueError('parameters')
    g=1
    for p in primes_to((sum(coords)+d-2)//(d-1)):
        g*=p**pade_v(coords,p)
    return g


def shared_v(coords: Sequence[int],defects: int,p: int) -> int:
    d=len(coords)
    if d<2 or not all(_nat(x) and x>0 for x in coords) or not 0<=defects<d:
        raise ValueError('positive coordinates, 0 <= defects < dimension')
    q=p;out=0
    while (d-1)*(q-1)+1+defects<=sum(coords):
        out+=sum(x%q for x in coords)>=(d-1)*(q-1)+1+defects
        q*=p
    return out


def shared_formula(coords: Sequence[int],defects: int) -> int:
    d=len(coords);g=1
    limit=(sum(coords)+d-2-defects)//(d-1)
    # Validate before even an empty prime loop.
    shared_v(coords,defects,2)
    for p in primes_to(limit): g*=p**shared_v(coords,defects,p)
    return g


def compositions(n: int,k: int):
    if k==1:
        yield (n,);return
    for a in range(n+1):
        for tail in compositions(n-a,k-1): yield (a,)+tail


def generalized_direct(coords: Sequence[int]) -> int:
    A,*bs=coords;g=0
    for rs in compositions(A,len(bs)):
        v=1
        for b,r in zip(bs,rs): v*=comb(b+r,r)
        g=gcd(g,v)
    return g


def positive_direct(n: int,i: int,j: int) -> int:
    g=0
    for r in range(max(0,i-(n-j)),min(i,j)+1):
        g=gcd(g,comb(j,r)*comb(n-j,i-r))
    return g


def positive_formula(n: int,i: int,j: int) -> tuple[int,int]:
    if not 0<=i<=n or not 0<=j<=n: raise ValueError('indices')
    h=l=1
    for p in primes_to(n):
        q=p
        while q<=n:
            if i%q>j%q+(n-j)%q: h*=p
            if i%q>n%q and j%q>n%q: l*=p
            q*=p
    return h,l


def minimizing_index(A: int,B: int,C: int,p: int) -> int:
    Q=p
    while Q<=A+B+C+1: Q*=p
    J,K=Q-1-B,Q-1-C
    return transport([J,K],[A,J+K-A],p)[0][0]
