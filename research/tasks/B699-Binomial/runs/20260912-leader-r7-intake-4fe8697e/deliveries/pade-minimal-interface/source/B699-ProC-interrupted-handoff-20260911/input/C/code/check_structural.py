#!/usr/bin/env python3
"""Independent exact regression tests for the Pro C structural lemmas.
Finite tests are not proofs of unbounded statements. Python >=3.9, stdlib only.
"""
from math import comb, gcd, lcm
from fractions import Fraction
import json, argparse, time
from pathlib import Path

def factors(n):
    d=2; out={}
    while d*d<=n:
        while n%d==0:
            out[d]=out.get(d,0)+1;n//=d
        d+=1
    if n>1:out[n]=1
    return out

def vp(x,p):
    assert x>0
    e=0
    while x%p==0:e+=1;x//=p
    return e

def coeff(n,i,j):
    return [comb(j,r)*comb(n-j,i-r) for r in range(i+1)]

def content(n,i,j):
    h=0
    for f in coeff(n,i,j):h=gcd(h,f)
    return h

def run(N):
    start=time.monotonic(); counts={k:0 for k in ['triples','large_prime_tests','lift_tests','v2_cubic_tests']}
    shadows=[]; misses=[]
    for n in range(4,N+1):
        for i in range(1,n//2):
            C=comb(n,i); fs=factors(C)
            for j in range(i+1,n//2+1):
                counts['triples']+=1
                h=content(n,i,j); L=C//h
                assert C%h==0 and comb(n,j)%L==0
                den=1
                for s in range(i+1):
                    den=lcm(den,Fraction(comb(j,s)*comb(n-s,i-s),C).denominator)
                assert den==L
                for p,e in fs.items():
                    if p<i:continue
                    counts['large_prime_tests']+=1
                    Q=p**(e+int(p==i)); a=n%Q; b=j%Q
                    assert a<i
                    assert (h%(p**e)==0)==(b<=a)
                    if b<=a:
                        assert vp(h,p)==e
                        assert vp(comb(n,j),p)==vp(comb(n//Q,j//Q),p)
                        counts['lift_tests']+=1
                        if comb(n,j)%p==0 and len(misses)<10:
                            misses.append({'n':n,'i':i,'j':j,'p':p,'e':e,'H':h,'L':L,'Q':Q})
                if i==3 and n%4==0:
                    assert vp(h,2)==min(vp(n,2),vp(j,2))
                    counts['v2_cubic_tests']+=1
                if all(p<i for p in factors(L)):
                    shadows.append({'n':n,'i':i,'j':j,'H':h,'L':L})
    fam=[]
    for i in range(1,15):
        for p in [3,5,7,11,13,17]:
            if p<i:continue
            eps=int(p==i)
            for h0 in range(1+eps,4+eps):
                n=(p+1)*p**h0;j=2*p**h0
                # Factorial valuations avoid constructing enormous binomial coefficients.
                def vfac(x):
                    v=0
                    while x:x//=p;v+=x
                    return v
                vnj=vfac(n)-vfac(j)-vfac(n-j)
                H=content(n,i,j);L=comb(n,i)//H
                assert i<j<=n//2 and vp(comb(n,i),p)==h0-eps
                assert vp(H,p)==h0-eps and L%p!=0 and vnj==1
                fam.append({'n':n,'i':i,'j':j,'p':p,'h':h0})
    return {'scope':f'all 1<=i<j<=floor(n/2), 4<=n<={N}', 'status':'PASS','counts':counts,
            'content_shadow_survivors':shadows,'first_high_carry_misses':misses,'infinite_family_instances_checked':len(fam),
            'seconds':time.monotonic()-start}

if __name__=='__main__':
    pa=argparse.ArgumentParser();pa.add_argument('--N',type=int,default=100);pa.add_argument('--out',type=Path,required=True)
    args=pa.parse_args(); result=run(args.N);args.out.write_text(json.dumps(result,indent=2,ensure_ascii=False)+'\n');
    print(json.dumps({k:v for k,v in result.items() if k not in ['content_shadow_survivors','first_high_carry_misses']},ensure_ascii=False))
    print('content shadows',len(result['content_shadow_survivors']))
