"""Exact positive primitive norm recovery at the original order.

No class group computation, floating point, GRH, factorization, or CAS is used.
The order statement follows from the norm certificate and the paper proof.
This is a complete fixed-(n,a) algorithm, NOT uniform finite reduction in n.
"""
from __future__ import annotations
from math import gcd
from typing import Iterator, Any


def sqrt_mod_3power(value: int, exponent: int) -> tuple[int,int]:
    if exponent < 1 or value % 3 != 1:
        raise ValueError('Need exponent>=1 and a 3-adic unit square.')
    r, modulus = 1, 3
    for _ in range(1, exponent):
        digit = ((value-r*r)//modulus)*pow(2*r,-1,3) % 3
        r += digit*modulus
        modulus *= 3
    if (r*r-value) % modulus:
        raise AssertionError('Hensel identity failed.')
    return r, modulus


def convergents(num: int, den: int) -> Iterator[tuple[int,int]]:
    if den <= 0 or not 0 <= num < den:
        raise ValueError('Require 0<=num<den.')
    pm2, pm1, qm2, qm1 = 0, 1, 1, 0
    while den:
        q,num_rem = divmod(num,den)
        pnew, qnew = q*pm1+pm2, q*qm1+qm2
        yield pnew,qnew
        pm2,pm1,qm2,qm1=pm1,pnew,qm1,qnew
        num,den=den,num_rem


def primitive_norm_solutions(D: int, a: int) -> tuple[list[tuple[int,int]],int]:
    if D <= 1 or a < 1 or D % 3 != 2:
        raise ValueError('Require D>1, a>=1, and D=2 mod3.')
    M = 3**(2*a)
    if D >= M:
        return [],0
    r,modulus=sqrt_mod_3power(-D,2*a)
    if modulus != M:
        raise AssertionError('Wrong norm modulus.')
    found=set();tested=0
    for root in (r,M-r):
        for k,y in convergents(root,M):
            tested+=1
            if y <= 0:
                continue
            x=abs(root*y-M*k)
            if x > 0 and x*x+D*y*y==M and gcd(x,y)==1:
                found.add((x,y))
    if len(found)>1:
        raise AssertionError('Primitive one-orbit uniqueness failed.')
    return sorted(found),tested


def recover(n: int, a: int) -> dict[str,Any]:
    if n % 1800 != 1530 or a < 2:
        raise ValueError('Require the B tail and a>=2.')
    alpha=3**a
    if n % alpha:
        raise ValueError('3^a must divide n.')
    g=n//alpha;D=10*(n-1)
    values,steps=primitive_norm_solutions(D,a)
    if not values:
        return dict(status='EMPTY',n=n,a=a,g=g,convergents_checked=steps,
                    meaning='No true-g first-source W10 input for this fixed (n,a); original-order class is not of order 2a.')
    delta,y=values[0]
    if delta%2!=1 or y%2:
        raise AssertionError('B-tail norm parity failed.')
    z=y//2;beta=(alpha-delta)//2;j=g*beta;k=n-j
    if not (7<=j<=n//2 and gcd(n,j)==g and z>0):
        raise AssertionError('Legality or true-g recovery failed.')
    if j*k != (n-1)*10*g*g*z*z:
        raise AssertionError('First source failed after norm recovery.')
    return dict(status='CANDIDATE_NOT_NC',n=n,a=a,g=g,alpha=alpha,delta=delta,z=z,
                beta=beta,j=j,original_order_prime_class_order=2*a,
                low_mass=8*g**4<n,convergents_checked=steps,
                meaning='Exactly recovered first-source W10 input; q2..q5 and all higher source layers remain to be checked.')
