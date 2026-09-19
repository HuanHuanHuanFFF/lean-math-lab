#!/usr/bin/env python3
"""NF35 new discovery: root shapes and full 16-variable ordinary jet families.
Adapted from frozen cover22 near-saturation discovery, not an acceptance test.
No importing frozen code and no old evidence replay.
"""
from fractions import Fraction as F
from itertools import combinations_with_replacement as cwr, product
from collections import defaultdict, Counter
from math import comb,prod
from functools import lru_cache
from pathlib import Path
import json,time,argparse
ROOT=Path(__file__).resolve().parents[1]; RS=tuple(range(3,9)); PRIME=1000003
V={r:tuple(s*(r-s) for s in range(r//2+1)) for r in RS}
QB=[(a,b) for b in range(4) for a in range(7-2*b)]; NC=len(QB)
def dump(p,obj):p.write_text(json.dumps(obj,separators=(',',':'))+'\n')
def ell(xs,y):return [F(prod(y-t for t in xs if t!=x),prod(x-t for t in xs if t!=x)) for x in xs]
def data(r,k):return [(x,sum(x),(sum(x)**2-sum(t*t for t in x))//2,len(set(x))) for x in cwr(V[r],k)]
def clean(x):return {k:v for k,v in x.items() if v}
def add(p,q):
 o=dict(p)
 for k,v in q.items():o[k]=o.get(k,0)+v
 return clean(o)
def mul(p,q):
 o={}
 for (i,j),v in p.items():
  for (a,b),w in q.items():o[i+a,j+b]=o.get((i+a,j+b),0)+v*w
 return clean(o)
def scale(p,c):return clean({k:v*c for k,v in p.items()})
W={(0,0):1}
for r in RS:W=mul(W,{(1,0):1,(0,0):-r})
BAS=[{(a+i,b+j):v for (i,j),v in W.items()} for a,b in QB]
LAG=[]
for r in RS:
 p={(0,0):F(1)}
 for s in RS:
  if s!=r:p=mul(p,{(1,0):F(1,r-s),(0,0):F(-s,r-s)})
 LAG.append(p)
def jet(poly,r,v,i,j):
 return sum(c*comb(a,i)*comb(b,j)*r**(a-i)*v**(b-j) for (a,b),c in poly.items() if a>=i and b>=j)
@lru_cache(None)
def matrixrow(r,v,i,j):return tuple(jet(p,r,v,i,j) for p in BAS)
def h0of(rec):
 o={}
 for idx,r in enumerate(RS):
  roots=list(map(F,rec['ordinary_roots'][str(r)]))
  if r==rec['h']:roots.append(F(*rec['lambda']))
  p={(0,0):F(1)}
  for v in roots:p=mul(p,{(0,1):F(1),(0,0):-v})
  o=add(o,mul(p,LAG[idx]))
 assert max(a+2*b for a,b in o)==12 and o[0,6]==1
 return o

def modular(mat):
 a=[[F(x).numerator*pow(F(x).denominator,-1,PRIME)%PRIME for x in row] for row in mat]
 ids=list(range(len(a)));piv=[];cols=[];rr=0
 for c in range(len(a[0])):
  k=next((k for k in range(rr,len(a)) if a[k][c]),None)
  if k is None:continue
  piv.append(ids[k]);cols.append(c);a[rr],a[k]=a[k],a[rr];ids[rr],ids[k]=ids[k],ids[rr]
  inv=pow(a[rr][c],-1,PRIME);a[rr]=[v*inv%PRIME for v in a[rr]]
  for k in range(rr+1,len(a)):
   d=a[k][c]
   if d:a[k]=[(x-d*y)%PRIME for x,y in zip(a[k],a[rr])]
  rr+=1
  if rr==len(a):break
 return cols,piv

def exact(mat):
 a=[list(map(F,row)) for row in mat];piv=[];rr=0
 for c in range(NC):
  k=next((k for k in range(rr,len(a)) if a[k][c]),None)
  if k is None:continue
  a[rr],a[k]=a[k],a[rr];d=a[rr][c];a[rr]=[x/d for x in a[rr]]
  for k in range(len(a)):
   if k!=rr:
    d=a[k][c]
    if d:a[k]=[x-d*y for x,y in zip(a[k],a[rr])]
  piv.append(c);rr+=1
  if rr==len(a):break
 if any(all(x==0 for x in row[:NC]) and row[NC] for row in a):return None,len(piv),None
 free=[i for i in range(NC) if i not in piv];base=[F(0)]*NC
 for row,c in zip(a,piv):base[c]=row[NC]
 dirs=[]
 for f in free:
  z=[F(0)]*NC;z[f]=F(1)
  for row,c in zip(a,piv):z[c]=-row[f]
  dirs.append(z)
 return base,len(piv),dirs

def pof(cs):
 o={}
 for c,b in zip(cs,BAS):o=add(o,scale(b,c))
 return o

def subline(p,t):
 o={}
 for (a,b),c in p.items():
  for j in range(b+1):o[a+j,0]=o.get((a+j,0),0)+c*comb(b,j)*t**j*(-t*t)**(b-j)
 return clean(o)
def enc(a):return [[x.numerator,x.denominator] for x in map(F,a)]

def gates(rows):
 lists={r:data(r,6) for r in RS};buckets={r:defaultdict(list) for r in RS}
 for r in RS:
  for a in lists[r]:buckets[r][a[1]].append(a)
 out=[];stats=[]
 for h in rows:
  start=time.monotonic();sat=tuple(r for r in RS if r!=h)
  piv=tuple(sorted(sat,key=lambda r:len(lists[r]))[:3]);oth=tuple(r for r in sat if r not in piv)
  ws={r:ell(piv,r) for r in RS};bw=ell(sat,h);low=data(h,5);cnt=Counter()
  for choices in product(*(lists[r] for r in piv)):
   sums=[a[1] for a in choices];S={r:sum(w*x for w,x in zip(ws[r],sums)) for r in RS}
   if any(S[r].denominator!=1 or S[r] not in buckets[r] for r in oth):continue
   for tail in product(*(buckets[r][S[r]] for r in oth)):
    a=dict(zip(piv,choices));a.update(zip(oth,tail));cnt['sum_gate']+=1
    zg=sum(t[3] for t in a.values())
    if zg+len(V[h])<14:continue
    B=sum(w*a[r][2] for w,r in zip(bw,sat))
    for b in low:
     if zg+b[3]<14:continue
     cnt['z14_gate']+=1;lam=S[h]-b[1]
     if b[2]+lam*b[1]!=B:continue
     if lam in V[h] and lam not in b[0]:cnt['new_source_rejected']+=1;continue
     out.append({'h':h,'ordinary_roots':{str(r):list(a[r][0]) if r!=h else list(b[0]) for r in RS},'lambda':[lam.numerator,lam.denominator]})
     cnt['accepted']+=1
  st={'h':h,'pivots':piv,**dict(cnt),'seconds':round(time.monotonic()-start,3)};stats.append(st);print('GATE',st,flush=True)
 return out,stats

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--rows',nargs='+',type=int,default=[6,7,8]);ap.add_argument('--tag',default='tail');args=ap.parse_args()
 start=time.monotonic();gatepath=ROOT/'evidence'/('nf35_'+args.tag+'_gates.json')
 if gatepath.exists():gg=json.loads(gatepath.read_text());recs,gs=gg['records'],gg['gate_stats']
 else:
  recs,gs=gates(args.rows);dump(gatepath,{'records':recs,'gate_stats':gs})
 print('GATES',len(recs),'START JETS',flush=True)
 out=[];counts=Counter();unresolved=[];maxrows=0
 for idx,rec in enumerate(recs):
  h0=h0of(rec);eqs=[];labels=[]
  for r in RS:
   for v,e in Counter(rec['ordinary_roots'][str(r)]).items():
    for i in range(1,e):
     for j in range(e-i):
      labels.append([r,v,i,j]);eqs.append(list(matrixrow(r,v,i,j))+[-jet(h0,r,v,i,j)])
  maxrows=max(maxrows,len(eqs));cols,piv=modular(eqs)
  inf={'index':idx,'pivot_rows':piv,'pivot_cols':cols}
  if cols==list(range(NC+1)):inf['status']='inconsistent';counts['inconsistent']+=1
  else:
   base,rank,ds=exact(eqs)
   if base is None:raise RuntimeError('modular certificate did not find rational rank: '+str(idx))
   inf.update(status='soluble',rank=rank,base=enc(base),directions=[enc(v) for v in ds]);f=add(h0,pof(base));dirs=[pof(v) for v in ds]
   ts=[t for t in range(9) if not subline(f,t) and all(not subline(v,t) for v in dirs)]
   inf['factors_t']=ts;counts['rank'+str(rank)+('_factor' if ts else '_unresolved')]+=1
   if not ts:unresolved.append(idx);print('UNRESOLVED',idx,'h',rec['h'],'rank',rank,flush=True)
  out.append(inf)
  if (idx+1)%500==0:print('JETS',idx+1,dict(counts),round(time.monotonic()-start,3),flush=True)
 dump(ROOT/'evidence'/('nf35_'+args.tag+'_certificate.json'),{'q_basis':QB,'prime':PRIME,'systems':out,'counts':dict(counts),'unresolved':unresolved,'max_rows':maxrows})
 print('DONE',dict(counts),'unresolved',unresolved,'seconds',round(time.monotonic()-start,3),flush=True)
if __name__=='__main__':main()
