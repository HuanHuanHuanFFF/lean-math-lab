"""Exact finite-period necessary sieve, via the complete good-prime elliptic map."""
from pathlib import Path
from math import gcd
import hashlib
import json
import time
import numpy as np

ROOT=Path(__file__).resolve().parent
LIMIT=200000
PERIODS=(2520,27720,360360,720720,1081080,2162160,4324320,8648640)


def primes_and_spf(n):
    spf=list(range(n+1))
    for d in range(2,int(n**0.5)+1):
        if spf[d]==d:
            for k in range(d*d,n+1,d):
                if spf[k]==k:
                    spf[k]=d
    return [p for p in range(2,n+1) if spf[p]==p],spf


def order2(p,spf):
    m=p-1
    z=m
    factors=[]
    while z>1:
        q=spf[z]
        factors.append(q)
        while z%q==0:
            z//=q
    for q in factors:
        while m%q==0 and pow(2,m//q,p)==1:
            m//=q
    assert pow(2,m,p)==1
    return m


def x_values(p):
    inv=[0]*p
    inv[1]=1
    for i in range(2,p):
        inv[i]=p-(p//i)*inv[p%i]%p
    sqrt=[-1]*p
    for v in range((p+1)//2):
        sqrt[v*v%p]=v
    good=np.zeros(p,dtype=np.bool_)
    good[1]=True  # the original rational flex, absent from the elliptic affine chart
    for t in range(p):
        rhs=(t*t*t-60*t*t-8700*t)%p
        q=sqrt[rhs]
        if q<0:
            continue
        for v in ([q] if q==0 else [q,p-q]):
            den=(v+9*t+290)%p
            if den:
                x=(v+18*t+580)*inv[den]%p
                good[x]=True
    return good


def f1(x,u,p):
    d=x-1
    return (4*u*(25*u-3*d)*(25*u-6*d)-(d-9*u)*(x*x-2))%p


def main():
    start=time.monotonic()
    ps,spf=primes_and_spf(LIMIT)
    selected=[]
    for p in ps:
        if gcd(p,2*3*5*29)!=1:
            continue
        m=order2(p,spf)
        if PERIODS[-1]%m==0:
            selected.append((m,p))
    selected.sort()
    data=[]
    for m,p in selected:
        good=x_values(p)
        # Explicit small-prime chart completeness check against the original cubic.
        if p<=101:
            direct=np.array([any(f1(x,u,p)==0 for u in range(p)) for x in range(p)],dtype=np.bool_)
            assert np.array_equal(good,direct),p
        allowed=np.zeros(m,dtype=np.bool_)
        x=5%p
        for s in range(m):
            allowed[s]=good[x]
            x=2*x%p
        assert x==5%p
        data.append((m,p,allowed))
        if time.monotonic()-start>480:
            break
    results=[]
    arrays={}
    for period in PERIODS:
        rr=np.arange(period,dtype=np.int64)
        rr=rr[(rr%6==0)|(rr%6==2)]
        steps=[]
        for m,p,allowed in data:
            if period%m:
                continue
            before=len(rr)
            rr=rr[allowed[rr%m]]
            steps.append({"p":p,"order":m,"before":before,"after":len(rr)})
            if not len(rr):
                break
        arrays[f"residues_{period}"]=rr
        results.append({"period":period,"primes":len(steps),"survivors":len(rr),
                        "first_residues":rr[:24].tolist(),"steps":steps})
    np.savez_compressed(ROOT/'mirror_period_sieve_residues.npz',**arrays)
    output={"scope":"Exact finite-period necessary conditions; nonempty survivors remain infinite exponent classes",
            "prime_cap":LIMIT,"selected_primes":len(selected),"processed_primes":len(data),
            "results":results,"elapsed_seconds":time.monotonic()-start,
            "script_sha256":hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
    (ROOT/'mirror_period_sieve.json').write_text(json.dumps(output,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({"processed_primes":len(data),"results":[{k:r[k] for k in ('period','primes','survivors')} for r in results],
                      "elapsed_seconds":output['elapsed_seconds']}))


if __name__=='__main__':
    main()
