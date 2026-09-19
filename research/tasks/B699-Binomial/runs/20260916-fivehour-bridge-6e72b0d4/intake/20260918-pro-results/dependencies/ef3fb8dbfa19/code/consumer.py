#!/usr/bin/env python3
"""Exact sufficient consumers; 'not applicable' does NOT mean a counterexample.
No binomial factorization is required for Q0/height consumers. The optional
S13 consumer requires a complete factorization, checked by deterministic
trial division (intentionally not a probable-prime shortcut).
"""
from __future__ import annotations
from math import gcd,isqrt
from typing import Mapping

QR13=frozenset({1,3,4,9,10,12})

def prime(p:int)->bool:
    if p<2:return False
    if p%2==0:return p==2
    return all(p%d for d in range(3,isqrt(p)+1,2))

def source_part(n:int,factors:Mapping[int,int])->int:
    if n<1:raise ValueError('n must be positive')
    product=1;S=1
    for p,e in factors.items():
        if not isinstance(p,int) or not isinstance(e,int) or e<1 or not prime(p):
            raise ValueError('a complete factorization into proved primes is required')
        product*=p**e
        if p==3:S*=p**e
        elif p==13:S*=13
        elif p!=2 and p%13 in QR13:S*=p**e
    if product!=n:raise ValueError('factorization does not multiply to n')
    return S

def root_parameter(rho:int,k:int)->int|None:
    lo=3 if k==1 else 5
    def f(d:int)->int:return d*(d*d+2*k*d-2*k*k)
    if rho<f(lo):return None
    hi=lo
    while f(hi)<rho:hi*=2
    while lo<hi:
        mid=(lo+hi)//2
        if f(mid)<rho:lo=mid+1
        else:hi=mid
    return lo if f(lo)==rho and lo%2==1 and (k==1 or lo%3!=0) else None

def negative_record(n:int,j:int)->dict|None:
    if not isinstance(n,int) or not isinstance(j,int) or not 4<=j<=n//2:
        raise ValueError('legal integer pair 4 <= j <= floor(n/2) required')
    if n%4 or 2*j==n:return None
    lam=3 if (n-1)%3==0 and (n-1)%9!=0 else 1
    t=(n-2)//2;mu=3 if t%3==0 and t%9!=0 else 1
    N=(n-1)//lam;K=t//mu;g=gcd(n,j);H=gcd(K,j-1);C=K//H
    den=g*g*N*C
    if j*(n-j)%den:return None
    u=j*(n-j)//den;den=N*H*H
    if (j-1)*(n-j-1)%den:return None
    z=(j-1)*(n-j-1)//den;x=u*g*g;A=lam**3*mu**2
    eps=lam*mu*H-2*x
    if eps<=0 or (z*eps*eps+A)%x:return None
    T=(z*eps*eps+A)//x;rho=eps*T
    if eps%2==0 or T%2==0:return None
    h=gcd(lam*mu*H,eps);E=eps//h;W=lam*mu*H//h
    selected=None
    if rho%A==0:
        d=root_parameter(rho//A,1)
        if d is not None:selected=(1,d)
    if selected is None and A==27:
        d=root_parameter(rho,3)
        if d is not None:selected=(3,d)
    if selected is None:return None
    k,d=selected
    if W%k:return None
    V=W//k;M=d*d+2*k*d-2*k*k;B=d*d+k*d-3*k*k
    a=gcd(d,E);m=gcd(M,E)
    if E!=a*m or gcd(a,d//a)!=1 or gcd(m,M//m)!=1:return None
    Q=M*V*V-(d+2*k)*V*E+E*E
    if Q<=0 or Q%(m**3):return None
    Q0=Q//(m**3)
    if Q0%2==0:return None
    return {'n':n,'j':j,'lambda':lam,'mu':mu,'g':g,'H':H,'C':C,
            'u':u,'z':z,'A':A,'epsilon':eps,'T':T,'rho':rho,'h':h,
            'kappa':k,'d':d,'M':M,'B':B,'a':a,'m':m,
            'E':E,'W':W,'V':V,'Q0':Q0}

def exclusion(n:int,j:int,factors:Mapping[int,int]|None=None)->dict:
    rec=negative_record(n,j)
    if rec is None:return {'applies':False,'reason':'no qualifying canonical negative-root input'}
    q=rec['Q0'];k=rec['kappa'];reasons=[]
    if q in (1,3,13,39):reasons.append('complete_Q0_divides_39_certificate')
    cap=1 if k==1 else 2**27
    if n*n>=cap*q**15:reasons.append('odd_quadratic_factor_height')
    if factors is not None:
        S=source_part(n,factors)
        if 39%S==0:reasons.append('S13_divides_39')
        if n*n>=2**27*S**15:reasons.append('original_S13_height')
    return {'applies':bool(reasons),'reasons':reasons,'canonical':rec,
            'interpretation':'applies means Common(n,j), not a claim that NC3 was tested exhaustively'}
