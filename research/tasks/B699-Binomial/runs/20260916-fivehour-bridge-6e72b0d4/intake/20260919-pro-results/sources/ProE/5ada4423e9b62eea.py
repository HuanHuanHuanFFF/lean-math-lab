#!/usr/bin/env python3
"""Sufficient-obstruction predicate on ONE original input; never returns NC3.
The proof uses the adopted VG8 necessary condition. This code is provided
as an application interface, not as an exhaustive search or independent proof.
"""
from math import gcd
from typing import Any

def vp(value:int,prime:int)->int:
    if value<=0 or prime<2:raise ValueError('valuation requires a positive integer and base >=2')
    exponent=0
    while value%prime==0:value//=prime;exponent+=1
    return exponent

def obstruction(n:int,j:int)->dict[str,Any]:
    if isinstance(n,bool) or isinstance(j,bool) or not isinstance(n,int) or not isinstance(j,int):
        raise TypeError('n and j must be integers')
    if not 4<=j<=n//2:raise ValueError('require 4 <= j <= floor(n/2)')
    if n%4:return {'status':'NOT_APPLICABLE','reason':'this computation uses 4|n'}
    k=n-j;g=gcd(n,j);beta=j//g;gamma=k//g
    lam=3 if vp(n-1,3)==1 else 1
    mu=3 if vp((n-2)//2,3)==1 else 1
    N=(n-1)//lam;K=(n-2)//(2*mu)
    if j*(j-1)%N or j*(j-1)*(j-2)%K:
        return {'status':'NOT_APPLICABLE','reason':'a full source window fails; use the original window consumer'}
    if beta*gamma%N:raise ArithmeticError('first-window quotient identity')
    t=beta*gamma//N;C=gcd(K,t);H=K//C
    if t%C:raise ArithmeticError('full endpoint quotient')
    u=t//C;zn=(j-1)*(k-1);zd=N*H*H
    if zn%zd:raise ArithmeticError('full middle-block square divisibility')
    z=zn//zd;x=u*g*g;eps=lam*mu*H-2*x;A=lam**3*mu**2
    top=z*eps*eps+A
    if top%x:raise ArithmeticError('integer recovery quotient')
    T=top//x;rho=eps*T;eta=rho-3*A
    if eta<=0:return {'status':'NOT_APPLICABLE','reason':'nonpositive eta; outside the displayed parity predicate'}
    e=vp(g,2);q=vp(eta,2);G=g//2**e;eta0=eta//2**q
    info={'n':n,'j':j,'g':g,'lambda':lam,'mu':mu,'A_star':A,'rho':rho,'eta':eta,'v2_g':e,'v2_eta':q}
    if q!=2*e+1:
        return {'status':'COMMON3_BY_ADOPTED_THEOREM','trigger':'exact_dyadic_mismatch','parameters':info}
    if eta0%G or gcd(G,eta0//G)!=1:
        return {'status':'COMMON3_BY_ADOPTED_THEOREM','trigger':'odd_complete_power_saturation_fails','parameters':info}
    return {'status':'UNKNOWN','parameters':info}
