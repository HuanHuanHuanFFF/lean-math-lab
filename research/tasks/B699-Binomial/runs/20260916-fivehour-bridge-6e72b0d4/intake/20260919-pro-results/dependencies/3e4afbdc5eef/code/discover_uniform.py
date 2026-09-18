#!/usr/bin/env python3
"""Discovery for SAT60 residual ordinary jets; SAT54 code structure adapted with recorded provenance. Exact root gates, small ordinary jet systems.
Adapted structure of frozen Cover22 discover_sat42; no old scripts imported.
Modular elimination ONLY selects nonzero rank minors; final verification is separate.
"""
from __future__ import annotations
import argparse,json,time,math
from fractions import Fraction as F
from itertools import combinations_with_replacement,product
from collections import Counter,defaultdict
from functools import lru_cache
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
RS=tuple(range(3,9));V={r:tuple(s*(r-s) for s in range(r//2+1)) for r in RS}
E=int(__import__("os").environ.get("SAT_E","10"));D=2*E;QB=tuple((a,b) for b in range(E-2) for a in range(2*E-5-2*b));NC=len(QB);P=1000003

def add(a,b):
 o=dict(a)
 for k,v in b.items():o[k]=o.get(k,0)+v
 return {k:v for k,v in o.items() if v}
def mul(a,b):
 o=defaultdict(int)
 for (i,j),c in a.items():
  for (k,l),v in b.items():o[i+k,j+l]+=c*v
 return {k:v for k,v in o.items() if v}
ONE={(0,0):1};W=ONE
for r in RS:W=mul(W,{(1,0):1,(0,0):-r})
BAS=[{(a+i,b+j):c for (i,j),c in W.items()} for a,b in QB]
LAG=[]
for r in RS:
 p=ONE
 for s in RS:
  if s!=r:p=mul(p,{(1,0):F(1,r-s),(0,0):F(-s,r-s)})
 LAG.append(p)

def gate():
 lists={};buckets={}
 for r in RS:
  ls=[];bu=defaultdict(list)
  for roots in combinations_with_replacement(V[r],E):
   s=sum(roots);x=(roots,s,(s*s-sum(v*v for v in roots))//2,len(set(roots)))
   ls.append(x);bu[s].append(x)
  lists[r]=ls;buckets[r]=bu
 out=[];stats=Counter();fd=(-1,5,-10,10,-5,1)
 # Consecutive pivot rows 3,4,5; exact integer quadratic continuation.
 for a,b,c in product(lists[3],lists[4],lists[5]):
  u,v,w=a[1],b[1],c[1]
  sums=(u-3*v+3*w,3*u-8*v+6*w,6*u-15*v+10*w)
  if any(s not in buckets[r] for r,s in zip((6,7,8),sums)):continue
  for tail in product(*(buckets[r][s] for r,s in zip((6,7,8),sums))):
   rows=(a,b,c)+tail;stats['sum_gate']+=1
   if sum(q[3] for q in rows)<14:continue
   stats['z14_gate']+=1
   if sum(f*q[2] for f,q in zip(fd,rows)):continue
   stats['e2_gate']+=1
   out.append(tuple(q[0] for q in rows))
 return out,dict(stats),{r:len(q) for r,q in lists.items()}

def h0of(roots):
 out={}
 for vals,lag in zip(roots,LAG):
  pp=ONE
  for v in vals:pp=mul(pp,{(0,1):1,(0,0):-v})
  out=add(out,mul(pp,lag))
 assert out.get((0,E))==1 and max(a+2*b for a,b in out)==D
 return out
@lru_cache(None)
def jet_weights(key):
 r,v,i,j=key
 return {(a,b):math.comb(a,i)*math.comb(b,j)*r**(a-i)*v**(b-j) for b in range(E+1) for a in range(D+1-2*b) if a>=i and b>=j}
def jet(poly,key):
 w=jet_weights(key)
 return sum(c*w.get(m,0) for m,c in poly.items())
@lru_cache(None)
def rowof(key):return tuple(jet(b,key) for b in BAS)
def equations(roots,h0):
 labels=[];eq=[]
 for r,vals in zip(RS,roots):
  for v,e in sorted(Counter(vals).items()):
   for i in range(1,e):
    for j in range(e-i):
     key=(r,v,i,j);labels.append(key);eq.append(list(rowof(key))+[-jet(h0,key)])
 return labels,eq

def mod(x):
 if isinstance(x,F):return x.numerator*pow(x.denominator,-1,P)%P
 return x%P

def modular(mat):
 a=[[mod(x) for x in row] for row in mat];ids=list(range(len(a)));piv=[];cols=[];rr=0
 for c in range(NC+1):
  k=next((k for k in range(rr,len(a)) if a[k][c]),None)
  if k is None:continue
  piv.append(ids[k]);cols.append(c);a[rr],a[k]=a[k],a[rr];ids[rr],ids[k]=ids[k],ids[rr]
  inv=pow(a[rr][c],-1,P);a[rr]=[v*inv%P for v in a[rr]]
  for k in range(rr+1,len(a)):
   d=a[k][c]
   if d:a[k]=[(x-d*y)%P for x,y in zip(a[k],a[rr])]
  rr+=1
  if rr==len(a):break
 return cols,piv

def exact(mat):
 a=[list(map(F,row)) for row in mat];piv=[];rr=0
 for c in range(NC):
  k=next((k for k in range(rr,len(a)) if a[k][c]),None)
  if k is None:continue
  a[rr],a[k]=a[k],a[rr];div=a[rr][c];a[rr]=[x/div for x in a[rr]]
  for k in range(len(a)):
   if k!=rr:
    div=a[k][c]
    if div:a[k]=[x-div*y for x,y in zip(a[k],a[rr])]
  piv.append(c);rr+=1
  if rr==len(a):break
 if any(not any(row[:NC]) and row[NC] for row in a):return None,len(piv),None
 base=[F(0)]*NC
 for row,c in zip(a,piv):base[c]=row[NC]
 ds=[]
 for f in (i for i in range(NC) if i not in piv):
  vv=[F(0)]*NC;vv[f]=F(1)
  for row,c in zip(a,piv):vv[c]=-row[f]
  ds.append(vv)
 return base,len(piv),ds

def encode(cs):return [[F(c).numerator,F(c).denominator] for c in cs]
def assemble(h0,cs):
 out=h0
 for c,b in zip(cs,BAS):out=add(out,{k:c*v for k,v in b.items()})
 return out

def line_remainder(poly,s):
 out=defaultdict(int)
 for (a,b),c in poly.items():
  for k in range(b+1):out[a+k]+=c*math.comb(b,k)*s**k*(-s*s)**(b-k)
 return {k:v for k,v in out.items() if v}

def run(limit=None):
 start=time.monotonic()
 allrecs=json.loads((ROOT/('evidence/all_source_gate'+str(E)+'.json')).read_text())['records']
 todo=json.loads((ROOT/('evidence/all_source_residuals'+str(E)+'.json')).read_text())
 if limit is not None:todo=todo[:limit]
 print('RESIDUALS',len(todo),'PARAMETERS',NC,flush=True)
 counts=Counter();unresolved=[]
 with (ROOT/('evidence/sat_e'+str(E)+'_residual_certificates.jsonl')).open('w') as log:
  for kk,(idx,lineS) in enumerate(todo):
   rec=allrecs[idx];h0=h0of(rec);labels,eq=equations(rec,h0);cols,piv=modular(eq)
   cert={'index':idx,'rows':labels,'pivot_rows':piv,'pivot_columns':cols}
   if len(cols)==NC+1:
    cert['status']='inconsistent';counts['inconsistent']+=1
   else:
    base,rank,ds=exact(eq)
    if base is None:
     cert['status']='unresolved_rational_inconsistent';unresolved.append(idx)
    else:
     poly=assemble(h0,base);dirs=[assemble({},vv) for vv in ds]
     ts=[s for s in range(E+1) if not line_remainder(poly,s) and all(not line_remainder(q,s) for q in dirs)]
     cert.update(status='soluble',rank=rank,base=encode(base),directions=[encode(vv) for vv in ds],factors_t=ts)
     counts['rank'+str(rank)+('_factor' if ts else '_unresolved')]+=1
     if not ts:unresolved.append(idx)
   log.write(json.dumps(cert,separators=(',',':'))+'\n');log.flush()
   if (kk+1)%20==0:print('JETS',kk+1,dict(counts),'seconds',round(time.monotonic()-start,2),flush=True)
 summary={'status':'PROBE_ONLY' if limit else 'DISCOVERY_COMPLETE','processed':len(todo),'counts':dict(counts),'unresolved':unresolved,'seconds':round(time.monotonic()-start,3)}
 (ROOT/('evidence/sat_e'+str(E)+'_discovery_summary.json')).write_text(json.dumps(summary,indent=2))
 print('DONE',summary,flush=True)
if __name__=='__main__':
 ap=argparse.ArgumentParser();ap.add_argument('--limit',type=int);args=ap.parse_args();run(args.limit)
