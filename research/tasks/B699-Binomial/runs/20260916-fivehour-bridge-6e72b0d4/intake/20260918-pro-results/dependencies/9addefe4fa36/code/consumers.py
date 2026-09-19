#!/usr/bin/env python3
"""Exact sufficient consumer; a miss is NOT an NC3 claim.

Research evidence level: author paper proof plus finite certificates;
not Lean or an independent mathematical review.
"""
from __future__ import annotations
from fractions import Fraction
from math import gcd

def _valuation(n: int, p: int) -> int:
    v=0
    while n%p==0:
        n//=p;v+=1
    return v

def recovery_sign_consumer(n: int, j: int) -> dict:
    if type(n) is not int or type(j) is not int or not 4<=j<=n//2:
        raise ValueError('Require integers 4 <= j <= floor(n/2).')
    if n%8:
        return {'proved_by_this_consumer':False,'reason':'outside this consumer; not a counterexample'}
    g=gcd(n,j);k=n-j
    lam=3 if _valuation(n-1,3)==1 else 1
    mu=3 if _valuation((n-2)//2,3)==1 else 1
    N=(n-1)//lam;K=(n-2)//(2*mu);H=gcd(K,j-1);C=K//H
    u=Fraction(j*k,g*g*N*C)
    z=Fraction((j-1)*(k-1),N*H*H)
    eps=lam*mu*H-2*u*g*g
    A=lam**3*mu**2
    T=(z*eps*eps+A)/(u*g*g)
    rho=eps*T
    G=27*rho*rho-104*A*rho-48*A*A
    hit=rho>0 and G<=0
    return {'proved_by_this_consumer':hit,'rho':str(rho),'A':A,
            'discriminant_bracket':str(G),
            'reason':'RECOVERY-DISC-NEG sufficient condition' if hit else 'no assertion'}
