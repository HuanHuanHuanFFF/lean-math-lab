#!/usr/bin/env python3
"""Exact sufficient consumers and fixed-rho curve construction.

An empty list of hits means only 'not certified by these consumers', NOT NC3.
The theorem applies to the same input (n,j); no cross-index transfer is made.
"""
from fractions import Fraction as Q
from math import gcd,isqrt
from typing import Iterator

def valuation(n:int,p:int)->int:
    if n<=0 or p<2:raise ValueError('n>0 and p>=2 required')
    out=0
    while n%p==0:n//=p;out+=1
    return out

def parameters(n:int,j:int)->dict:
    if not isinstance(n,int) or not isinstance(j,int):raise TypeError('integer n,j required')
    if not (4<=j and 2*j<=n and n%4==0):raise ValueError('requires 4<=j<=floor(n/2) and 4|n')
    la=3 if valuation(n-1,3)==1 else 1
    mu=3 if valuation((n-2)//2,3)==1 else 1
    g=gcd(n,j);N=(n-1)//la;K=(n-2)//(2*mu);H=gcd(K,j-1);C=K//H
    u=Q(j*(n-j),g*g*N*C);z=Q((j-1)*(n-j-1),N*H*H)
    E=la*mu*H-2*u*g*g;A=la**3*mu**2;T=(z*E*E+A)/(u*g*g)
    return dict(n=n,j=j,la=la,mu=mu,g=g,N=N,K=K,H=H,C=C,u=u,z=z,epsilon=E,A=A,T=T,rho=E*T)

def certify(n:int,j:int)->list[str]:
    """Return names of proved sufficient conditions which this original pair satisfies."""
    d=parameters(n,j);hits=[]
    if d['epsilon']<=d['g'] and d['z']<=d['u']:hits.append('BAL')
    if d['rho']==3*d['A']:hits.append('ZERO')
    if d['la']==d['mu']==1 and d['rho']<=3:hits.append('LOW-11')
    return hits

def divisors(n:int)->list[int]:
    if n<1:raise ValueError('positive n required')
    out=[]
    for d in range(1,isqrt(n)+1):
        if n%d==0:
            out.append(d)
            if d*d!=n:out.append(n//d)
    return sorted(out)

def curve_model(rho:int,epsilon:int,g:int,la:int,mu:int)->dict:
    if (la,mu) not in [(1,1),(1,3),(3,1)]:raise ValueError('invalid smallparts pair')
    if rho<=0 or rho%2==0 or epsilon<=0 or rho%epsilon:raise ValueError('rho positive odd and epsilon|rho required')
    A=la**3*mu**2;T=rho//epsilon;eta=rho-3*A
    if eta==0:raise ValueError('ZERO already excludes this sheet')
    if g<=0 or (2*abs(eta))%g or gcd(g,la*mu*epsilon)!=1:raise ValueError('necessary g conditions failed')
    q=epsilon**3*la*A*g*g
    f=[8*T*T,4*T*(3*rho-4*A),6*rho*rho-21*A*rho+8*A*A,epsilon*eta*eta]
    df=-16*A*A*T**4*epsilon**2*(27*rho*rho-70*A*rho-36*A*A)
    assert df!=0
    return dict(rho=rho,epsilon=epsilon,T=T,g=g,la=la,mu=mu,A=A,q=q,
                f_descending_coefficients=f,Y_squared_rhs_coefficients=[q*a for a in f],discriminant_f=df,
                required_recovery=['x=u*g^2','Y=q*delta','true gcd/smallparts/alpha/source windows and original interval'])

def curve_models(rho:int)->Iterator[dict]:
    """Finite superfamily for a fixed rho. Trial divisors are not fast for enormous rho."""
    if rho<=0 or rho%2==0:raise ValueError('positive odd rho required')
    for la,mu in [(1,1),(1,3),(3,1)]:
        eta=rho-3*la**3*mu**2
        if eta==0:continue
        for E in divisors(rho):
            for g in divisors(2*abs(eta)):
                if gcd(g,la*mu*E)==1:yield curve_model(rho,E,g,la,mu)

def height_expression(rho:int)->dict:
    if rho<=0:raise ValueError('positive rho required')
    # Keep the bound factored: do not render a giant decimal integer in logs.
    M=rho+81
    return {'M':M,'coefficient_bound':f'512*{M}^8',
            'B':f'12^17172*(512*{M}^8)^4050','log_n':'<4*B','n':'<2^(8*B)',
            'dependency':'Masser 2024 Lemma 2; no finite-bottom closure claimed'}
