#!/usr/bin/env python3
"""Certified sufficient-condition interface for this round; not an NC decision oracle."""
from __future__ import annotations
import argparse,json,math

def vp(n:int,p:int)->int:
    if n<=0 or p<2: raise ValueError('vp expects n>0 and p>=2')
    e=0
    while n%p==0:e+=1;n//=p
    return e

def smallpart(n:int)->int:
    if n<=0:raise ValueError('positive integer required')
    a=1
    for p in (2,3,5):
        while n%p==0:a*=p;n//=p
    return a

def qrow(n:int,r:int)->int:return (n-r)//smallpart(n-r)

def legal(n:int,j:int)->bool:return isinstance(n,int) and isinstance(j,int) and n%1800 in (1280,1530) and 7<=j<=n//2

def support_in(n:int,primes:tuple[int,...])->bool:
    if n<1:raise ValueError('positive integer required')
    for p in primes:
        while n%p==0:n//=p
    return n==1

def divides_some_power(n:int,b:int)->bool:
    """Test whether n divides b**m for some m>=1, without factorization."""
    if n<1:raise ValueError('positive divisor required')
    b=abs(b)
    while n>1:
        d=math.gcd(n,b)
        if d==1:return False
        n//=d
    return True

def Znorm(n:int,j:int)->int:
    N=n-1;J=j*(n-j)
    return 16*N*N*(n-3)*(n-4)-36*N*(n-3)*J+27*J*J

def source_defects(n:int,j:int,rows:tuple[int,...])->list[dict[str,int]]:
    ans=[]
    for r in rows:
        q=qrow(n,r);prod=math.prod(j-b for b in range(r+1))
        d=q//math.gcd(q,prod)
        if d>1:ans.append({'row':r,'witness_cofactor':d})
    return ans

def qig_sides(n:int)->tuple[int,int,int]:
    T=math.prod(smallpart(n-r) for r in range(4))
    return T,T**6*(3*n*n-12*n+8),2**20*(n-1)**6*(n-3)**3

def consume(n:int,j:int)->dict:
    if not legal(n,j):raise ValueError('need n mod1800=1280/1530 and 7<=j<=n//2')
    q5=qrow(n,5);g=math.gcd(n,j);k=n-j
    a=math.gcd(q5,j*k);b=math.gcd(q5,(j-1)*(k-1))
    threshold=(9 if n%1800==1280 else 125)*n
    claims=[];rows=set()
    if g**4*a*a*b**4>=threshold:
        claims.append('WEIGHTED_Q5_NEARSIDE');rows.update((1,3,4,5))
    if support_in(q5,(13,61)):
        claims.append('SUPPORT_13_61_FULL_ROW');rows.update((0,1,2,3))
    Z=Znorm(n,j)
    if Z<=0:raise AssertionError('positive norm lemma failed')
    if divides_some_power(q5,Z):
        claims.append('POWER_ABSORPTION_Z');rows.update((0,1,2,3,5))
    defects=source_defects(n,j,tuple(sorted(rows))) if claims else []
    if claims and not defects:raise AssertionError('claimed sufficient condition has no source defect')
    return {'covered':bool(claims),'conditions':claims,'g':g,'q5':q5,
            'Q50':a,'Q51':b,'positive_norm':Z,'source_defects':defects,
            'note':'Each prime factor of a witness_cofactor is a genuine common prime >=7; the cofactor itself need not be prime. An uncovered pair is not a counterexample.'}

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('n',type=int);p.add_argument('j',type=int)
    a=p.parse_args();print(json.dumps(consume(a.n,a.j),ensure_ascii=False,indent=2))
