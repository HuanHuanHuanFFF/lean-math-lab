"""Targeted new saturation gate, motivated by the surviving 27-factor budget.
Weighted 12 / X degree6 / full ordinary source multiplicity36.
No scanning of n,j, no claim from finite samples of original inputs.
"""
from fractions import Fraction as F
from itertools import product
from collections import Counter,defaultdict
from pathlib import Path
import json,time
from discover_mu29 import ROWS as RS,V,ell,data
from discover_jets import pmul,jet,W,LAG,modular
from discover_factors import add,subline
ROOT=Path(__file__).resolve().parents[1]
QB=[(i,j) for j in range(4) for i in range(7-2*j)]
BAS=[{(a+i,b+j):v for (i,j),v in W.items()} for a,b in QB];NC=len(BAS)
def enc(xs):return [[x.numerator,x.denominator] for x in xs]
def pof(cs):
 o={}
 for c,b in zip(cs,BAS):o=add(o,{k:c*v for k,v in b.items()})
 return o

def gate():
 lists={r:data(r,6) for r in RS};buckets={r:defaultdict(list) for r in RS}
 for r in RS:
  for a in lists[r]:buckets[r][a[1]].append(a)
 piv=(3,4,5);ws={r:ell(piv,r) for r in RS};out=[];stats=Counter();fd=(-1,5,-10,10,-5,1)
 for start in product(*(lists[r] for r in piv)):
  sums=[v[1] for v in start];S={r:sum(w*x for w,x in zip(ws[r],sums)) for r in RS}
  if any(S[r].denominator!=1 or S[r] not in buckets[r] for r in (6,7,8)):continue
  for tail in product(*(buckets[r][S[r]] for r in (6,7,8))):
   chosen=start+tail;stats['sum_gate']+=1
   if sum(t[3] for t in chosen)<14:continue
   stats['z14_gate']+=1
   if sum(c*t[2] for c,t in zip(fd,chosen)):continue
   stats['e2_gate']+=1
   out.append({'ordinary_roots':{str(r):list(t[0]) for r,t in zip(RS,chosen)}})
 return out,dict(stats)

def h0of(rec):
 out={}
 for idx,r in enumerate(RS):
  p={(0,0):F(1)}
  for v in rec['ordinary_roots'][str(r)]:p=pmul(p,{(0,1):F(1),(0,0):F(-v)})
  out=add(out,pmul(p,LAG[idx]))
 assert max(a+2*b for a,b in out)==12 and out[0,6]==1
 return out

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
 if any(all(x==0 for x in row[:NC]) and row[NC] for row in a):return None,len(piv),None
 base=[F(0)]*NC
 for row,c in zip(a,piv):base[c]=row[NC]
 ds=[]
 for f in (i for i in range(NC) if i not in piv):
  vec=[F(0)]*NC;vec[f]=F(1)
  for row,c in zip(a,piv):vec[c]=-row[f]
  ds.append(vec)
 return base,len(piv),ds

def main():
 start=time.monotonic();recs,stats=gate();print('GATES',stats,flush=True);out=[];counts=Counter();unc=[]
 cache={}
 for idx,rec in enumerate(recs):
  h0=h0of(rec);eqs=[];labels=[]
  for r in RS:
   for v,e in Counter(rec['ordinary_roots'][str(r)]).items():
    for i in range(1,e):
     for j in range(e-i):
      key=(r,v,i,j)
      if key not in cache:cache[key]=[jet(b,r,v,i,j) for b in BAS]
      labels.append(list(key));eqs.append(cache[key]+[-jet(h0,r,v,i,j)])
  cols,piv=modular(eqs);inf={'index':idx,'rows':labels,'pivot_rows':piv,'modular_pivot_columns':cols}
  if len(cols)==NC+1:inf['status']='inconsistent_rank17';counts[inf['status']]+=1
  else:
   base,rank,ds=exact(eqs)
   if base is None:inf['status']='inconsistent_rational';counts[inf['status']]+=1;unc.append(idx)
   else:
    inf.update(status='soluble',rank=rank,base=enc(base),directions=[enc(q) for q in ds])
    p=add(h0,pof(base));dirs=[pof(q) for q in ds]
    ts=[t for t in range(9) if not subline(p,t) and all(not subline(q,t) for q in dirs)]
    inf['factors_t']=ts;counts['rank'+str(rank)+('_factor' if ts else '_unresolved')]+=1
    if not ts:unc.append(idx)
  out.append(inf)
  if (idx+1)%200==0:print(idx+1,dict(counts),flush=True)
 (ROOT/'evidence/saturation36.json').write_text(json.dumps({'q_basis':QB,'gate_stats':stats,'records':recs,'systems':out,'counts':dict(counts),'unresolved':unc},separators=(',',':')))
 print('DONE',dict(counts),'UNRESOLVED',unc,'seconds',round(time.monotonic()-start,2),flush=True)
if __name__=='__main__':main()
