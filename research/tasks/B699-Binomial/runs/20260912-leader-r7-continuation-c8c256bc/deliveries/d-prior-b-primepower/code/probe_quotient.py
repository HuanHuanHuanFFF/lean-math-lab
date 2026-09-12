#!/usr/bin/env python3
"""Discovery probe only. Quantified ranges are justified separately in PROOFS.md."""
from math import gcd, isqrt
from collections import Counter
import json, time
from pathlib import Path

def divisors(n):
    a=[];b=[]
    for k in range(1,isqrt(n)+1):
        if n%k==0:
            a.append(k)
            if k*k!=n:b.append(n//k)
    return a+b[::-1]

def normalize(n):
    M=(n-2)//2
    lam=3 if (n-1)%3==0 and (n-1)%9!=0 else 1
    mu=3 if M%3==0 and M%9!=0 else 1
    return lam,mu,(n-1)//lam,M//mu

def vpbin(n,j,p):
    v=0;q=p
    while q<=n:
        v+=n//q-j//q-(n-j)//q
        q*=p
    return v

start=time.monotonic(); ct=Counter(); survivors={}; quotient_rows={}; roots=[]
for a in range(1,22,2):
  for C in divisors(a):
    for ell in (1,3):
      w=ell*C
      for h in range(1,w):
        S=a*(w+h)
        for g in divisors(2*h):
          maxn=max(81*S**3+1,8*w**3*g*g*S*S)
          for c in (1,3):
            if c==3 and (g%3==0 or ell==3):continue
            n=2*c*g
            while n<=maxn:
              ct['n_checks']+=1
              if n>=8 and n%4==0:
                la,mu,N,K=normalize(n)
                if la*mu==ell:
                  num=h*(n-1)*(n-2)
                  if num%w==0:
                    D=1+4*(num//w);u=isqrt(D)
                    if u*u==D:
                      ct['square_roots']+=1
                      x=(1+u)//2;y=n-x
                      why=('range' if min(x,y)<4 or 2*x==n else 'gcd' if gcd(n,y)!=g else 'cofactor' if (y//g)%a else 'K_assignment' if gcd(K,y//g)!=C else 'pass')
                      roots.append({'a':a,'C':C,'ell':ell,'w':w,'h':h,'g':g,'c':c,'n':n,'x':x,'reason':why})
                      ct['root_reject_'+why]+=1
                      if y>=4 and x>=4 and 2*x!=n and gcd(n,y)==g:
                        zeta=y//g
                        if zeta%a==0 and gcd(K,zeta)==C:
                          ct['quotient_rows']+=1
                          j=min(x,y)
                          key=(n,j,a,C,ell,h,g)
                          quotient_rows[key]={'n':n,'j':j,'a':a,'C':C,'ell':ell,'h':h,'g':g,'side':'beta' if y<x else 'gamma','zeta':zeta}
                          if (j*(j-1))%N==0 and (j*(j-1)*(j-2))%K==0:
                            ct['exact_projection_rows']+=1
                            survivors[key]=quotient_rows[key]
              n*=2
out={'status':'DISCOVERY_ONLY','a_max':21,'counts':dict(ct),'seconds':time.monotonic()-start,'roots':roots,'quotient_rows':list(quotient_rows.values()),'survivors':list(survivors.values())}
p=Path(__file__).resolve().parents[1]/'replay'/'probe_quotient.json';p.write_text(json.dumps(out,indent=2))
print(json.dumps({k:v for k,v in out.items() if k not in ['survivors','quotient_rows','roots']},indent=2))
print('survivors',len(survivors));print(json.dumps(list(survivors.values())[:10],indent=2))
