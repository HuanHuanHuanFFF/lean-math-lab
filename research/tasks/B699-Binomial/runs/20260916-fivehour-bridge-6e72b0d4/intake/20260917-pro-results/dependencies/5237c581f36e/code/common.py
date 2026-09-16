"""Exact arithmetic helpers. No discovery or external package dependencies."""
from fractions import Fraction
from math import comb, gcd, isqrt
from functools import reduce

def vp(a: int, p: int) -> int:
    if a == 0 or p < 2:
        raise ValueError('positive nonzero valuation input required')
    a=abs(a); v=0
    while a%p == 0: a//=p; v+=1
    return v

def choose_vp(n: int, j: int, p: int) -> int:
    if not 0 <= j <= n: raise ValueError('illegal binomial')
    s=0; q=p
    while q <= n:
        s+=n//q-j//q-(n-j)//q
        q*=p
    return s

def prime(p: int) -> bool:
    if p<2:return False
    if p%2==0:return p==2
    return all(p%d for d in range(3,isqrt(p)+1,2))

def factor(n: int) -> dict[int,int]:
    if n<1:raise ValueError('positive integer required')
    out={}; d=2
    while d*d <= n:
        while n%d == 0:out[d]=out.get(d,0)+1;n//=d
        d=3 if d==2 else d+2
    if n>1:out[n]=out.get(n,0)+1
    return out

def source_primes(n: int) -> list[int]:
    f={}
    for x in [n,n-1,n-2]:
        for p,e in factor(x).items():f[p]=f.get(p,0)+e
    f[2]=f.get(2,0)-1;f[3]=f.get(3,0)-1
    return sorted(p for p,e in f.items() if p>=3 and e>0)

def source_witness(n: int,j: int) -> tuple[int,int,int]:
    for p in source_primes(n):
        b=choose_vp(n,j,p)
        if b:return p,choose_vp(n,3,p),b
    raise AssertionError(('no common odd prime in regression',n,j))

def content(n: int,j: int):
    k=n-j
    f=[comb(j,r)*comb(k,3-r) for r in range(4)]
    H=reduce(gcd,f);L=comb(n,3)//H
    ph=[-comb(j,3),comb(j,2)*(n-2),-j*comb(n-1,2),comb(n,3)]
    assert all(a%H==0 for a in ph)
    return f,H,L,[a//H for a in ph]

def eval_poly(cs, x):
    v=Fraction(0)
    for c in reversed(cs):v=v*x+c
    return v

def kernel_gate(T: int,A: int,B: int,X: int) -> bool:
    return T>=2 and 1<=A<T and B>=1 and X>=A*B and T*X*X>=A*B*B*(T*B+2)

def row_gate(P: int,f: int,A: int,B: int,e: int) -> bool:
    return (prime(P) and P%2==1 and f>=1 and e>=1 and (P>=5 or f>=2)
            and B>=1 and B%P and kernel_gate(P**f,A,B,P**e))

def subdigits(x: int,p: int) -> list[int]:
    vals=[0];q=1
    while x:
        d=x%p;vals=[v+c*q for v in vals for c in range(d+1)]
        q*=p;x//=p
    return sorted(vals)

def residual(n: int,z: int,A: int,u: int):
    y=A*z-u*(n-1);r=u*(A-u)
    q=Fraction(3*y*(y-A),n-1)
    R=6*r*(2*A-u-3*y)+2*q*(y+3*u-2*A)
    return y,r,q,R
