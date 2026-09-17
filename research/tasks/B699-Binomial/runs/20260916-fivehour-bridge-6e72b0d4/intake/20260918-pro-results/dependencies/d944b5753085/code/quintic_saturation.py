"""New quintic saturated-source gate and exact ordinary jet classification."""
from itertools import product,combinations_with_replacement
from collections import Counter,defaultdict
from fractions import Fraction as Q
from exact_core import *
import json,time
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
ROWS=[sorted({s*(r-s) for s in range(r//2+1)}) for r in range(3,9)]
W={(0,0):1}
for r in range(3,9):W=mul(W,{(1,0):1,(0,0):-r})
MONS=[(a,b) for b in range(3) for a in range(5-2*b)]
FREE=[mul(W,{ab:1}) for ab in MONS]
def patterns():
 out=[]
 for V in ROWS:
  row=[]
  for roots in combinations_with_replacement(V,5):
   p={(0,0):1}
   for v in roots:p=mul(p,{(0,1):1,(0,0):-v})
   row.append((tuple(roots),sum(roots),len(set(roots)),tuple(p.get((0,b),0) for b in range(6))))
  out.append(row)
 return out

def gate(which=0):
 pats=patterns();by=[]
 for row in pats:
  d=defaultdict(list)
  for p in row:d[p[1]].append(p)
  by.append(d)
 piv=(0,1,2) if which==0 else (0,2,5)
 others=tuple(i for i in range(6) if i not in piv)
 counts={'raw':1,'pivot_choices':0,'sum_matched':0,'z_ge14':0,'second_sum_matched':0}
 for row in pats:counts['raw']*=len(row)
 kept=[]
 for selected in product(*(pats[i] for i in piv)):
  counts['pivot_choices']+=1
  if which==0:
   y=[p[1] for p in selected];d1=y[1]-y[0];d2=y[2]-2*y[1]+y[0]
   targets={i:y[0]+i*d1+i*(i-1)//2*d2 for i in others}
  else:
   ip=interpolation([(i+3,p[1]) for i,p in zip(piv,selected)])
   targets={i:evaluate(ip,i+3,0) for i in others}
  if any(Q(x).denominator!=1 for x in targets.values()):continue
  for rest in product(*(by[i].get(int(targets[i]),[]) for i in others)):
   counts['sum_matched']+=1;allp=[None]*6
   for i,p in zip(piv,selected):allp[i]=p
   for i,p in zip(others,rest):allp[i]=p
   if sum(p[2] for p in allp)<14:continue
   counts['z_ge14']+=1
   if which==0:
    good=sum(w*p[3][3] for w,p in zip((-1,5,-10,10,-5,1),allp))==0
   else:
    coef=interpolation([(i+3,p[3][3]) for i,p in enumerate(allp)]);good=not coef.get((5,0),0)
   if not good:continue
   counts['second_sum_matched']+=1;kept.append(tuple(p[0] for p in allp))
 return sorted(kept),counts

def jet_system(shape):
 vals=[]
 for roots in shape:
  p={(0,0):1}
  for v in roots:p=mul(p,{(0,1):1,(0,0):-v})
  vals.append(p)
 base={}
 for b in range(6):
  a=interpolation([(i+3,p.get((0,b),0)) for i,p in enumerate(vals)])
  base=add(base,mul(a,{(0,b):1}))
 assert all(a+2*b<=10 for a,b in base)
 A=[];rhs=[];labels=[]
 for r,roots in zip(range(3,9),shape):
  for v,e in sorted(Counter(roots).items()):
   for i in range(1,e):
    for j in range(e-i):
     A.append([taylor(p,r,v,i,j) for p in FREE]);rhs.append(-taylor(base,r,v,i,j));labels.append([r,v,i,j])
 return base,A,rhs,labels

def factor_poly(ts):
 out={(0,0):1}
 for t in ts:out=mul(out,{(0,1):1,(1,0):-t,(0,0):t*t})
 return out

def make_records(shapes):
 out=[];lookup={tuple(sorted(factor_poly(ts).items())):ts for ts in combinations_with_replacement(range(4),5)}
 for sid,shape in enumerate(shapes):
  base,A,rhs,labels=jet_system(shape);aug=[row+[v] for row,v in zip(A,rhs)]
  rr,piv=rref(aug);ind=independent_rows(A,9)
  cert={'id':sid,'roots':[list(x) for x in shape],'equations':len(A),'rank':len(ind),'rank_rows':ind}
  if len(ind)==9:
   cert['rank_det']=pack_fraction(determinant([A[i] for i in ind]))
  if 9 in piv:
   ii=independent_rows(aug,10)
   if len(ii)==10:cert.update(status='inconsistent',aug_rows=ii,aug_det=pack_fraction(determinant([aug[i] for i in ii])))
   else:cert.update(status='low_rank_inconsistent',pivots=piv)
  elif len(ind)==9:
   sol=[rr[i][9] for i in range(9)];h=dict(base)
   for q,v in zip(FREE,sol):h=add(h,scale(q,v))
   ts=lookup.get(tuple(sorted(h.items())))
   cert.update(status='reducible' if ts else 'unclassified',solution=[pack_fraction(v) for v in sol],terms=pack_poly(h),line_indices=ts)
  else:cert.update(status='positive_dimension',pivots=piv)
  out.append(cert)
 return out

if __name__=='__main__':
 st=time.monotonic();shapes,counts=gate();alt,altcounts=gate(1);assert alt==shapes
 print('GATES',counts,altcounts,flush=True)
 records=make_records(shapes)
 print('STATUS',dict(Counter(r['status'] for r in records)),'RANKS',dict(Counter(r['rank'] for r in records)),'SECONDS',time.monotonic()-st,flush=True)
 (ROOT/'evidence/saturation_certificate.json').write_text(json.dumps({'gate':counts,'alternative_gate':altcounts,'records':records},indent=2))
