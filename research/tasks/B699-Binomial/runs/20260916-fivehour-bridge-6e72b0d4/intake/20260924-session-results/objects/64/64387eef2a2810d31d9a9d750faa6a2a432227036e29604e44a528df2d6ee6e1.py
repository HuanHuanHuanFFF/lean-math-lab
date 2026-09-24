#!/usr/bin/env python3
"""Sufficient original-pair consumers from C23 (not an NC6 decision procedure).
Returned witness_factor need not be prime: every prime divisor is a valid
common witness. No factoring or binomial construction is needed.
"""
from __future__ import annotations
from math import gcd, lcm, prod
import argparse, json

def smallpart(n: int) -> int:
    ans=1
    for p in (2,3,5):
        while n%p==0:n//=p;ans*=p
    return ans

def consume(n: int,j: int) -> dict:
    if not isinstance(n,int) or not isinstance(j,int) or n<25 or not 7<=j<=n//2:
        raise ValueError('Require integer n>=25 and 7<=j<=floor(n/2).')
    g=gcd(n,j);s=[smallpart(n-r) for r in range(6)];q=[(n-r)//s[r] for r in range(6)]
    LA=lcm(g*g,8);LB=lcm(g*g,36 if n%3==2 else 12)
    flags=[]
    if g%q[0]:flags.append('original_source0_failure')
    if 16*LA*q[3]>=s[1]**3*s[2]**2*s[5]:flags.append('sextic_A_fixed_content')
    if 32*LB*q[3]>=5*s[1]**3*s[2]**2*s[4]:flags.append('sextic_B_fixed_content')
    if not flags:return {'covered':False,'meaning':'no conclusion, not an NC6 certificate','n':n,'j':j}
    failures=[]
    for r in range(6):
        W=q[r]//gcd(q[r],prod(j-b for b in range(r+1)))
        if W>1:failures.append({'source_r':r,'witness_factor':W})
    if not failures:raise AssertionError('Claimed sufficient condition but no original source failure; investigate implementation.')
    return {'covered':True,'n':n,'j':j,'consumers':flags,'failed_original_sources':failures,
            'witness_factor_is_not_asserted_prime':True,
            'meaning':'Every prime divisor of a returned witness_factor is >=7 and divides both C(n,6), C(n,j).'}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('n',type=int);ap.add_argument('j',type=int);ns=ap.parse_args()
    print(json.dumps(consume(ns.n,ns.j),ensure_ascii=False,indent=2))
if __name__=='__main__':main()
