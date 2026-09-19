"""Small exact two-variable polynomial operations (standard library only)."""
from __future__ import annotations
from math import comb
from typing import Dict, Tuple
Poly = Dict[Tuple[int,int], int]

def clean(a: Poly) -> Poly:
    return {m:c for m,c in a.items() if c}

def const(c: int) -> Poly:
    return {(0,0):c} if c else {}

def add(*args: Poly) -> Poly:
    r: Poly = {}
    for a in args:
        for m,c in a.items(): r[m]=r.get(m,0)+c
    return clean(r)

def scale(a: Poly, c: int) -> Poly:
    return clean({m:v*c for m,v in a.items()})

def mul(a: Poly, b: Poly) -> Poly:
    r: Poly={}
    for (i,j),c in a.items():
        for (k,l),d in b.items():
            m=(i+k,j+l);r[m]=r.get(m,0)+c*d
    return clean(r)

def power(a: Poly,n: int) -> Poly:
    if n<0: raise ValueError('Negative polynomial exponent')
    r=const(1)
    while n:
        if n&1:r=mul(r,a)
        a=mul(a,a);n//=2
    return r

def sub(a: Poly,x: Poly,y: Poly) -> Poly:
    xp={i:power(x,i) for i,j in a};yp={j:power(y,j) for i,j in a}
    return add(*(scale(mul(xp[i],yp[j]),c) for (i,j),c in a.items()))

def shift(a: Poly,b: int,c: int) -> Poly:
    # Independent binomial expansion, not a call to sub().
    r: Poly={}
    for (i,j),v in a.items():
        for u in range(i+1):
            for w in range(j+1):
                m=(u,w)
                r[m]=r.get(m,0)+v*comb(i,u)*comb(j,w)*b**(i-u)*c**(j-w)
    return clean(r)

def order(a: Poly,weights=(1,1)) -> int:
    if not a: raise ValueError('Zero polynomial has no finite order')
    return min(weights[0]*i+weights[1]*j for i,j in a)

def eval_at(a: Poly,x: int,y: int) -> int:
    return sum(c*x**i*y**j for (i,j),c in a.items())

def rows(a: Poly):
    return [[i,j,c] for (i,j),c in sorted(a.items())]

def from_rows(a):
    r={(int(i),int(j)):int(c) for i,j,c in a}
    if len(r)!=len(a):raise ValueError('Duplicate polynomial monomial')
    return clean(r)

X={(1,0):1}; Y={(0,1):1}

def kernels():
    n=add(X,Y); J=mul(X,Y)
    A=add(J,scale(n,-1),const(1))
    P=add(power(n,2),scale(J,-3),scale(n,-1))
    Q=add(scale(power(n,4),10),scale(mul(power(n,2),J),-36),
          scale(power(J,2),27),scale(power(n,3),-54),
          scale(mul(n,J),117),scale(power(n,2),90),scale(J,-81),
          scale(n,-58),const(12))
    return {'N':n,'J':J,'A':A,'P':P,'Q':Q,
            'F3':mul(mul(J,A),P),'F4':mul(mul(J,A),Q)}
