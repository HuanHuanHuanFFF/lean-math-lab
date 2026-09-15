import json,math
from pathlib import Path
root=Path(__file__).resolve().parents[1]
def prime(p):return p>1 and all(p%d for d in range(2,math.isqrt(p)+1))
def ord2(p):
 r=2%p;k=1
 while r!=1:r=r*2%p;k+=1
 return k
period=720
mods=[9,27]+[p for p in range(5,400) if prime(p) and period%ord2(p)==0]
items=[]
for e,m,h in [(-1,7,1),(1,7,1),(-1,5,1),(-1,5,2),(1,5,2)]:
 for s in range(period):
  x=m*pow(2,s,9)
  if (x+e)%3==0 and (x+e)%9!=0:items.append((e,m,h,s))
options={}
for e,m,h,s in items:
 for q in mods:
  x=m*pow(2,s,q)%q;D=(x-e)%q
  if all((4*u*(m*m*u-3*D)*(m*m*u-6*D)-(h*D-9*u)*(x*x-2))%q for u in range(q)):
   options.setdefault((e,m,h,q,x),set()).add((e,m,h,s))
remaining=set(items);out=[]
while remaining:
 k,S=max(options.items(),key=lambda it:len(it[1]&remaining)/it[0][3])
 hit=S&remaining
 if not hit:break
 out.append((k,len(hit)));remaining-=hit
print(json.dumps({'states':len(items),'covered':len(items)-len(remaining),'remaining':len(remaining),'selected':out,'modulus_work':sum(o[0][3] for o in out)}))
(root/'exploration/non-dyadic-cover.json').write_text(json.dumps({'period':period,'selected':[list(x[0]) for x in out],'states':len(items),'remaining':[list(x) for x in sorted(remaining)]},indent=2))
