from math import gcd,isqrt
from pathlib import Path
import json,time
from sympy import primerange, n_order
L=2520

def lm(n):
 lam=3 if n%3==1 and n%9!=1 else 1
 # M=(n-2)/2; v3(M)=1 iff n mod9 in [5,8]
 mu=3 if n%9 in (5,8) else 1
 return lam,mu

def divisors(n):return [i for i in range(1,n+1) if n%i==0]
mods=[8,16,32]+[p for p in primerange(3,150) if L%int(n_order(2,p))==0]
now=time.monotonic(); records=[];total=0
for C in [5,7]:
 for ell in [1,3]:
  w=ell*C
  for pos in [0,1,2]:
   for h in range(1,w):
    if gcd(h,C)>1:continue
    if pos==0 and 4*h<=w:continue
    if pos==2 and 4*h>=w:continue
    gs=divisors(2*h) if pos!=1 else [g for g in range(1,isqrt(h)+1) if h%(g*g)==0]
    for g in gs:
     for c in [1,3]:
      if c==3 and (ell==3 or g%3==0):continue
      total+=1;alive=list(range(L))
      alive=[s for s in alive if lm(c*g*pow(2,s,18))[0]*lm(c*g*pow(2,s,18))[1]==ell and (c*g*pow(2,s,C)-2)%C==0]
      before=len(alive)
      if not alive:continue
      # s>=5 => n=0 modulo 32; exact test directly in weighted equation.
      for m in mods:
       sq={w*y*y %m for y in range(m)}
       nxt=[]
       for s in alive:
        n=0 if m%2==0 else c*g*pow(2,s,m)%m
        R=(4*h*(n-1)*(n-2)+w) if pos!=1 else ((w-2*h)*n*n+6*h*n-4*h)
        if R%m in sq:nxt.append(s)
       alive=nxt
       if not alive:break
      if alive:records.append({'C':C,'ell':ell,'position':pos,'h':h,'g':g,'c':c,'count':len(alive),'residues':alive})
out={'scope':'necessary weighted-square congruences only; s>=5, residue classes mod2520; not complete noCommon','total_parameters':total,'moduli':list(map(int,mods)),'surviving_parameter_sets':len(records),'surviving_classes':sum(x['count'] for x in records),'survivors':records,'seconds':time.monotonic()-now}
p=Path(__file__).resolve().parents[1]/'outputs/probe-small-allocation.json';p.write_text(json.dumps(out,indent=2));print({k:v for k,v in out.items() if k!='survivors'});print('first',records[:4])
