#!/usr/bin/env python3
"""Exact exploratory reconstruction; no Common conclusions without consumers.
This prototype counts intervals of at least two distinct small-prime colours.
"""
import json, math, time
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]

def primes_below(n):
    return [p for p in range(2,n) if all(p%d for d in range(2,math.isqrt(p)+1))]
def vp(n,p):
    e=0
    while n%p==0:
        n//=p;e+=1
    return e

def least_m(K,exponent,rhs):
    lo,hi=0,1
    while K*hi**exponent < rhs:hi*=2
    while hi-lo>1:
        mid=(lo+hi)//2
        if K*mid**exponent>=rhs:hi=mid
        else:lo=mid
    return hi

def parameters(i):
    m=i//3;r=m;s=2*m;L=i-r-1;lam=2*s-r
    E=s*(s+1)+L*(L+1)//2
    B=lambda q:math.prod(math.factorial(h) for h in range(1,q+1))
    K=2**(s*(s+1))*B(s)**2*B(L)
    t=len(primes_below(i));d=E-lam*(i-t)
    return dict(i=i,r=r,s=s,L=L,lam=lam,E=E,K=K,t=t,d=d)

def cover(i,H,ell=2):
    par=parameters(i)
    K,lam,t,d=[par[k] for k in ('K','lam','t','d')]
    low=i*(i-1)
    assert d>=0 and H>low and 1<=ell<=t
    M=least_m(K,lam*(t-ell+1),(2*math.factorial(i))**lam*H**d)
    # If n >= low > M then the selected binomial valuations are positive.
    # For general M a branch [low,M] must be retained. Our chosen data avoid it.
    start=max(low,M+1)
    events=[];families=[];raw=0
    for p in primes_below(i):
        v=vp(i,p);cap=M//(p**v);h=v+1;Q=p**h
        while Q<H:
            amin=max(1,(start-(i-1)+Q-1)//Q)
            amax=min(cap,(H-1)//Q)
            if amin<=amax:
                families.append([p,h,amin,amax])
                for a in range(amin,amax+1):
                    l=max(start,a*Q);u=min(H-1,a*Q+i-1)
                    assert l<=u
                    events.append((l,p,1));events.append((u+1,p,-1));raw+=1
            h+=1;Q*=p
    events.sort();counts={};active=0;last=None;good=[];at=0
    while at<len(events):
        x=events[at][0]
        if last is not None and active>=ell and x>last:
            if good and good[-1][1]+1==last:good[-1][1]=x-1
            else:good.append([last,x-1])
        while at<len(events) and events[at][0]==x:
            _,p,c=events[at];prev=counts.get(p,0);new=prev+c
            if prev==0 and new>0:active+=1
            if prev>0 and new==0:active-=1
            assert new>=0
            counts[p]=new;at+=1
        last=x
    assert active==0
    result=dict(i=i,H=str(H),ell=ell,M=M,start=start,raw_intervals=raw,
                families=families,segments=good,rows=sum(u-l+1 for l,u in good),
                next_H=max(start,good[-1][1]+1 if good else start))
    return result

if __name__=='__main__':
    out=[]
    for i,h in [(27,95),(30,110),(33,125)]:
        H=1<<h
        for step in range(6):
            t0=time.monotonic();d=cover(i,H);d['wall_seconds']=time.monotonic()-t0
            out.append(d)
            print({k:v for k,v in d.items() if k not in ('families','segments')},flush=True)
            N=d['next_H']
            if N>=H:break
            H=N
    (ROOT/'outputs'/'cover_probe.json').write_text(json.dumps(out,indent=2))
