#!/usr/bin/env python3
"""Exact rational logarithm certificates. No floating point is used for acceptance."""
from fractions import Fraction as F
from math import isqrt
from functools import lru_cache
from pathlib import Path
import json, time

ROOT=Path(__file__).resolve().parents[1]
N=2_000_000
SCALE=10**30
TERMS=24

@lru_cache(None)
def log_unit_bounds(a:int,b:int):
    """For 1 <= a/b <= 2, bound log(a/b) by the atanh power series."""
    assert b>0 and b<=a<=2*b
    z=F(a-b,a+b); z2=z*z; power=z; lower=F(0)
    for k in range(TERMS):
        lower += 2*power/(2*k+1)
        power *= z2
    upper=lower+2*power/((2*TERMS+1)*(1-z2))
    return lower,upper

@lru_cache(None)
def log_bounds(n:int):
    assert n>0
    exponent=n.bit_length()-1
    lo,hi=log_unit_bounds(n,1<<exponent)
    l2,u2=log_unit_bounds(2,1)
    lo+=exponent*l2;hi+=exponent*u2
    a=lo.numerator*SCALE//lo.denominator
    b=(hi.numerator*SCALE+hi.denominator-1)//hi.denominator
    return a,b

def small_primes(limit):
    # Completeness follows by testing every integer; primality by trial division.
    return [x for x in range(2,limit+1) if all(x%d for d in range(2,isqrt(x)+1))]

def verify():
    start=time.perf_counter()
    ps=small_primes(999)
    L=[0]*1000;U=[0]*1000;BL=[0]*1000;BU=[0]*1000;FL=[0]*1000;FU=[0]*1000
    for h in range(1,1000):
        lo,hi=log_bounds(h); L[h]=L[h-1]+lo; U[h]=U[h-1]+hi
        BL[h]=BL[h-1]+L[h];BU[h]=BU[h-1]+U[h]
        lo,hi=log_bounds(N-h+1);FL[h]=FL[h-1]+lo;FU[h]=FU[h-1]+hi
    lnNlo,lnNhi=log_bounds(N);ln2lo,ln2hi=log_bounds(2)
    rows=[]
    for i in range(323,1000):
        t=sum(p<i for p in ps)
        r=i//3;s=7*i//10;ell=i-r-1;lam=2*s-r
        E=s*(s+1)+ell*(ell+1)//2;delta=lam*(i-t)-E
        assert 0<=r<i and 1<=s<i and lam>0 and delta>0
        # Lower endpoint of log(CERT_left/CERT_right).
        margin=s*(s+1)*ln2lo+2*BL[s]+BL[ell]+lam*FL[i]-lam*U[i]-(t*lam+E)*lnNhi
        assert margin>0,(i,margin)
        rows.append(dict(i=i,t=t,r=r,s=s,ell=ell,lam=lam,E=E,delta=delta,scaled_log_margin_lower=str(margin)))
    smallest=min(rows,key=lambda r:int(r['scaled_log_margin_lower']))
    result={'status':'PASS','i_min':323,'i_max':999,'rows_verified':len(rows),'N':N,'log_scale':str(SCALE),'atanh_terms':TERMS,'small_prime_count':len(ps),'minimum_margin_row':smallest,'minimum_log_margin_integer_floor':int(smallest['scaled_log_margin_lower'])//SCALE,'rows':rows,'elapsed_seconds_diagnostic':time.perf_counter()-start}
    out=ROOT/'outputs'/'exact_height_certificate.json';out.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({k:v for k,v in result.items() if k!='rows'},indent=2))
    return result

if __name__=='__main__':verify()
