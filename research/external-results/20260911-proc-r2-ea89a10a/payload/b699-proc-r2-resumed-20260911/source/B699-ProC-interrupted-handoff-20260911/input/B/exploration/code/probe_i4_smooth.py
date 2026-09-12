"""Exact proof-design probe for a whole 3-smooth-window family (not yet acceptance)."""
from math import comb
from pathlib import Path
import json

def vp(n,p):
 assert n>0;e=0
 while n%p==0:n//=p;e+=1
 return e

def U4(n):
 e2=sum(vp(n-r,2) for r in range(4))-3
 e3=sum(vp(n-r,3) for r in range(4))-1
 return (1<<e2)*3**e3
rows={}
for a in range(52):
 for b in range(52):
  if a>=2 and b>=2:continue
  N=2**a*3**b
  for r in range(4):
   n=N+r
   if n>=10:rows.setdefault(n,[]).append([a,b,r])
res=[];I=0;W=0
for n,src in sorted(rows.items()):
 u=U4(n)
 if 9*(n-2)*u*u<2*(n-1)**2*(n-3):I+=1;continue
 if 729*(n-2)*u**6<=(n-1)**5*(n-3)**3:W+=1;continue
 res.append({'n':n,'U':u,'sources':src})
ret={'rows':len(rows),'I_filtered':I,'W_filtered':W,'residual_count':len(res),'max_residual_n':max(x['n'] for x in res),'residuals':res,
 'tail_margin':2**52-186624*52**6,'monotone_margin':2*52**6-53**6}
p=Path(__file__).resolve().parents[1]/'outputs/i4_smooth_probe.json';p.write_text(json.dumps(ret,indent=2))
print(json.dumps({k:v for k,v in ret.items() if k!='residuals'},indent=2));print(json.dumps(res,indent=2)[:10000])
