"""Exact helpers for the new three-window threshold proof. Python standard library only."""
from __future__ import annotations
from math import gcd, lcm, prod

SMALL=(2,3,5,7)

def factor(n: int) -> dict[int,int]:
    if n<1: raise ValueError('positive input required')
    out={};p=2
    while p*p<=n:
        while n%p==0:out[p]=out.get(p,0)+1;n//=p
        p=3 if p==2 else p+2
    if n>1:out[n]=out.get(n,0)+1
    return out

def vp(n: int,p: int) -> int:
    if n<=0 or p<2:raise ValueError('vp needs n>0,p>=2')
    e=0
    while n%p==0:e+=1;n//=p
    return e

def isprime(p: int) -> bool:
    return p>=2 and factor(p)=={p:1}

def smooth(n: int) -> int:
    if n<1:raise ValueError('smooth part requires positive n')
    s=1
    for p in SMALL:
        while n%p==0:s*=p;n//=p
    return s

def badpart(n: int,m: int) -> int:
    """All p<m full powers; isolated p=m only, when m is prime."""
    if n<1 or not 3<=m<=9:raise ValueError('domain')
    s=1
    for p in SMALL:
        if p<m:
            while n%p==0:s*=p;n//=p
        elif p==m and vp(n,p)==1:
            s*=p
    return s

def eta(n: int) -> int:
    return 8 if n%4==0 else 4 if n%2==0 else 2

def row_data(n: int,m: int|None=None) -> dict:
    if n<8:raise ValueError('n>=8 required')
    ss=[smooth(n-r) if m is None else badpart(n-r,m) for r in range(3)]
    lhs=64*eta(n)*(n-1)**3;rhs=ss[0]**4*ss[1]**3*ss[2]**2
    return {'n':n,'target':m,'parts':ss,'eta':eta(n),'lhs':lhs,'rhs':rhs,'accepted':lhs>rhs}

def carry_val(n: int,j: int,p: int) -> int:
    if not 0<=j<=n or p<2:raise ValueError('carry domain')
    ans=0;q=p
    while q<=n:
        ans+=int(j%q>n%q);q*=p
    return ans

def projection_data(n: int,j: int,m: int|None=None) -> dict|None:
    if not 4<=j<=n//2:raise ValueError('legal source pair required')
    d=row_data(n,m);s0,s1,s2=d['parts'];q0=n//s0;N=(n-1)//s1;K=(n-2)//s2
    if j%q0 or j*(j-1)%N or j*(j-1)*(j-2)%K:return None
    k=n-j;g=gcd(n,j);b=j//g;c=k//g
    Cs=[gcd(K,j-r) for r in range(3)];C0,C1,C2=Cs;F=C0*C2
    assert prod(Cs)==K and gcd(C0,C1)==gcd(C0,C2)==gcd(C1,C2)==1
    assert gcd(g,N*K)==1 and gcd(N,K)==1
    assert b*c%(N*F)==0 and (j-1)*(k-1)%(N*C1*C1)==0
    R=b*c//(N*F);U=(j-1)*(k-1)//(N*C1*C1)
    assert R>=1 and U>=1 and g%q0==0
    assert g*g*R*F-U*C1*C1==s1
    assert g**4*R**2*U*N**3*K**2==j*j*k*k*(j-1)*(k-1)
    assert g**4*U>=eta(n)*q0**4
    assert 64*(n-1)**3*g**4*R**2*U<=s1**3*s2**2*n**4
    assert d['lhs']<=d['rhs']
    return {'q0':q0,'N':N,'K':K,'C':Cs,'g':g,'R':R,'U':U}
