"""Exact rational contact spaces, using only Python's standard library."""
from fractions import Fraction as Q
from math import gcd,lcm
from functools import reduce
from itertools import combinations
from pathlib import Path
from datetime import datetime,timezone
import json
# Exponents are (z,d).
F={(5,0):1,(3,2):-40,(2,3):-200,(1,4):-420,(0,5):-340,(3,0):-45,(1,2):540,(0,3):900,(1,0):324}
def mul(a,b,R):return [sum(a[j]*b[i-j] for j in range(i+1)) for i in range(R)]
def power(a,e,R):
 out=[Q(1)]+[Q(0)]*(R-1)
 for _ in range(e):out=mul(out,a,R)
 return out
def evaluate(poly,root,R):
 out=[Q(0)]*R
 for (a,b),c in poly.items():
  if b>=R:continue
  term=power(root,a,R)
  for i in range(b,R):out[i]+=c*term[i-b]
 return out
def branch(i,R):
 a=[Q(9-3*i)]+[Q(0)]*(R-1)
 deriv=sum(c*j*a[0]**(j-1) for (j,k),c in F.items() if j and k==0)
 for k in range(1,R):a[k]=-evaluate(F,a,R)[k]/deriv
 assert all(x==0 for x in evaluate(F,a,R))
 return a
def nullspace(rows):
 A=[list(map(Q,r)) for r in rows]; n=len(A[0]);r=0;piv=[]
 for j in range(n):
  k=next((k for k in range(r,len(A)) if A[k][j]),None)
  if k is None:continue
  A[r],A[k]=A[k],A[r];c=A[r][j];A[r]=[x/c for x in A[r]]
  for k in range(len(A)):
   if k!=r and A[k][j]:
    c=A[k][j];A[k]=[x-c*y for x,y in zip(A[k],A[r])]
  piv.append(j);r+=1
  if r==len(A):break
 basis=[]
 for f in range(n):
  if f in piv:continue
  v=[Q(0)]*n;v[f]=Q(1)
  for i,j in enumerate(piv):v[j]=-A[i][f]
  basis.append(v)
 return r,basis
def primitive(v):
 L=reduce(lcm,(q.denominator for q in v),1);w=[int(q*L) for q in v];g=reduce(gcd,w);w=[x//g for x in w]
 if next(x for x in w if x)<0:w=[-x for x in w]
 return w
def search(slots,D=5,R=6):
 mons=[(a,b) for a in range(min(4,D)+1) for b in range(D-a+1)]
 branches={i:branch(i,R) for i in slots}
 columns={i:[evaluate({m:1},branches[i],R) for m in mons] for i in slots}
 rank,basis=nullspace([[col[r] for col in columns[i]] for i in slots for r in range(R)])
 vectors=[primitive(v) for v in basis]
 if len(basis)==2:
  def egcd(a,b):
   if not b:return (abs(a),1 if a>=0 else -1,0)
   g,x,y=egcd(b,a%b);return g,y,x-(a//b)*y
  # Saturate the integer kernel: enforce every rational-coordinate congruence
  # on the two free integer variables, not just individually clear denominators.
  L=[[1,0],[0,1]]
  for k in range(len(mons)):
   row=[sum(basis[j][k]*L[j][t] for j in range(2)) for t in range(2)]
   den=lcm(*(x.denominator for x in row));u,v=[int(x*den) for x in row]
   if den==1:continue
   g,x,y=egcd(u,v)
   if not g:continue
   m=den//gcd(den,g);T=[[x*m,v//g],[y*m,-u//g]]
   L=[[sum(L[i][k]*T[k][j] for k in range(2)) for j in range(2)] for i in range(2)]
   # Reduce in full coefficient norm after each congruence.
   for _ in range(100):
    full=[[sum(basis[j][k]*L[j][t] for j in range(2)) for k in range(len(mons))] for t in range(2)]
    aa,bb=[sum(x*x for x in v) for v in full]
    if bb<aa:
     for row in L:row[0],row[1]=row[1],row[0]
     continue
    mu=round(sum(x*y for x,y in zip(*full))/aa)
    if not mu:break
    for row in L:row[1]-=mu*row[0]
  full=[[sum(basis[j][k]*L[j][t] for j in range(2)) for k in range(len(mons))] for t in range(2)]
  assert all(x.denominator==1 for v in full for x in v)
  vectors=[[int(x) for x in v] for v in full]
 out=[]
 for v in vectors:
  G={m:c for m,c in zip(mons,v) if c}
  assert all(not x for root in branches.values() for x in evaluate(G,root,R))
  bound=sum(abs(c)*9**a for (a,b),c in G.items())
  out.append(dict(terms=[[a,b,c] for (a,b),c in G.items()],coarse_bound=bound))
 return dict(slots=list(slots),D=D,R=R,rank=rank,nullity=len(basis),branches={str(i):[str(x) for x in a] for i,a in branches.items()},auxiliaries=out)
if __name__=='__main__':
 rows=[search(s) for s in combinations(range(1,6),3)]
 result=dict(utc=datetime.now(timezone.utc).isoformat(),evidence='exact rational finite-dimensional computation; local divisibility and height bridges not yet Lean',rows=rows)
 Path(__file__).with_suffix('.json').write_text(json.dumps(result,indent=2)+'\n')
 for r in rows:print(r['slots'],r['rank'],r['nullity'],[g['coarse_bound'] for g in r['auxiliaries']],flush=True)
 print(json.dumps(next(r for r in rows if r['slots']==[1,2,4]),indent=2),flush=True)
