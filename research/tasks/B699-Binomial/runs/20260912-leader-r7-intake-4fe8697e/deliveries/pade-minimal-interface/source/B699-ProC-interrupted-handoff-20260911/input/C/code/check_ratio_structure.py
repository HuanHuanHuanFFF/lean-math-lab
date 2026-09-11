#!/usr/bin/env python3
"""Nonvacuous primewise tests for the general rational-ratio proof.
Tests prime avoidance individually, not a nonexistent sample of noCommon inputs.
"""
from math import comb, gcd, factorial, prod
from pathlib import Path
import json,time
from verify_certificates import ratio_parameters, is_prime
ROOT=Path(__file__).resolve().parents[1]

def vp(x,p):
    assert x>0
    k=0
    while x%p==0:k+=1;x//=p
    return k

def vf(n,p):
    k=0
    while n:n//=p;k+=n
    return k

def vb(n,i,p):return vf(n,p)-vf(i,p)-vf(n-i,p)

def sieve(N):
    sp=list(range(N+1))
    for p in range(2,int(N**0.5)+1):
        if sp[p]==p:
            for k in range(p*p,N+1,p):
                if sp[k]==k:sp[k]=p
    return sp

def window_factors(n,i,sp):
    fs={}
    for x in range(n-i+1,n+1):
        while x>1:
            p=sp[x];x//=p;fs[p]=fs.get(p,0)+1
    for p in fs:fs[p]-=vf(i,p)
    return fs

def main():
    start=time.monotonic();sp=sieve(2000)
    counts={'small_part_inputs':0,'ratio_inputs':0,'avoided_prime_checks':0,
            'zero_grid_checks':0,'nonzero_grid_checks':0,'endpoint_checks':0,
            'factorial_cancellation_checks':0}
    for n in range(4,501):
        for i in range(2,min(40,n)+1):
            s=sum(is_prime(p) for p in range(2,i));sigma=1 if is_prime(i) else i
            small=prod(p**e for p,e in window_factors(n,i,sp).items() if p<i)
            assert sigma*small<=n**s
            counts['small_part_inputs']+=1
    for B in range(2,21):
        for A in range(1,B//2+1):
            if gcd(A,B)!=1:continue
            for i in range(2,41):
                z,s,K,E,lo=ratio_parameters(i,A,B)
                for t in range(lo,lo+25):
                    n,j=B*t,A*t
                    assert i<j<=n//2
                    counts['ratio_inputs']+=1
                    assert comb(n,i)*factorial(i)==comb(t,z)*B**z*factorial(z)*prod(n-a for a in range(i) if a%B)
                    counts['factorial_cancellation_checks']+=1
                    for p,e in window_factors(n,i,sp).items():
                        if p<i or e<=0 or vb(n,j,p)>0:continue
                        Q=p**(e+int(p==i));a=n%Q;b=j%Q
                        assert b<=a<i
                        delta=B*b-A*a
                        assert delta%Q==0
                        if delta:
                            assert K%(p**e)==0
                            counts['nonzero_grid_checks']+=1
                        else:
                            assert a%B==0 and b==A*(a//B)
                            assert (t-a//B)%Q==0
                            assert comb(t,z)%(p**e)==0
                            counts['zero_grid_checks']+=1
                        assert vb(t,z,p)+vp(K,p)>=e
                        counts['avoided_prime_checks']+=1
                        counts['endpoint_checks']+=p==i
    # Arithmetic regressions for the degree classification. The universal proof
    # in the note uses parity and the composite integer 9, not this bound.
    spbig=sieve(10000);s=0
    for i in range(2,10001):
        if i-1>=2 and spbig[i-1]==i-1:s+=1
        E3=i-(i+2)//3-s
        assert (i==4 and E3==0) or E3>=1
        if i>=10:assert i//2-s>=1
    result={'status':'PASS_EXACT_REGRESSIONS_NOT_LEAN', 'counts':counts,
            'small_part_scope':'4<=n<=500, 2<=i<=min(40,n)',
            'ratio_scope':'2<=B<=20, reduced 1<=A<=B/2, 2<=i<=40, first 25 legal t',
            'degree_classification_test_i_max':10000,'seconds':time.monotonic()-start}
    (ROOT/'evidence/ratio-structure-tests.json').write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(result,indent=2))
if __name__=='__main__':main()
