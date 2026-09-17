from itertools import combinations,product
from math import gcd,lcm
from functools import reduce
from fractions import Fraction as Q
from pathlib import Path
import json,time
ROOT=Path(__file__).resolve().parents[1]
BS=[(a,b) for b in range(3) for a in range(6-2*b)]
V={r:sorted({s*(r-s) for s in range(r//2+1)}) for r in range(3,9)}
EV={(r,v):[r**a*v**b for a,b in BS] for r in V for v in V[r]}
def prim(v):
 d=lcm(*(x.denominator for x in v)); out=[int(x*d) for x in v]
 g=reduce(gcd,out);out=[x//g for x in out]
 if next(x for x in out if x)!=abs(next(x for x in out if x)):out=[-x for x in out]
 return tuple(out)
def nullspace(mat):
 A=[row[:] for row in mat]; R=len(A); C=len(A[0]);pivs=[];k=0
 for col in range(C):
  piv=next((i for i in range(k,R) if A[i][col]),None)
  if piv is None:continue
  A[k],A[piv]=A[piv],A[k]; pv=A[k][col]
  for i in range(k+1,R):
   q=A[i][col]
   if not q:continue
   row=[pv*A[i][j]-q*A[k][j] for j in range(col+1,C)]
   g=reduce(gcd,row,0)
   if g:row=[x//g for x in row]
   A[i]=[0]*(col+1)+row
  pivs.append(col);k+=1
  if k==R:break
 free=[j for j in range(C) if j not in pivs];out=[]
 for f in free:
  v=[Q(0)]*C;v[f]=Q(1)
  for i,p in reversed(list(enumerate(pivs))):
   v[p]=-sum((Q(A[i][j])*v[j] for j in range(p+1,C)),Q(0))/A[i][p]
  out.append(prim(v))
 return out
if __name__=='__main__':
 st=time.time();cs={};counts={};doubles={r:list(combinations(V[r],2)) for r in V};patterns=[]
 for single in V:
  others=[r for r in V if r!=single]
  for sels in product(*(doubles[r] for r in others),V[single]):
   pts=[(r,v) for r,z in zip(others,sels[:-1]) for v in z]+[(single,sels[-1])]
   ker=nullspace([EV[z] for z in pts]);dim=len(ker);counts[dim]=counts.get(dim,0)+1
   if dim==1:
    key=ker[0]
    if key not in cs:
     cs[key]={'vector':list(key),'points':[list(z) for z in pts]}
   patterns.append([single,*[list(z) for z in sels[:-1]],sels[-1],dim])
  print('single',single,'elapsed',round(time.time()-st,2),'counts',counts,'unique',len(cs),flush=True)
 data={'basis':BS,'counts':counts,'candidate_count':len(cs),'candidates':list(cs.values()),'pattern_count':len(patterns),'seconds':time.time()-st}
 (ROOT/'evidence/weight5_probe.json').write_text(json.dumps(data,indent=2))
 print('DONE',len(cs),time.time()-st,flush=True)
