"""Exploratory only: fixed exact endpoint p=5/7, no acceptance claims."""
from math import gcd,lcm,isqrt
from pathlib import Path
import json,time
import numpy as np

def primes(b):
 return [n for n in range(3,b+1,2) if all(n%d for d in range(3,isqrt(n)+1,2))]
def odd(x):
 while x%2==0:x//=2
 return x

def small(n):
 return (3 if n%9 in (4,7) else 1,3 if n%9 in (5,8) else 1)
PER=2520
qs=[p for p in primes(1000) if pow(2,PER,p)==1]
ps2={p:np.array([pow(2,v,p) for v in range(PER)],dtype=np.int64) for p in qs}
exps=np.arange(PER)
# Lift exact p endpoint modulo p^2.
def allowed(c,p):
 A,r,M,g,lam,mu=c
 mod=p*p
 ys=[y for y in range(mod) if y%p==2 and y%gcd(g,mod)==0]
 lhs={(A*y*(y-1))%mod for y in ys}
 return {n for n in range(mod) if n%p==2 and n!=2 and r*(n-1)*(n-2)%mod in lhs}

out=[]
start=time.time()
for p in (5,7):
 for lam,mu in [(1,1),(3,1),(1,3)]:
  A=lam*mu*p
  for r in range(1,A):
   for g in range(1,2*r+1):
    if 2*r%g or gcd(g,A)>1:continue
    e=(g&-g).bit_length()-1
    if e and e!=((r&-r).bit_length()-1)+1:continue
    for cc in (1,3):
     if cc==3 and (g%3==0 or lam*mu==3):continue
     M=cc*odd(g)
     c=(A,r,M,g,lam,mu)
     ns=np.array([M*pow(2,v,9)%9 for v in range(PER)])
     mask=np.array([small(int(n))==(lam,mu) for n in ns],bool)
     mod=p*p
     na=np.array([M*pow(2,v,mod)%mod for v in range(PER)])
     aset=allowed(c,p)
     mask &= np.array([int(n) in aset for n in na])
     count0=int(mask.sum())
     if not count0:continue
     for q in qs:
      if A%q==0:continue
      qr={x*x%q for x in range(q)}
      n=M*ps2[q]%q
      d=(A*(4*r*n*n-12*r*n+8*r+A))%q
      mask &= np.isin(d,np.fromiter(qr,dtype=np.int64))
      if not mask.any():break
     survivors=exps[mask].tolist()
     out.append({'p':p,'c':c,'before':count0,'after':len(survivors),'v':survivors})
summary={'period':PER,'moduli':qs,'count':len(out),'remaining_cases':sum(bool(x['v']) for x in out),'remaining_residues':sum(x['after'] for x in out),'seconds':time.time()-start,'cases':out}
path=Path(__file__).resolve().parents[1]/'verification'/'small_endpoint_probe.json'
path.write_text(json.dumps(summary,indent=2))
print({k:v for k,v in summary.items() if k not in ['cases','moduli']})
for x in out:
 if x['v']:print(x['p'],x['c'],x['after'],x['v'][:24])
