from math import gcd,isqrt
import json
from pathlib import Path

def prime(p):return p>=2 and all(p%d for d in range(2,isqrt(p)+1))
def ell_nine(n):return 3 if n%9 in (4,5,7,8) else 1

def models():
 for ell in [1,3]:
  w=5*ell
  for h in range(1,w):
   if gcd(h,5)>1:continue
   mm={t for t in range(1,h+1,2) if h%t==0}
   if ell==1:mm|={3*t for t in range(1,h+1,2) if h%t==0 and t%3}
   for m in sorted(mm):yield ell,h,m
out=[]
for period in [60,120,180,360]:
 mods=[p for p in range(3,2501,2) if prime(p) and pow(2,period,p)==1]
 roots={p:{5*ell*z*z%p for z in range(p)} for p in mods for ell in []} # computed below
 rows=[];left=[]
 for ell,h,m in models():
  w=ell*5
  for r in range(period):
   n9=m*pow(2,r,9)%9
   n25=m*pow(2,r,25)%25
   if ell_nine(n9)!=ell or n25%5!=2 or (h*(n25-1)*(n25-2)-2*w)%25:continue
   pnext=None
   for p in mods:
    n=m*pow(2,r,p)%p;R=(4*h*(n-1)*(n-2)+w)%p
    if not any((w*y*y-R)%p==0 for y in range(p)):
     pnext=p;break
   if pnext is None:left.append((ell,h,m,r))
   else:rows.append([ell,h,m,r,pnext])
 print(period,'states',len(rows)+len(left),'reject',len(rows),'remaining',left[:12], 'mods',sorted(set(x[-1] for x in rows)))
 out.append(dict(period=period,rows=rows,remaining=left))
Path(__file__).with_suffix('.json').write_text(json.dumps(out,indent=2))
