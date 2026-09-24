from pathlib import Path
from fractions import Fraction as F
from math import comb,gcd,lcm
from functools import reduce
import json,sys
import sympy as s
ROOT=Path(__file__).resolve().parents[1]
Q=5;K=36
MON=tuple((a,b) for b in range(Q-1,-1,-1) for a in range(2*Q-2*b,-1,-1))+((0,Q),)
N,X=s.symbols('N X')
def jet(r,v,i,j):
 return tuple(comb(a,i)*r**(a-i)*comb(b,j)*v**(b-j) if a>=i and b>=j else 0 for a,b in MON)
def tj(r,i,j):
 ss=r//2;v=ss*ss
 return tuple(comb(b,j)*sum(comb(b-j,z)*v**(b-j-z)*ss**z*comb(a,i-z)*r**(a-i+z) for z in range(b-j+1) if 0<=i-z<=a) if b>=j else 0 for a,b in MON)
def solve(eq):
 B={}
 for raw in eq:
  x=[F(v) for v in raw]
  for p in range(K):
   if not x[p]:continue
   if p not in B:
    a=x[p];B[p]=[v/a for v in x];break
   a=x[p];x=[v-a*b for v,b in zip(x,B[p])]
 if K-1 in B:return None
 free=[p for p in range(K-1) if p not in B]
 def one(p):
  x=[F(0)]*K;x[K-1]=F(p is None)
  if p is not None:x[p]=F(1)
  for j in sorted(B,reverse=True):x[j]=-sum(B[j][k]*x[k] for k in range(j+1,K))
  return x
 return [one(None)]+[one(p) for p in free]
def makeeq(ms):
 eq=[]
 for r,m in zip(range(3,9),ms):
  for ss,mm in enumerate(m):
   for d in range(mm):
    for j in range(d+1):eq.append(jet(r,ss*(r-ss),d-j,j))
 mc=ms[1][-1]
 for w in range(2*mc):
  for j in range(w//2+1):eq.append(tj(4,w-2*j,j))
 return eq
def poly(vec):return sum(s.Rational(c.numerator,c.denominator)*N**a*X**b for (a,b),c in zip(MON,vec))
mslist=json.loads((ROOT/'discovery/b28_restricted.json').read_text())['multiplicities'];records=[]
for index,ms in enumerate(mslist):
 eq=makeeq(ms);vecs=solve(eq);assert vecs is not None
 assert all(sum(a*b for a,b in zip(eqrow,v))==0 for eqrow in eq for v in vecs)
 polys=[poly(v) for v in vecs]
 common=reduce(s.gcd,polys);fact=s.factor(common)
 print(index,'mu',sum(map(sum,ms)),'dim',len(vecs)-1,'common_factor',fact,flush=True)
 records.append(dict(index=index,m=ms,vectors=[[str(c) for c in v] for v in vecs],common=str(fact)))
(ROOT/'certificates/b28_restricted_spaces.json').write_text(json.dumps(dict(monomials=MON,records=records),indent=2)+'\n')
