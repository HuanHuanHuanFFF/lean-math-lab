"""Inspect a RES10 input without constructing either huge binomial coefficient.

A returned defect is an integer >1, not necessarily prime. Every prime factor
of that defect is a genuine common prime >=7. No primality claim is made about
the defect itself. Factoring is deliberately not part of this entry point.
"""
from __future__ import annotations
import argparse,json
from math import gcd,isqrt

def valuation(x: int,p: int) -> int:
    if x<=0 or p<2:raise ValueError('Require x>0 and p>=2')
    a=0
    while x%p==0:x//=p;a+=1
    return a

def vp_binomial(n: int,j: int,p: int) -> int:
    if not 0<=j<=n or p<2:raise ValueError('Invalid binomial/prime input')
    ans=0;Q=p
    while Q<=n:
        ans+=n//Q-j//Q-(n-j)//Q;Q*=p
    return ans

def inspect(n: int,j: int) -> dict:
    if n%9000!=5130 or not 7<=j<=n//2:
        raise ValueError('Outside the requested remaining row domain')
    g=gcd(n,j);alpha=n//g;a=valuation(alpha,3)
    if a<2 or alpha!=3**a:raise ValueError('alpha is not 3^a, a>=2')
    W=(n-1)*j*(n-j)
    if W%10:raise ValueError('W/10 is not an integer')
    yy=isqrt(W//10)
    if yy*yy!=W//10:raise ValueError('W is not ten times a square')
    defects=[]
    for r,q in [(1,n-1),(3,(n-3)//3),(4,(n-4)//2)]:
        product=1
        for b in range(r+1):product*=j-b
        defect=q//gcd(q,product)
        if defect>1:defects.append({'row':r,'defect':str(defect)})
    E3=gcd((n-3)//3,j*(n-j));E4=gcd((n-4)//2,j*(n-j))
    Delta3=E3*E3//gcd(E3*E3,j*(n-j))
    Delta4=E4*E4//gcd(E4*E4,j*(n-j))
    triggers=[]
    if Delta3<=3*g**3:triggers.append('T3')
    if 24*Delta4<=g*g:triggers.append('T4')
    if triggers and not defects:
        raise ArithmeticError('Certificate inconsistency: theorem trigger without source defect')
    return {'g':str(g),'a':a,'E':valuation(n-5,5),'E3':str(E3),'E4':str(E4),
            'Delta3':str(Delta3),'Delta4':str(Delta4),'new_consumers':triggers,
            'source_defects':defects,
            'status':'COMMON_PRIME_DIVISOR_CERTIFIED' if defects else 'NO_DECISION',
            'note':'A defect is not itself asserted to be prime; no NC converse.'}

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('n',type=int);p.add_argument('j',type=int)
    args=p.parse_args()
    print(json.dumps(inspect(args.n,args.j),indent=2,ensure_ascii=False))
