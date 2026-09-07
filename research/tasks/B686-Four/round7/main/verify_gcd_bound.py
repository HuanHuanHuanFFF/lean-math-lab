"""Exact bounded regression checks for the paper gcd bound; not an infinite proof."""
from pathlib import Path
from math import comb, factorial, gcd, prod
from fractions import Fraction
import hashlib, json, datetime

BASE=Path(__file__).resolve().parent

def primes_upto(n):
    return [p for p in range(2,n+1) if all(p%q for q in range(2,int(p**0.5)+1))]

def smooth_part(n, primes):
    smooth=1
    for p in primes:
        while n%p==0:
            n//=p; smooth*=p
    return smooth,n

def valuation(n,p):
    v=0
    while n%p==0:
        n//=p; v+=1
    return v

counts={'gcd_cases':0,'nontrivial_rough_gcd_cases':0,'valuation_checks':0,'binomial_bound_checks':0}
for k in range(2,21):
    Q=2*k-1; primes=primes_upto(Q)
    for n in range(0,81):
        lower=prod(range(n+1,n+k+1))
        for p in primes:
            values=[valuation(n+i,p) for i in range(1,k+1)]
            assert sum(values)-max(values)<=valuation(factorial(k-1),p)
            counts['valuation_checks']+=1
        for d in range(k,k+101):
            m=n+d; upper=prod(range(m+1,m+k+1))
            D=gcd(lower,upper); small,rough=smooth_part(D,primes)
            H=comb(d+k-1,Q)
            assert H%rough==0,(k,n,m,rough,H)
            assert small<=factorial(k-1)*(n+k)**len(primes)
            assert D<=factorial(k-1)*(n+k)**len(primes)*H
            assert Fraction(d+k-1,Q)<=Fraction(d,k)
            counts['gcd_cases']+=1
            counts['nontrivial_rough_gcd_cases']+=rough>1
    for d in range(k,20*k+1):
        assert comb(d+k-1,Q)<=Fraction(3*d,k)**Q
        counts['binomial_bound_checks']+=1
assert Fraction(6*125506,100000)<8
assert 4*3**10==236196<250000
result={'checked_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),
        'success':True,'status':'finite independent arithmetic checks; no Lean proof',
        'ranges':{'k':[2,20],'n':[0,80],'d':'k..k+100 inclusive','binomial_d':'k..20*k inclusive'},
        'counts':counts,'prime_count_input':'Rosser-Schoenfeld Corollary 1 is a literature theorem, not proven by this script',
        'script_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
(BASE/'gcd-checks.json').write_bytes((json.dumps(result,indent=2)+'\n').encode())
print(json.dumps(result))
