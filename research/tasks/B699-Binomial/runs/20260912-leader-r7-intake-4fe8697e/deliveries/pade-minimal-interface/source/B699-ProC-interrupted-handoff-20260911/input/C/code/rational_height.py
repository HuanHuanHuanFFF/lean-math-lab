#!/usr/bin/env python3
"""Exact denominator-free fixed-ratio height calculation, with complete p powers."""
from math import gcd,lcm,comb,factorial,prod
from central_kernel import factor,prime

def K_ratio(i,A,B):
    assert 1<=A and 2*A<=B and gcd(A,B)==1
    M=1
    for a in range(i):
        for b in range(a+1):
            v=B*b-A*a
            if v:M=lcm(M,abs(v))
    K=1
    for p,e in factor(M).items():
        if p>=i:K*=p**max(0,e-int(p==i))
    return K

def data(i,A,B):
    z=(i+B-1)//B;s=sum(prime(p) for p in range(2,i));sig=1 if prime(i) else i
    K=K_ratio(i,A,B);E=i-z-s;lo=i//A+1
    def exceeds(t):
        lhs=sig*(B**z)*factorial(z)*prod(B*t-a for a in range(i) if a%B)
        rhs=K*factorial(i)*(B*t)**s
        return lhs>rhs
    limit_pos=E>0 or E==0 and sig*B**z*factorial(z)>K*factorial(i)
    if not limit_pos:return {'i':i,'A':A,'B':B,'z':z,'small_primes':s,'K':K,'E':E,'status':'NO_HEIGHT_FROM_THIS_BOUND'}
    high=lo
    while not exceeds(high):high*=2
    low=lo
    while low<high:
        mid=(low+high)//2
        if exceeds(mid):high=mid
        else:low=mid+1
    return {'i':i,'A':A,'B':B,'z':z,'small_primes':s,'K':K,'E':E,'status':'FINITE','t_min':lo,'t_cut':high,'n_bound':B*(high-1),'candidate_count':max(0,high-lo)}
if __name__=='__main__':
 import json
 rows=[data(i,A,B) for B in range(3,9) for A in range(1,B//2+1) if gcd(A,B)==1 for i in range(2,15)]
 out={'status':'EXACT_HEIGHTS_NOT_YET_TERMINAL_CLOSURE','rows':rows}
 open(__import__('pathlib').Path(__file__).resolve().parents[1]/'evidence/rational-height-probe.json','w').write(json.dumps(out,indent=2)+'\n')
 for B in range(3,9):
  rs=[r for r in rows if r['B']==B];print(B,'rows',len(rs),'maxn',max(r.get('n_bound',-1) for r in rs),'candidates',sum(r.get('candidate_count',0) for r in rs))
