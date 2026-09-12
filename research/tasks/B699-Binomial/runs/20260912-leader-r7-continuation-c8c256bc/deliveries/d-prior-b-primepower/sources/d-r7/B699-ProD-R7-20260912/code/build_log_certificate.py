#!/usr/bin/env python3
"""Exact rational log intervals and two approximation certificates; no float arithmetic."""
from fractions import Fraction as F
from math import isqrt, gcd
from pathlib import Path
import json,time,argparse
ROOT=Path(__file__).resolve().parents[1]

def sqrt_interval(a, bits=512):
    d=1<<bits
    lo=isqrt(a*d*d)
    assert lo*lo<a*d*d<(lo+1)*(lo+1)
    return F(lo,d), F(lo+1,d)

def series(r,N):
    # sum_{k=0}^{N-1} r^k/(2k+1), with geometric upper tail
    p=F(1); s=F(0)
    for k in range(N):
        s+=p/(2*k+1);p*=r
    return s,s+p/((2*N+1)*(1-r))

def intervals():
    l,u=series(F(1,9),128)
    log2=(2*l/3,2*u/3)
    out={}
    for D,ratio in [(3,F(1,3)),(6,F(2,3))]:
        zlo,zhi=sqrt_interval(D)
        slo,shi=series(ratio,384)
        loga=(2*zlo*slo/3,2*zhi*shi/3)
        out[D]=(loga[0]/log2[1],loga[1]/log2[0])
    return log2,out

def enc(x):return [str(x.numerator),str(x.denominator)]

def build(destination=None):
    start=time.monotonic(); log2,iv=intervals(); B=3*10**22
    rows=[]
    for D,(lo,hi) in iv.items():
        mid=(lo+hi)/2
        rat=mid.limit_denominator(10**25)
        r,s=rat.numerator,rat.denominator
        err=max(abs(lo-rat),abs(hi-rat))
        assert gcd(r,s)==1
        assert s>B
        assert 2*B*s*err<1
        assert 20*s<2**96
        rows.append({'D':D,'r':str(r),'s':str(s)})
    small={}
    for a in [1,2]:
        hits=[]
        for v in range(3,96):
            n=1<<v; num=4*a*(n-1)*(n-2)+3
            if num%3==0:
                z=isqrt(num//3)
                if 3*z*z==num:hits.append([v,z])
        assert not hits
        small[str(a)]={'v_min':3,'v_max':95,'solutions':hits}
    out={'schema':'B699-ProD-two-log-1','B':str(B), 'analytic_v_upper_exclusive':str(10**22),
         'reduced_v_upper_exclusive':96,
         'approximation_certificates':rows,'terminal_check':small}
    p=Path(destination) if destination is not None else ROOT/'evidence'/'two-log-certificates.json'
    p.write_text(json.dumps(out,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({'status':'PASS','rows':[{k:r[k] for k in ['D','r','s']} for r in rows],
                      'finite_exponents_per_equation':93,'seconds_diagnostic':time.monotonic()-start}))
if __name__=='__main__':
    parser=argparse.ArgumentParser()
    parser.add_argument('--output',type=Path)
    args=parser.parse_args()
    build(args.output)
