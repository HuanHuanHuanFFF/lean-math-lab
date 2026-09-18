"""Native i6 theorem domain and exact source-window witness-divisor extraction.
Returned divisors are not asserted to be prime. Every prime divisor is a witness.
"""
from __future__ import annotations
from math import gcd

def vp(n: int, p: int) -> int:
    if n<=0 or p<2: raise ValueError('positive n, p>=2 required')
    v=0
    while n%p==0: n//=p;v+=1
    return v

def small6(n: int) -> int:
    if n<=0: raise ValueError('positive n required')
    out=1
    for p in (2,3,5):
        while n%p==0:n//=p;out*=p
    return out

def qig_sides(n: int) -> tuple[int,int,int]:
    if n<14:raise ValueError('n>=14 required')
    T=1
    for r in range(4):T*=small6(n-r)
    return T,T**6*(3*n*n-12*n+8),2**20*(n-1)**6*(n-3)**3

def theorem_domain(n: int) -> dict | None:
    """Recognize q5 supported on {17,23}, without general factorization."""
    if n<14 or n%1800 not in (1280,1530):return None
    q=(n-5)//small6(n-5); b=c=0
    while q%17==0:q//=17;b+=1
    while q%23==0:q//=23;c+=1
    if q!=1:return None
    E=vp(n-5,5); case='A' if n%1800==1280 else 'B'
    return {'case':case,'E':E,'b':b,'c':c,'q5':17**b*23**c}

def witness_divisor(n: int, j: int) -> dict:
    if not (7<=j<=n//2):raise ValueError('require 7<=j<=floor(n/2)')
    domain=theorem_domain(n)
    if domain is None:raise ValueError('outside the proved two-tail support domain')
    for r in range(4):
        q=(n-r)//small6(n-r); f=1
        for b in range(r+1):f*=j-b
        D=q//gcd(q,f)
        if D>1:
            return {'n':n,'j':j,'source_row':r,'divisor':D,
                    'divisor_is_claimed_prime':False,
                    'claim':'Every prime factor divides C(n,6) and C(n,j), and is >=7.',
                    'domain':domain}
    raise AssertionError('all first four windows passed, contrary to the proved theorem')

def vpbin(n: int,j: int,p: int) -> int:
    if not (0<=j<=n and p>=2):raise ValueError('invalid inputs')
    q=p;v=0
    while q<=n:
        v+=n//q-j//q-(n-j)//q;q*=p
    return v
