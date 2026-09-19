"""Executable sufficient consumers, backed by proofs/PROOFS.md.
'unresolved' never means NC3. No assertion of a prime witness without a witness.
"""
from __future__ import annotations
from fractions import Fraction
from math import gcd

class PrefixFailure(ValueError):
    """A frozen necessary condition for NC3 failed."""


def valuation(n:int,p:int)->int:
    if n<=0 or p<2:raise ValueError('valuation requires n>0 and p>=2')
    e=0
    while n%p==0:e+=1;n//=p
    return e


def _integer_solution(target:int,polynomial,low:int)->int|None:
    """Find an integer root of a strictly increasing polynomial on [low, infinity)."""
    hi=max(low,1)
    while polynomial(hi)<target:hi*=2
    lo=low
    while lo<=hi:
        m=(lo+hi)//2;v=polynomial(m)
        if v==target:return m
        if v<target:lo=m+1
        else:hi=m-1
    return None


def recovery_roots(A:int,rho:int)->list[Fraction]:
    """Complete rational roots of the recovery cubic, without integer factorization."""
    if A not in (1,9,27) or rho<=0 or rho%2==0:
        raise ValueError('requires A in {1,9,27} and positive odd rho')
    roots=set()
    if rho==3*A:roots.add(Fraction(1))
    if A==27:
        for R,b in ((23,1),(77,7),(115,5)):
            if rho==R:roots.add(Fraction(3,b))
        d=_integer_solution(rho,lambda d:d*(d*d+6*d-18),5)
        if d is not None and d%2 and d%3:roots.add(Fraction(-3,d))
    if rho%A==0:
        d=_integer_solution(rho//A,lambda d:d*(d*d+2*d-2),1)
        if d is not None and d%2:roots.add(Fraction(-1,d))
    return sorted(roots)


def two_window_parameters(n:int,j:int,*,require_alpha:bool=True)->dict[str,int]:
    if type(n) is not int or type(j) is not int or not 4<=j<=n//2:
        raise ValueError('requires natural n,j and 4<=j<=floor(n/2)')
    if n%8 or 2*j==n:raise PrefixFailure('8|n and j<n/2 required')
    k=n-j;g=gcd(n,j);alpha=n//g
    if alpha%8:raise PrefixFailure('alpha must be divisible by 8')
    c=alpha>>valuation(alpha,2)
    if require_alpha and (c not in (1,3) or (c==3 and valuation(n,3)!=1)):
        raise PrefixFailure('alpha=c*2^s with the genuine isolated-3 restriction failed')
    la=3 if valuation(n-1,3)==1 else 1
    mu=3 if valuation((n-2)//2,3)==1 else 1
    N=(n-1)//la;K=(n-2)//(2*mu)
    if j*(j-1)%N or j*(j-1)*(j-2)%K:
        raise PrefixFailure('complete genuine source window failed')
    L=gcd(K,j);H=gcd(K,j-1);R=gcd(K,j-2);C=K//H
    assert K==L*H*R and C==L*R
    if C<5:raise PrefixFailure('small-C frozen complete terminal applies')
    den=g*g*N*C;u,rem=divmod(j*k,den);assert rem==0
    z,rem=divmod((j-1)*(k-1),N*H*H);assert rem==0
    delta,rem=divmod(n-2*j,2*g*H);assert rem==0
    x=u*g*g;A=la**3*mu**2;ep=la*mu*H-2*x
    assert ep>0 and ep%2 and u%2 and delta%2
    T,rem=divmod(z*ep*ep+A,x);assert rem==0 and T>0 and T%2
    rho=ep*T;eta=rho-3*A;S=4*z*x+6*z*ep+3*T
    assert x*C-z*H*H==la
    assert z*(n-1)==la*(mu*mu*C*C-g*g*delta*delta)
    assert la*la*mu*mu*C==4*z*x+4*z*ep+T
    assert n*A==4*x*S+2*eta
    assert eta%(2*g)==0 and ((eta//(2*g))-g)%2==0
    return dict(n=n,j=j,g=g,alpha=alpha,c=c,la=la,mu=mu,N=N,K=K,L=L,H=H,R=R,
                C=C,u=u,z=z,delta=delta,x=x,A=A,eps=ep,T=T,rho=rho,eta=eta,t3=C*u)


def analyze_input(n:int,j:int)->dict:
    """Common3 conclusion is existential; this API does not manufacture a witness p."""
    try:p=two_window_parameters(n,j)
    except PrefixFailure as exc:
        return dict(status='common_by_frozen_prefix',reason=str(exc))
    g,ep,A,u,z,C,rho=(p[k] for k in ('g','eps','A','u','z','C','rho'))
    if rho==3*A:return dict(status='common_by_frozen_ZERO',parameters=p)
    if z<=u and g<ep<=2*g-A:return dict(status='common_by_STRIP',parameters=p)
    if 9*C<=16*u:return dict(status='common_by_EXP',parameters=p)
    roots=recovery_roots(A,rho)
    if roots and n*n>=(2**22)*(rho+81)**11:
        return dict(status='common_by_RAT_HEIGHT',parameters=p)
    if C%u==0 and n>=2*(rho+108)**10:
        return dict(status='common_by_U_IN_C_HEIGHT',parameters=p)
    return dict(status='unresolved',parameters=p,recovery_roots=[str(r) for r in roots])
