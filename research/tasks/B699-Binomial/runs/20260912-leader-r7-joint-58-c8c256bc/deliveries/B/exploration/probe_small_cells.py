from math import gcd
from pathlib import Path
import json

def primes(n):
 return [p for p in range(3,n+1,2) if all(p%d for d in range(3,int(p**.5)+1,2))]
def order2(m):
 z=2%m;k=1
 while z!=1:z=z*2%m;k+=1
 return k
mods=[m for m in primes(2000)+[9,27,25,81,125] if 360%order2(m)==0]
squares={m:{y*y%m for y in range(m)} for m in mods}
def ell9(n):
 return 3 if n%9 in [4,7,8,5] else 1 # n-1 valuation1:4,7; M valuation1: n=8,5 mod9
rows=[]
for C in [5,7,9,11,13]:
 for ell in [1,3]:
  w=C*ell
  for h in range(1,(w-1)//4+1):
   if gcd(C,h)>1:continue
   for g in range(1,2*h+1):
    if 2*h%g or gcd(g,C)>1:continue
    for c in [1,3]:
     if c==3 and (ell==3 or g%3==0):continue
     surv=[]
     for s in range(360):
      # use period representatives high enough for 4|n: all s>=2 covered plus exact low later
      nr9=(c*g*pow(2,s,9))%9
      if ell9(nr9)!=ell:continue
      ok=True
      for m in mods:
       n=c*g*pow(2,s,m)%m
       rhs=(4*h*(n-1)*(n-2)+w)%m
       if rhs not in {(w*y)%m for y in squares[m]}:
        ok=False;break
      if ok:surv.append(s)
     rows.append(dict(C=C,ell=ell,w=w,h=h,g=g,c=c,survivors=surv))
print('mods',mods)
for C in [5,7,9,11,13]:
 r=[r for r in rows if r['C']==C]
 print(C,'families',len(r),'remaining',sum(bool(x['survivors']) for x in r),'residues',sum(len(x['survivors']) for x in r))
 print([(x['w'],x['h'],x['g'],x['c'],x['survivors'][:12]) for x in r if x['survivors']][:10])
Path('/mnt/data/b699-r7-mixed/new/outputs/probe_small_cells.json').write_text(json.dumps({'period':360,'moduli':mods,'families':rows},indent=2))
