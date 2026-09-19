#!/usr/bin/env python3
"""New near-saturation discovery with ordinary-source line pruning.
Derived formulas from frozen NF35 discover_nf35.py; no frozen certificate replay.
Only discovers necessary gates and NONZERO rank witnesses, not final acceptance.
"""
from __future__ import annotations
import argparse,json,time,math
from itertools import combinations_with_replacement as cwr,product
from collections import defaultdict,Counter
from fractions import Fraction as F
from functools import lru_cache
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
RS=tuple(range(3,9));VS={r:tuple(s*(r-s) for s in range(r//2+1)) for r in RS};FD=(-1,5,-10,10,-5,1);P=1000003

def dump(p,x):p.write_text(json.dumps(x,separators=(',',':'))+'\n')
def mul(a,b):
 o=defaultdict(int)
 for (i,j),c in a.items():
  for (k,l),v in b.items():o[i+k,j+l]+=c*v
 return {k:v for k,v in o.items() if v}
def add(a,b):
 o=dict(a)
 for k,v in b.items():o[k]=o.get(k,0)+v
 return {k:v for k,v in o.items() if v}
W={(0,0):1}
for r in RS:W=mul(W,{(1,0):1,(0,0):-r})
LAG120=[]
for r in RS:
 pol={(0,0):1};den=1
 for s in RS:
  if s!=r:pol=mul(pol,{(1,0):1,(0,0):-s});den*=r-s
 assert 120%den==0
 LAG120.append({k:c*(120//den) for k,c in pol.items()})

def data(r,q):
 out=[]
 for rt in cwr(VS[r],q):
  ss=sum(rt);co=Counter(rt)
  out.append((rt,ss,(ss*ss-sum(v*v for v in rt))//2,len(co),tuple(co[t*(r-t)] for t in range(5))))
 return out

def gates(q,rows,zmin):
 ls={r:data(r,q) for r in RS};bs={r:defaultdict(list) for r in RS}
 for r in RS:
  for row in ls[r]:bs[r][row[1]].append(row)
 allstats=[];res=[]
 for h in rows:
  tm=time.monotonic();counts=Counter();forced=Counter();low=data(h,q-1);other=[r for r in (6,7,8) if r!=h]
  for x,y,z in product(ls[3],ls[4],ls[5]):
   u,v,w=x[1],y[1],z[1];sums={3:u,4:v,5:w,6:u-3*v+3*w,7:3*u-8*v+6*w,8:6*u-15*v+10*w}
   if any(sums[r] not in bs[r] for r in other):continue
   for tail in product(*(bs[r][sums[r]] for r in other)):
    sat={3:x,4:y,5:z};sat.update(zip(other,tail));counts['five_saturated_sum_gate']+=1
    zg=sum(x[3] for x in sat.values())
    if zg+len(VS[h])<zmin:continue
    target=-sum(FD[r-3]*a[2] for r,a in sat.items());fh=FD[h-3]
    sc=[sum(x[4][t] for x in sat.values()) for t in range(5)]
    for b in low:
     if zg+b[3]<zmin:continue
     counts['ordinary_z_tests']+=1;lam=sums[h]-b[1]
     if fh*(b[2]+lam*b[1])!=target:continue
     if lam in VS[h] and lam not in b[0]:counts['new_source_rejected']+=1;continue
     counts['root_gate']+=1
     scores=[sc[t]+b[4][t] for t in range(5)]
     t=next((t for t,x in enumerate(scores) if x>2*q),None)
     if t is not None:forced[t]+=1;continue
     rt=tuple(sat[r][0] if r!=h else b[0] for r in RS)
     res.append({'h':h,'roots':rt,'lambda':lam})
  stat={'h':h,**dict(counts),'forced':dict(forced),'seconds':round(time.monotonic()-tm,4)};allstats.append(stat);print('GATE',q,stat,flush=True)
 return res,allstats

class Model:
 def __init__(self,q):
  self.q=q;self.qb=tuple((a,b) for b in range(q-2) for a in range(2*q-5-2*b));self.nc=len(self.qb)
  self.bas=[{(a+i,b+j):c for (i,j),c in W.items()} for a,b in self.qb];self.cache={};self.rowpoly={}
 def h0(self,rt):
  pol={}
  for roots,lag in zip(rt,LAG120):
   if roots not in self.rowpoly:
    p={(0,0):1}
    for v in roots:p=mul(p,{(0,1):1,(0,0):-v})
    self.rowpoly[roots]=p
   pol=add(pol,mul(self.rowpoly[roots],lag))
  assert pol[0,self.q]==120 and max(a+2*b for a,b in pol)==2*self.q
  return pol
 @staticmethod
 def jet(poly,key):
  r,v,i,j=key
  return sum(c*math.comb(a,i)*math.comb(b,j)*r**(a-i)*v**(b-j) for (a,b),c in poly.items() if a>=i and b>=j)
 def matrix(self,rec):
  full=tuple(tuple(sorted((*rt,rec['lambda']))) if r==rec['h'] else tuple(rt) for r,rt in zip(RS,rec['roots']));p0=self.h0(full);labs=[];a=[]
  for r,rt in zip(RS,rec['roots']):
   for v,m in sorted(Counter(rt).items()):
    for i in range(1,m):
     for j in range(m-i):
      key=(r,v,i,j);labs.append(key)
      if key not in self.cache:self.cache[key]=tuple(self.jet(b,key) for b in self.bas)
      a.append(list(self.cache[key])+[-self.jet(p0,key)])
  return labs,a,p0

def pivots(mat):
 a=[[x%P for x in row] for row in mat];ids=list(range(len(a)));rr=0;cs=[];rs=[]
 for c in range(len(a[0])):
  ix=next((i for i in range(rr,len(a)) if a[i][c]),None)
  if ix is None:continue
  a[rr],a[ix]=a[ix],a[rr];ids[rr],ids[ix]=ids[ix],ids[rr];rs.append(ids[rr]);cs.append(c)
  inv=pow(a[rr][c],-1,P);piv=[x*inv%P for x in a[rr][c:]]
  for i in range(rr+1,len(a)):
   z=a[i][c]
   if z:a[i][c:]=[(x-z*y)%P for x,y in zip(a[i][c:],piv)]
  rr+=1
  if rr==len(a):break
 return rs,cs

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--q',type=int,default=7);ap.add_argument('--zmin',type=int,default=14);ap.add_argument('--rows',nargs='+',type=int,default=[6,7,8]);args=ap.parse_args()
 t=time.monotonic();q=args.q;tag=f'nf{6*q-1}_z{args.zmin}';gp=ROOT/f'evidence/{tag}_discovery_gates.json'
 if gp.exists():a=json.loads(gp.read_text());recs,stats=a['residuals'],a['stats']
 else:
  recs,stats=gates(q,args.rows,args.zmin);dump(gp,{'residuals':recs,'stats':stats})
 model=Model(q);cert=[];fail=[];maxrows=0
 print('SYSTEMS',len(recs),'PARAMETERS',model.nc,flush=True)
 for idx,rec in enumerate(recs):
  labs,mat,_=model.matrix(rec);rr,cc=pivots(mat);maxrows=max(maxrows,len(labs))
  if cc!=list(range(model.nc+1)):
   fail.append(idx);print('UNRESOLVED',idx,'rank_mod',len(cc),flush=True)
  cert.append({**rec,'pivot_rows':rr,'pivot_columns':cc})
  if (idx+1)%100==0:print('JETS',idx+1,'seconds',round(time.monotonic()-t,3),flush=True)
 dump(ROOT/f'evidence/{tag}_certificate.json',cert)
 sm={'q':q,'zmin':args.zmin,'stats':stats,'residuals':len(recs),'unresolved':fail,'maxrows':maxrows,'parameters':model.nc,'seconds':round(time.monotonic()-t,3)}
 dump(ROOT/f'evidence/{tag}_discovery_summary.json',sm);print('SUMMARY',sm,flush=True)
if __name__=='__main__':main()
