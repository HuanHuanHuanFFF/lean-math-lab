"""Small integer utilities; no symbolic or numerical third-party dependency."""
from __future__ import annotations
from math import gcd

def valuation(n: int, p: int) -> int:
    if n <= 0 or p < 2: raise ValueError('positive integer and base >=2 required')
    e=0
    while n%p==0: n//=p; e+=1
    return e

def vp_choose(n: int, j: int, p: int) -> int:
    if not 0<=j<=n: raise ValueError('illegal binomial')
    q=p; out=0
    while q<=n:
        out += n//q-j//q-(n-j)//q
        q*=p
    return out

def iroot(n: int, d: int) -> int:
    if n<0 or d<1: raise ValueError('nonnegative n, positive degree required')
    if n<2: return n
    lo,hi=0,1<<((n.bit_length()+d-1)//d)
    while lo+1<hi:
        z=(lo+hi)//2
        if z**d<=n: lo=z
        else: hi=z
    return lo

def params(n: int) -> tuple[int,int,int,int]:
    if n<8 or n%4: raise ValueError('n >=8 and 4|n required')
    la=3 if valuation(n-1,3)==1 else 1
    mu=3 if valuation((n-2)//2,3)==1 else 1
    return la,mu,(n-1)//la,(n-2)//(2*mu)

def row_data(n: int) -> dict:
    la,mu,_,_=params(n)
    v=valuation(n,2); m=n>>v
    de=3 if valuation(n,3)==1 else 1
    ka=de**3*la**3*mu**2
    return dict(n=n,m=m,v=v,lambda_=la,mu=mu,delta=de,kappa=ka)

def row_test(n: int, coefficient: int) -> bool:
    d=row_data(n)
    return coefficient*d['m']**4*(n-1)**3>=d['kappa']*n**4

def canonical(n: int,j: int) -> dict:
    la,mu,N,K=params(n)
    if not 4<=j<n//2: raise ValueError('strict legal half interval required')
    if j*(j-1)%N or j*(j-1)*(j-2)%K: raise ValueError('exact projections fail')
    k=n-j; g=gcd(n,j); C=[gcd(K,j-r) for r in range(3)]
    assert C[0]*C[1]*C[2]==K
    assert all(gcd(C[a],C[b])==1 for a in range(3) for b in range(a))
    R=(j//g)*(k//g)//(N*C[0]*C[2]); U=(j-1)*(k-1)//(N*C[1]**2)
    h=g*g*R; ell=la*mu
    assert R>0 and U>0 and h*N*C[0]*C[2]==j*k
    assert U*N*C[1]**2==(j-1)*(k-1)
    assert 0<h<ell*C[1]
    assert h*(n-2)==2*mu*C[1]*(la+U*C[1]**2)
    return dict(n=n,j=j,g=g,alpha=n//g,R=R,U=U,h=h,C=C,lambda_=la,mu=mu)
