#!/usr/bin/env python3
"""Second exact height check: prime exponents + log(1-u), independent expansion."""
from fractions import Fraction as F
from functools import lru_cache
from math import isqrt
from pathlib import Path
import time,json
ROOT=Path(__file__).resolve().parents[1]
N=20_000_000;SCALE=10**28;TERMS=110

def primes_by_trial(limit):
    out=[]
    for x in range(2,limit+1):
        if all(x%p for p in out if p*p<=x):out.append(x)
    return out
PS=primes_by_trial(isqrt(N))

@lru_cache(None)
def factors(x):
    n=x;out={}
    for p in PS:
        if p*p>n:break
        while n%p==0:out[p]=out.get(p,0)+1;n//=p
    if n>1:out[n]=out.get(n,0)+1
    return out

@lru_cache(None)
def positive_series(u):
    power=u;partial=F(0)
    for k in range(1,TERMS+1):partial+=power/k;power*=u
    return partial,partial+power/((TERMS+1)*(1-u))

@lru_cache(None)
def logs(n):
    e=n.bit_length();u=F((1<<e)-n,1<<e)
    a,b=positive_series(u);l2,u2=positive_series(F(1,2))
    lo=e*l2-b;hi=e*u2-a
    return lo.numerator*SCALE//lo.denominator,(hi.numerator*SCALE+hi.denominator-1)//hi.denominator

def add_scaled(target,src,mult=1):
    for p,e in src.items():target[p]=target.get(p,0)+mult*e

def main():
    start=time.perf_counter();fact=[{}];superfact=[{}];fall=[{}]
    for h in range(1,1000):
        f=fact[-1].copy();add_scaled(f,factors(h));fact.append(f)
        b=superfact[-1].copy();add_scaled(b,f);superfact.append(b)
        g=fall[-1].copy();add_scaled(g,factors(N-h+1));fall.append(g)
    cases=[]
    for i in range(185,1000):
        t=sum(p<i for p in PS);r=i//3;s=7*i//10;ell=i-r-1;lam=2*s-r
        E=s*(s+1)+ell*(ell+1)//2;delta=lam*(i-t)-E
        assert delta>0
        exponent={2:s*(s+1)}
        add_scaled(exponent,superfact[s],2);add_scaled(exponent,superfact[ell]);add_scaled(exponent,fall[i],lam)
        add_scaled(exponent,fact[i],-lam);add_scaled(exponent,factors(N),-(t*lam+E))
        low=0
        for p,e in exponent.items():
            if not e:continue
            lo,hi=logs(p);low+=e*(lo if e>0 else hi)
        assert low>0,(i,low)
        cases.append((i,low))
    i,low=min(cases,key=lambda x:x[1])
    out={'status':'PASS','method':'prime-exponent cancellation and log(1-u) rational series','rows_verified':len(cases),'N':N,'terms':TERMS,'log_scale':str(SCALE),'minimum_i':i,'minimum_scaled_log_margin_lower':str(low),'minimum_log_margin_integer_floor':low//SCALE,'unique_prime_logarithms':logs.cache_info().currsize,'elapsed_seconds_diagnostic':time.perf_counter()-start}
    (ROOT/'outputs'/'independent_height_check.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out,indent=2))
if __name__=='__main__':main()
