"""New targeted near-saturation diagnostic: quartic ordinary mu=23.
Motivation: source-budget 32 obstruction uses ten deficit-one quartics.
"""
from discover_mu29 import ROWS as RS,V,ell,data,e2,prod
from discover_jets import pmul,jet,linear,W,LAG,modular,mod,Q,P
from discover_factors import add,subline
from fractions import Fraction as F
from itertools import product
from collections import defaultdict,Counter
from pathlib import Path
import json,time
ROOT=Path(__file__).resolve().parents[1]
QB=[(a,b) for b in range(2) for a in range(3-2*b)]; BAS=[{(a+i,b+j):v for (i,j),v in W.items()} for a,b in QB];NC=len(BAS)
def enc(a):return [[x.numerator,x.denominator] for x in a]
def pof(cs):
 o={}
 for c,b in zip(cs,BAS):o=add(o,{k:c*v for k,v in b.items()})
 return o
def h0of(rec):
 o={}
 for idx,r in enumerate(RS):
  roots=list(map(F,rec['ordinary_roots'][str(r)]))
  if r==rec['h']:roots.append(F(*rec['lambda']))
  p={(0,0):F(1)}
  for v in roots:p=pmul(p,{(0,1):F(1),(0,0):-v})
  o=add(o,pmul(p,LAG[idx]))
 assert max(a+2*b for a,b in o)==8 and o[0,4]==1
 return o
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
 vec=[]
 for f in free:
  z=[F(0)]*NC;z[f]=F(1)
  for row,c in zip(a,piv):z[c]=-row[f]
  vec.append(z)
 return base,len(piv),vec

def gates():
 lists={r:data(r,4) for r in RS};buckets={r:defaultdict(list) for r in RS}
 for r in RS:
  for a in lists[r]:buckets[r][a[1]].append(a)
 out=[];stats=[]
 for h in RS:
  sat=tuple(r for r in RS if r!=h);piv=tuple(sorted(sat,key=lambda r:len(lists[r]))[:3]);oth=tuple(r for r in sat if r not in piv)
  ws={r:ell(piv,r) for r in RS};bw=ell(sat,h);low=data(h,3);counts=Counter()
  for choices in product(*(lists[r] for r in piv)):
   sums=[a[1] for a in choices];S={r:sum(w*x for w,x in zip(ws[r],sums)) for r in RS}
   if any(S[r].denominator!=1 or S[r] not in buckets[r] for r in oth):continue
   for tail in product(*(buckets[r][S[r]] for r in oth)):
    a=dict(zip(piv,choices));a.update(zip(oth,tail));counts['sum_gate']+=1;B=sum(w*a[r][2] for w,r in zip(bw,sat))
    for b in low:
     if sum(t[3] for t in a.values())+b[3]<14:continue
     counts['z14_gate']+=1;lam=S[h]-b[1]
     if b[2]+lam*b[1]!=B:continue
     if lam in V[h] and lam not in b[0]:counts['new_source_reject']+=1;continue
     out.append({'h':h,'ordinary_roots':{str(r):list(a[r][0]) if r!=h else list(b[0]) for r in RS},'lambda':[lam.numerator,lam.denominator]});counts['accepted']+=1
  stats.append({'h':h,**dict(counts)})
 return out,stats

def main():
 start=time.monotonic();recs,gs=gates();print('GATES',gs,'total',len(recs),flush=True)
 out=[];counts=Counter();unresolved=[]
 for idx,rec in enumerate(recs):
  h0=h0of(rec);eqs=[];labels=[]
  for r in RS:
   for v,e in Counter(rec['ordinary_roots'][str(r)]).items():
    for i in range(1,e):
     for j in range(e-i):
      labels.append([r,v,i,j]);eqs.append([jet(b,r,v,i,j) for b in BAS]+[-jet(h0,r,v,i,j)])
  cols,piv=modular(eqs);inf={'index':idx,'rows':labels,'pivot_rows':piv,'modular_pivot_columns':cols}
  if cols==list(range(NC+1)):inf['status']='inconsistent_rank5';counts[inf['status']]+=1
  else:
   base,rank,ds=exact(eqs)
   if base is None:inf['status']='inconsistent_rational';counts[inf['status']]+=1
   else:
    inf.update(status='soluble',rank=rank,base=enc(base),directions=[enc(v) for v in ds]);f=add(h0,pof(base));dirs=[pof(v) for v in ds]
    ts=[t for t in range(9) if not subline(f,t) and all(not subline(v,t) for v in dirs)]
    inf['factors_t']=ts;counts['rank'+str(rank)+('_factor' if ts else '_unresolved')]+=1
    if not ts:unresolved.append(idx)
  out.append(inf)
 (ROOT/'evidence/quartic23.json').write_text(json.dumps({'q_basis':QB,'records':recs,'gate_stats':gs,'systems':out,'counts':dict(counts),'unresolved':unresolved},separators=(',',':')))
 print('DONE',dict(counts),'unresolved',unresolved,'seconds',round(time.monotonic()-start,3))
if __name__=='__main__':main()
