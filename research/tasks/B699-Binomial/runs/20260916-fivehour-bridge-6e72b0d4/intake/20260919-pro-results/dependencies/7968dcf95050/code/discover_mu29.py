"""Bounded exact root-sum and e2 interpolation diagnostic; no NC9 construction."""
from fractions import Fraction as F
from itertools import combinations_with_replacement as cwr, product
from collections import defaultdict
from pathlib import Path
import json,time
ROOT=Path(__file__).resolve().parents[1]
ROWS=tuple(range(3,9));V={r:tuple(s*(r-s) for s in range(r//2+1)) for r in ROWS}
def ell(xs,y):
 return [F(prod(y-t for t in xs if t!=x),prod(x-t for t in xs if t!=x)) for x in xs]
def prod(xs):
 a=1
 for x in xs:a*=x
 return a
def e2(xs):return sum(xs[i]*xs[j] for i in range(len(xs)) for j in range(i))
def data(r,k):
 return [(xs,sum(xs),e2(xs),len(set(xs))) for xs in cwr(V[r],k)]
def run():
 lists={r:data(r,5) for r in ROWS}; buckets={}
 for r in ROWS:
  buckets[r]=defaultdict(list)
  for a in lists[r]:buckets[r][a[1]].append(a)
 out=[];stats=[]
 for h in ROWS:
  start=time.monotonic(); sat=tuple(r for r in ROWS if r!=h)
  piv=tuple(sorted(sat,key=lambda r:len(lists[r]))[:3]);oth=tuple(r for r in sat if r not in piv)
  ws={r:ell(piv,r) for r in ROWS};bhws=ell(sat,h);four=data(h,4)
  cnt={'h':h,'pivots':piv,'saturated_sum_gate':0,'z14_gate':0,'e2_gate':0,'lambda_new_source_rejected':0}
  for choices in product(*(lists[r] for r in piv)):
   sums=[a[1] for a in choices]; S={r:sum(w*x for w,x in zip(ws[r],sums)) for r in ROWS}
   if any(S[r].denominator!=1 or S[r] not in buckets[r] for r in oth):continue
   for tail in product(*(buckets[r][S[r]] for r in oth)):
    a=dict(zip(piv,choices));a.update(zip(oth,tail));cnt['saturated_sum_gate']+=1
    if sum(t[3] for t in a.values())+len(V[h])<14:continue
    B_h=sum(w*a[r][2] for w,r in zip(bhws,sat))
    for b in four:
     if sum(t[3] for t in a.values())+b[3]<14:continue
     cnt['z14_gate']+=1
     lam=S[h]-b[1]
     if b[2]+lam*b[1]!=B_h:continue
     if lam in V[h] and lam not in b[0]:
      cnt['lambda_new_source_rejected']+=1;continue
     ordinary={r:list(a[r][0]) if r!=h else list(b[0]) for r in ROWS}
     rec={'h':h,'ordinary_roots':ordinary,'lambda':[lam.numerator,lam.denominator]}
     out.append(rec);cnt['e2_gate']+=1
  cnt['elapsed_seconds']=round(time.monotonic()-start,3);stats.append(cnt);print(cnt,flush=True)
 (ROOT/'evidence/mu29_gates.json').write_text(json.dumps({'stats':stats,'records':out},separators=(',',':')))
 print('TOTAL',len(out),flush=True)
if __name__=='__main__':run()
