#!/usr/bin/env python3
"""New full first-three-row near-saturation gate, targeted at missing NF35/41 front.
Discovery only. Exact affine fallback uses SymPy DomainMatrix, separately checked.
"""
from __future__ import annotations
import argparse,json,time,math
from fractions import Fraction as F
from itertools import combinations_with_replacement as cwr, product
from collections import Counter,defaultdict
from pathlib import Path
from discover_nf import RS,VS,FD,Model,pivots,mul,add,dump
R=Path(__file__).resolve().parents[1]

def gen(q,missing_rows,zmin=14):
 buckets={}
 for r in RS:
  dd=defaultdict(list)
  for rt in cwr(VS[r],q):
   ss=sum(rt);co=Counter(rt);dd[ss].append((rt,(ss*ss-sum(v*v for v in rt))//2,len(co),tuple(co[t*(r-t)] for t in range(5))))
  buckets[r]=dd
 records=[];stats=[]
 for h in missing_rows:
  start=time.monotonic();good=tuple(r for r in RS if r!=h);piv=(good[0],good[2],good[4]);ww={};index={}
  for r in RS:
   w=[F(math.prod(r-t for t in piv if t!=s),math.prod(s-t for t in piv if t!=s)) for s in piv]
   den=math.lcm(*(x.denominator for x in w));ww[r]=(tuple(int(x*den) for x in w),den)
  low=[]
  for rt in cwr(VS[h],q-1):
   ss=sum(rt);co=Counter(rt);low.append((rt,ss,(ss*ss-sum(v*v for v in rt))//2,len(co),tuple(co[t*(h-t)] for t in range(5))))
  cnt=Counter();forced=Counter()
  for sm in product(*(tuple(buckets[r]) for r in piv)):
   vals={}
   for r in good:
    w,den=ww[r];v,rem=divmod(sum(x*y for x,y in zip(w,sm)),den)
    if rem or v not in buckets[r]:break
    vals[r]=v
   if len(vals)!=5:continue
   w,den=ww[h];sh,rem=divmod(sum(x*y for x,y in zip(w,sm)),den);assert not rem
   if sh not in index:
    di=defaultdict(list)
    for a in low:
     lam=sh-a[1]
     if lam in VS[h] and lam not in a[0]:continue
     di[a[2]+lam*a[1]].append((a,lam))
    index[sh]=di
   for choices in product(*(buckets[r][vals[r]] for r in good)):
    cnt['sum_gate']+=1;zg=sum(a[2] for a in choices)
    if zg+len(VS[h])<zmin:continue
    b,rem=divmod(-sum(FD[r-3]*a[1] for r,a in zip(good,choices)),FD[h-3])
    if rem:continue
    for lowrow,lam in index[sh].get(b,()):
     if zg+lowrow[3]<zmin:continue
     cnt['gates']+=1;scores=[sum(a[3][t] for a in choices)+lowrow[4][t] for t in range(5)]
     t=next((t for t,v in enumerate(scores) if v>2*q),None)
     if t is not None:forced[t]+=1;continue
     rd=dict(zip(good,choices));rt=tuple(rd[r][0] if r!=h else lowrow[0] for r in RS)
     records.append({'h':h,'roots':rt,'lambda':lam})
  stat={'h':h,**dict(cnt),'forced':dict(forced),'seconds':round(time.monotonic()-start,3)};stats.append(stat);print('GATES',q,stat,flush=True)
 return records,stats

def exact_affine(mat,n):
 import sympy as s
 from sympy.polys.matrices import DomainMatrix
 rr,piv=DomainMatrix.from_Matrix(s.Matrix(mat)).rref();a=rr.to_Matrix()
 if n in piv:return None
 b=[F(0)]*n
 for i,c in enumerate(piv):b[c]=F(a[i,n])
 ds=[]
 for f in [i for i in range(n) if i not in piv]:
  v=[F(0)]*n;v[f]=F(1)
  for i,c in enumerate(piv):v[c]=-F(a[i,f])
  ds.append(v)
 return b,ds

def assemble(model,p0,vec):
 p=dict(p0)
 for c,b in zip(vec,model.bas):p=add(p,{k:c*v for k,v in b.items()})
 return p

def subline(p,t):
 out=defaultdict(F)
 for (a,b),c in p.items():
  for i in range(b+1):out[a+i]+=c*math.comb(b,i)*t**i*(-t*t)**(b-i)
 return {k:v for k,v in out.items() if v}
def enc(v):return [[F(x).numerator,F(x).denominator] for x in v]
def main():
 ap=argparse.ArgumentParser();ap.add_argument('--q',type=int,default=6);ap.add_argument('--rows',nargs='+',type=int,default=[3,4,5]);args=ap.parse_args();q=args.q;t0=time.monotonic()
 recs,stats=gen(q,args.rows);m=Model(q);cert=[];unresolved=[];counts=Counter()
 for i,rec in enumerate(recs):
  labs,a,p0=m.matrix(rec);rr,cc=pivots(a);c={**rec,'pivot_rows':rr,'pivot_columns':cc}
  if len(cc)==m.nc+1:counts['inconsistent']+=1
  else:
   sol=exact_affine(a,m.nc)
   if sol is None:c['rational_inconsistent_missing_minor']=True;unresolved.append(i)
   else:
    base,ds=sol;c['base']=enc(base);c['directions']=[enc(v) for v in ds];H=assemble(m,p0,base);dirs=[assemble(m,{},v) for v in ds]
    factors=[t for t in range(5) if not subline(H,t) and all(not subline(v,t) for v in dirs)]
    c['line_factors']=factors;counts['affine_dim_'+str(len(ds))]+=1
    if not factors:unresolved.append(i);print('UNRESOLVED',q,i,'row',rec['h'],'dim',len(ds),flush=True)
  cert.append(c)
 summary={'q':q,'stats':stats,'residuals':len(recs),'unresolved':unresolved,'counts':dict(counts),'seconds':round(time.monotonic()-t0,3)}
 dump(R/f'evidence/nf{6*q-1}_front_certificate.json',cert);dump(R/f'evidence/nf{6*q-1}_front_discovery_summary.json',summary);print('SUMMARY',summary,flush=True)
if __name__=='__main__':main()
