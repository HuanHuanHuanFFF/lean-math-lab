import json
from math import gcd,lcm,isqrt
from pathlib import Path
BASE=Path(__file__).resolve().parents[1]
def prime(p):return p>1 and all(p%q for q in range(2,isqrt(p)+1))
def order2(m):
 z=2%m;k=1
 while z!=1:z=z*2%m;k+=1
 return k
mods=[m for m in list(filter(prime,range(3,2500,2)))+[9,27,25] if 360%order2(m)==0]
quad={m:{y*y%m for y in range(m)} for m in mods}
def ell9(n):return 3 if n%9 in (4,7,5,8) else 1
out=[]
for C in [5,7,9,11,13]:
 for pos in [0,1,2]:
  for ell in [1,3]:
   if gcd(C,ell)>1:continue
   w=C*ell
   for h in range(1,w):
    if gcd(h,C)>1:continue
    if pos==0 and 4*h<=w:continue
    if pos==1 and 2*h>=w:continue # large n only, small n handled separately
    if pos==2 and 4*h>=w:continue
    for g in range(1,(isqrt(2*h) if pos==1 else 2*h)+1):
     if (2*h)%(g*g if pos==1 else g) or gcd(g,C)>1:continue
     for c in [1,3]:
      if c==3 and (ell==3 or g%3==0):continue
      ss=[]
      for r in range(360):
       if ell9(c*g*pow(2,r,9))!=ell:continue
       ok=True
       for m in mods:
        n=(c*g*pow(2,r,m))%m
        rhs=(w*n*n-2*h*(n-1)*(n-2))%m if pos==1 else (4*h*(n-1)*(n-2)+w)%m
        if rhs not in {w*y%m for y in quad[m]}:
         ok=False;break
       if ok:ss.append(r)
      p=lcm(360,order2(C*C)); survivors=[]
      for r in ss:
       for e in range(r,p,360):
        n=c*g*pow(2,e,C*C)%(C*C)
        if n%C!=2%C:continue
        if (h*(n-1)*(n-2)-2*ell*C)%(C*C):continue
        survivors.append(e)
      out.append(dict(C=C,pos=pos,ell=ell,w=w,h=h,g=g,c=c,period=p,survivors=sorted(survivors)))
for C in [5,7,9,11,13]:
 for pos in [0,1,2]:
  r=[x for x in out if x['C']==C and x['pos']==pos];r1=[x for x in r if x['survivors']]
  print('C,pos',C,pos,'families',len(r),'surv',len(r1),'states',sum(len(x['survivors']) for x in r1))
  print([(x['w'],x['h'],x['g'],x['c'],x['survivors'][:5]) for x in r1][:20])
(BASE/'outputs/probe_three_positions.json').write_text(json.dumps(dict(mods=mods,rows=out),indent=2))
