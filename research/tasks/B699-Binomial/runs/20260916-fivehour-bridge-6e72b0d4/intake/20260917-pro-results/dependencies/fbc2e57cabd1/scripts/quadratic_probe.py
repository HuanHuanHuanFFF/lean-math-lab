#!/usr/bin/env python3
"""Independent divisor/quadratic reconstruction; no modular square-root lifting."""
from math import gcd,isqrt
import json, argparse,time

def divs(n):
    a=[]
    for d in range(1,isqrt(n)+1):
        if n%d==0:
            a.append(d)
            if d*d!=n:a.append(n//d)
    return a

def iso(x): return 3 if x%3==0 and x%9!=0 else 1

def run(limit):
    start=time.perf_counter();D=[[] for _ in range(3*limit+1)]
    for d in range(1,len(D)):
        for k in range(d,len(D),d): D[k].append(d)
    count=0;hits=[];full=[]
    for t in range(1,limit+1,2):
      for lam,mu in ((1,1),(1,3),(3,1)):
       for c in D[t]:
        q=mu*c
        for m in range(1,q):
         for g in D[m]:
          if gcd(g,q)!=1:continue
          e=t*g*g-lam
          if e<=0:continue
          A=lam*(q*q-m*m)
          rad=q*q*e*e+A*e;count+=1
          sq=isqrt(rad)
          if sq*sq!=rad or (q*e+sq)%A:continue
          h=(q*e+sq)//A
          n=2*q*h+2;j=(q-m)*h+1
          if n%4 or j<4 or not 2*j<n:continue
          if gcd(n,j)!=g or (n//g)%2:continue
          if iso(n-1)!=lam or iso((n-2)//2)!=mu:continue
          if gcd((n-2)//(2*mu),t)!=c:continue
          al=n//g;beta=j//g
          assert lam*beta*(al-beta)==t*(n-1)
          assert (2*mu*j*(j-1)*(j-2))%(n-2)==0
          odd=al//(al&-al)
          row={'t':t,'n':n,'j':j,'g':g,'alpha':al,'beta':beta,'lambda':lam,'mu':mu,'c':c,'h':h,'m':m,'discriminant_quarter':rad}
          hits.append(row)
          if odd not in (1,3) or odd==3 and n%9==0:continue
          if g**3>=3*al:continue
          full.append(row)
    return {'limit':limit,'quadratics':count,'two_window_models':hits,'NC_necessary_models':full,'elapsed_seconds':round(time.perf_counter()-start,3)}
if __name__=='__main__':
 p=argparse.ArgumentParser();p.add_argument('--limit',type=int,default=100);p.add_argument('--output',required=True);a=p.parse_args()
 r=run(a.limit);open(a.output,'w').write(json.dumps(r,indent=2)+'\n')
 print({k:v for k,v in r.items() if k not in ('two_window_models','NC_necessary_models')})
 print('two window models',len(r['two_window_models']),'NC necessary',len(r['NC_necessary_models']))
 print('examples',r['two_window_models'][:3])
