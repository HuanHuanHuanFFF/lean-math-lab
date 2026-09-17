"""Exact arithmetic shared utilities; no external packages or primality oracles."""
from fractions import Fraction as Q
from math import comb, gcd, isqrt
from functools import reduce


def valuation(n, p):
    if not n:
        raise ValueError('valuation of zero is not a finite integer')
    n = abs(n)
    a = 0
    while n % p == 0:
        n //= p
        a += 1
    return a


def remove(n, primes=(2,3)):
    n = abs(n)
    if n == 0:
        raise ValueError('positive input required')
    for p in primes:
        while n % p == 0:
            n //= p
    return n


def factor(n):
    if n < 1:
        raise ValueError('positive integer required')
    out = {}
    d = 2
    while d*d <= n:
        while n % d == 0:
            out[d] = out.get(d, 0) + 1
            n //= d
        d = 3 if d == 2 else d + 2
    if n > 1:
        out[n] = out.get(n, 0) + 1
    return out


def isprime(p):
    return p >= 2 and all(p % d for d in range(2,isqrt(p)+1))


def disc4(co):
    # Coefficients in descending order a,b,c,d.
    a,b,c,d = co
    return b*b*c*c -4*a*c*c*c -4*b*b*b*d -27*a*a*d*d +18*a*b*c*d


def content(n,j):
    if not (4 <= j <= n//2):
        raise ValueError('illegal i=3 input')
    k = n-j
    ff = [comb(j,r)*comb(k,3-r) for r in range(4)]
    H = reduce(gcd, ff)
    psi = [comb(n,3)//H, -j*comb(n-1,2)//H,
           comb(j,2)*(n-2)//H, -comb(j,3)//H]
    assert all(x%H==0 for x in [comb(n,3), j*comb(n-1,2),comb(j,2)*(n-2),comb(j,3)])
    L,b,c,d = psi
    B=-b; D=-d
    I=B*B-3*L*c
    J=2*B**3-9*L*B*c+27*L*L*D
    return {'H':H,'L':L,'psi':psi,'I':I,'J':J,'disc':disc4(psi),'ff':ff}


def canonical(n,j):
    if n % 4 or not (4 <= j and 2*j < n):
        raise ValueError('requires 4|n and strict legal half interval')
    g=gcd(n,j); beta=j//g; gamma=(n-j)//g
    lam=3 if valuation(n-1,3)==1 else 1
    M=(n-2)//2
    mu=3 if valuation(M,3)==1 else 1
    N=(n-1)//lam; K=M//mu
    if j*(j-1)%N or j*(j-1)*(j-2)%K:
        raise ValueError('not the exact full-power projections')
    Cs=[gcd(K,j-r) for r in range(3)]
    assert Cs[0]*Cs[1]*Cs[2] == K
    F=Cs[0]*Cs[2]; C1=Cs[1]
    R=Q(beta*gamma,N*F)
    U=Q((j-1)*(n-j-1),N*C1*C1)
    t=Q(gamma-beta,2*C1)
    assert R.denominator==U.denominator==1
    # t requires alpha even, not just the two projections.
    return {'g':g,'beta':beta,'gamma':gamma,'lam':lam,'mu':mu,'N':N,'K':K,
            'C':Cs,'F':F,'R':R,'U':U,'t':t}


def peval(coeff, x):
    v=Q(0)
    for c in coeff:
        v=v*x+c
    return v


# Sparse exact polynomials in two variables, for infinite identities.
def add(a,b):
    out=dict(a)
    for k,v in b.items():
        out[k]=out.get(k,Q(0))+v
        if not out[k]: del out[k]
    return out


def scale(a,t): return {k:Q(v)*t for k,v in a.items() if v*t}

def mul(a,b):
    out={}
    for (i,j),v in a.items():
        for (k,l),w in b.items():
            t=(i+k,j+l);out[t]=out.get(t,Q(0))+v*w
    return {k:v for k,v in out.items() if v}

def power(a,n):
    out={(0,0):Q(1)}
    for _ in range(n): out=mul(out,a)
    return out

def const(v): return {(0,0):Q(v)} if v else {}

def sub(a,b):return add(a,scale(b,-1))
