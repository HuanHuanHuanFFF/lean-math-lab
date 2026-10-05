#!/usr/bin/env python3
"""Exact sufficient tests for original i=6 inputs in the six stated residues.
Uses the actual gcd(n,j). A non-trigger is NOT evidence of NC6.
The proof, including the adopted R12 positivity theorem, is in PROOFS.md.
"""
from __future__ import annotations
import argparse
import json
from math import gcd
from typing import Any

ROWS = {252:(1,3,1),704:(1,1,3),850:(3,1,5),954:(1,3,1),1100:(1,1,15),1552:(3,1,1)}

def sufficient_tests(n:int,j:int)->dict[str,Any]:
    if type(n) is not int or type(j) is not int:
        raise TypeError('n and j must be Python integers')
    if not 7 <= j <= n//2:
        raise ValueError('requires 7 <= j <= floor(n/2)')
    g=gcd(n,j); d=n-2*j
    out:dict[str,Any]={'n':n,'j':j,'g':g,'d':d,'epsilon':d//g,
        'scope':'six original residue classes','conditions_met':[],
        'conclusion':'NO_CONCLUSION','nc_claim':False}
    if n%1800 not in ROWS:
        out['scope']='OUTSIDE_STATED_SIX_CLASSES';return out
    s,S3,S5=ROWS[n%1800];m=s*S3;C=s*s*S3;kap=m*S5;eps=d//g
    hn=s*(d*d-n);hd=g*(n-1)
    h_reduce=gcd(abs(hn),hd)
    out.update({'residue':n%1800,'S1':s,'S3':S3,'S5':S5,
        'h_numerator':hn//h_reduce,'h_denominator':hd//h_reduce})
    tests=[]
    # Every relation below is a necessary inequality for a true NC6 input.
    if 4*n >= C*eps*eps:tests.append('EPSILON_QUADRATIC')
    if m*hn < 4*g*hd:tests.append('SHARP_H_OVER_G')
    if hn <= 1024*hd:tests.append('H_HEIGHT1024')
    if hn > 0 and (4*n-32)*hd*hd >= kap*hn*hn:tests.append('H_HEIGHT')
    if 4*(n-5)**3 >= s**3*S3*S5*g*g*eps**4:tests.append('MIXED_DISTANCE_CUBIC')
    if hn <= 0 or hn%hd:tests.append('ADOPTED_FIRST_SOURCE_POSITIVE_INTEGER_H')
    out['conditions_met']=tests
    if tests:out['conclusion']='COMMON6_BY_STATED_SUFFICIENT_CONDITION'
    return out

def is_prime_trial(p:int)->bool:
    if p<2:return False
    if p%2==0:return p==2
    k=3
    while k*k<=p:
        if p%k==0:return False
        k+=2
    return True

def binomial_valuation(n:int,j:int,p:int)->int:
    if p<2:raise ValueError('p>=2 required')
    if not 0<=j<=n:raise ValueError('invalid binomial input')
    ans=0;P=p
    while P<=n:
        ans+=n//P-j//P-(n-j)//P;P*=p
    return ans

def verify_common_prime(n:int,j:int,p:int)->dict[str,int]:
    if not 7<=j<=n//2 or p<7 or not is_prime_trial(p):
        raise ValueError('requires original legal input and a prime p>=7')
    a=binomial_valuation(n,6,p);b=binomial_valuation(n,j,p)
    if a<1 or b<1:raise ValueError('p is not a common prime of the original binomials')
    return {'p':p,'v_p_choose_n_6':a,'v_p_choose_n_j':b}

def main()->None:
    pa=argparse.ArgumentParser(description=__doc__);pa.add_argument('n',type=int);pa.add_argument('j',type=int)
    pa.add_argument('--witness',type=int);a=pa.parse_args()
    result=sufficient_tests(a.n,a.j)
    if a.witness is not None:result['verified_witness']=verify_common_prime(a.n,a.j,a.witness)
    print(json.dumps(result,ensure_ascii=False,sort_keys=True,indent=2))
if __name__=='__main__':main()
