import json,math,time
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
def prime(p):return p>1 and all(p%d for d in range(2,math.isqrt(p)+1))
def order2(p):
 a=2%p;t=1
 while a!=1:a=a*2%p;t+=1
 return t
PER=2160
mods=[9,27,81]+[p for p in range(5,1200) if prime(p) and PER%order2(p)==0]
cache={}
def block(m,h,e,s,p):
 x=m*pow(2,s,p)%p;D=(x-e)%p
 key=(m,h,e,p,x)
 if key in cache:return cache[key]
 vals=[]
 for u in range(p):
  a=m*m*u
  if (4*u*(a-3*D)*(a-6*D)-(h*D-9*u)*(x*x-2))%p==0:
   vals.append(u)
 cache[key]=not vals
 return not vals
start=time.time();rows=[];surv=[];cover=[]
for e in [-1,1]:
 for m in [1,5,7]:
  for h in range(1,54//(m*m)+1):
   if h%3==0:continue
   for s in range(PER):
    x9=m*pow(2,s,9)%9
    if (x9+e)%3 or (x9+e)%9==0:continue
    row=(e,m,h,s);rows.append(row)
    for p in mods:
     if block(m,h,e,s,p):cover.append((row,p));break
    else:surv.append(row)
print(json.dumps({'period':PER,'moduli':mods,'rows':len(rows),'covered':len(cover),'survivors':len(surv),'survivor_templates':sorted(set(r[:3] for r in surv)),'first_survivors':surv[:25],'seconds':time.time()-start}))
(ROOT/'exploration/probe2-output.json').write_text(json.dumps({'period':PER,'moduli':mods,'counts':{'rows':len(rows),'covered':len(cover)},'survivors':surv}))
