#!/usr/bin/env python3
"""Exact, per-input consumers. This module is not an input-search program.
Passing necessary-condition audits is NEVER reported as an NC3 counterexample.
The supplied polynomial consumer proves a common prime exists, without factoring N.
"""
from __future__ import annotations
from dataclasses import dataclass
from math import gcd
from functools import reduce

def valuation(n: int, p: int) -> int:
    if n<=0 or p<2: raise ValueError('positive integer and base >=2 required')
    e=0
    while n%p==0: n//=p;e+=1
    return e

def actual_psi(n: int,j: int) -> dict:
    if not (isinstance(n,int) and isinstance(j,int) and 4<=j<=n//2):
        raise ValueError('not an original legal input')
    vals=[n*(n-1)*(n-2)//6,j*(n-1)*(n-2)//2,j*(j-1)*(n-2)//2,j*(j-1)*(j-2)//6]
    h=reduce(gcd,vals); ell,b,c,d=(v//h for v in vals)
    I=b*b-3*ell*c
    ir=[n*I==3*ell*(b-c),j*I==b*(b-c),3*(n-2)*d==c*(j-2)]
    if not all(ir) or gcd(gcd(ell,b),gcd(c,d))!=1 or I<=0:
        raise ArithmeticError('actual content/recovery mismatch')
    return {'content':h,'coefficients':[ell,b,c,d],'I':I,'three_original_recovery_checks':ir,'status':'ACTUAL_PSI_NOT_AN_NC_SUFFICIENCY_CLAIM'}

@dataclass(frozen=True)
class BlockInput:
    n: int
    j: int
    T: int
    A: int
    B: int
    X: int
    Y: int
    t: int
    endpoint: str

def consume_quadratic_block(v: BlockInput) -> dict:
    ints=[v.n,v.j,v.T,v.A,v.B,v.X,v.Y,v.t]
    if any(type(x) is not int for x in ints): raise ValueError('exact integers required')
    if not (v.n%4==0 and 4<=v.j<=v.n//2): raise ValueError('requires 4|n and original legal interval')
    if not (v.T>=3 and 1<=v.t<=v.A<v.T and 1<=v.B<v.T and v.X>=v.T**5 and v.Y>=1):
        raise ValueError('block theorem hypotheses do not hold')
    if v.endpoint not in ('j','k'): raise ValueError('endpoint must be j or k')
    sig=v.j if v.endpoint=='j' else v.n-v.j
    if v.n!=v.A*v.Y*v.X*v.X+v.B*v.X+2 or sig!=v.t*v.Y*v.X*v.X:
        raise ValueError('representation does not describe this same original input')
    lam=3 if valuation(v.n-1,3)==1 else 1
    N=(v.n-1)//lam;F=v.n-1;K=v.B*v.X+1
    D=v.Y*v.A*(v.A+2*v.t)-v.t*v.B*v.B
    E=v.t*(D*K-v.A*v.t*v.Y)
    Q=v.A*v.Y*(v.t*v.t*F-2*v.t*v.t*K-v.A*v.t)+v.t*v.t*v.B*v.B
    if v.A**3*v.Y*sig*(sig-1)!=F*Q+E: raise ArithmeticError('Bezout check failed')
    if not (0<abs(E)<N): raise ArithmeticError('proved residual bound failed')
    if sig*(sig-1)%N==0 or v.j*(v.j-1)%N==0: raise ArithmeticError('unexpected source-window survivor')
    return {'status':'COMMON3_BY_FIRST_WINDOW_FAILURE','n':v.n,'j':v.j,'endpoint':v.endpoint,'lambda':lam,'N':N,'E1':E,
            'source_window_failed':True,'actual_psi':actual_psi(v.n,v.j),
            'witness_rule':'Select a complete odd p^e in N failing to divide j(j-1); p=3 retains e>=2. This gives the same original common prime.'}
