"""Exact finite diagnostics of the all-degree paper rigidity theorem.
Finite ranks do not establish the unrestricted theorem.
"""
from math import comb,isqrt
from pathlib import Path
from fractions import Fraction
import argparse,json,itertools
POINTS=[(0,0),(1,0),(0,1),(2,0),(1,1),(0,2)]
WEIGHTS=[1,2,2,1,2,1]

def add(a,b):
 d=a.copy()
 for k,v in b.items():d[k]=d.get(k,0)+v
 return {k:v for k,v in d.items() if v}
def mul(a,b):
 d={}
 for (i,j),v in a.items():
  for (k,l),w in b.items():d[i+k,j+l]=d.get((i+k,j+l),0)+v*w
 return {k:v for k,v in d.items() if v}
def pw(a,n):
 r={(0,0):1}
 while n:
  if n&1:r=mul(r,a)
  a=mul(a,a);n//=2
 return r
X={(1,0):1};Y={(0,1):1};ONE={(0,0):1}
Xm=add(X,{(0,0):-1});Ym=add(Y,{(0,0):-1})
L1=add(add(X,Y),{(0,0):-1});L2=add(add(X,Y),{(0,0):-2})
F0=mul(mul(pw(X,2),pw(Y,2)),mul(Xm,Ym))

def order(poly,pt):
 x,y=pt;D=max(sum(k) for k in poly)
 for s in range(D+1):
  for a in range(s+1):
   b=s-a
   v=sum(c*comb(i,a)*comb(j,b)*x**(i-a)*y**(j-b) for (i,j),c in poly.items() if i>=a and j>=b)
   if v:return s
 raise AssertionError('nonzero translation became zero')

def rank(rows,p):
 if not rows:return 0
 a=[[x%p for x in row] for row in rows];r=0
 for c in range(len(a[0])):
  z=next((i for i in range(r,len(a)) if a[i][c]),None)
  if z is None:continue
  a[r],a[z]=a[z],a[r];inv=pow(a[r][c],-1,p)
  a[r]=[(v*inv)%p for v in a[r]]
  for i in range(r+1,len(a)):
   k=a[i][c]
   if k:a[i]=[(v-k*w)%p for v,w in zip(a[i],a[r])]
  r+=1
  if r==len(a):break
 return r

def matrix(D,mults,derivative=False):
 mons=[(i,d-i) for d in range(D+1) for i in range(d+1)]
 rows=[]
 for (x,y),m in zip(POINTS,mults):
  for d in range(m):
   for a in range(d+1):
    b=d-a
    row=[]
    for i,j in mons:
     if i<a or j<b:row.append(0);continue
     v=comb(i,a)*comb(j,b)*x**(i-a)*y**(j-b)
     if derivative:
      for t in range(2,a+1):v*=t
      for t in range(2,b+1):v*=t
     row.append(v)
    rows.append(row)
 return mons,rows

def run():
 cases=[]
 for D in range(13):
  for a in range(D+1):
   for b in range(D-a+1):
    delta=D-a-b
    if 4*delta>D:continue
    T=4*delta
    for extra in [0,1]:
     mults=[T+extra,a,a,b,b,b]
     mons,rows=matrix(D,mults)
     r=rank(rows,65537)
     expect=1 if extra==0 and a>=3*delta and b>=2*delta else 0
     assert len(mons)-r==expect,(D,a,b,T,extra,len(mons)-r,expect)
     # Second matrix uses unnormalized derivatives, another prime and reversed columns/rows.
     _,other=matrix(D,mults,True)
     r2=rank([list(reversed(row)) for row in reversed(other)],65539)
     assert r2==r
     if expect:
      poly=mul(pw(F0,delta),mul(pw(L1,a-3*delta),pw(L2,b-2*delta)))
      assert max(sum(k) for k in poly)==D
      vals=[poly.get(m,0) for m in mons]
      assert all(sum(x*y for x,y in zip(row,vals))==0 for row in rows)
     cases.append([D,a,b,T+extra,expect,r])
 # Non-symmetric examples: arbitrary products and sums of rational polynomials.
 seed=8317;examples=[]
 for t in range(160):
  seed=(1103515245*seed+12345)%2**31
  poly=mul(pw(X,seed%4),pw(Y,(seed//4)%4))
  poly=mul(poly,pw(Xm,(seed//16)%3));poly=mul(poly,pw(Ym,(seed//48)%3))
  q={(0,0):1,(1,0):int(seed%7)-3,(0,2):1,(2,1):int(seed%3)+1}
  poly=mul(poly,q)
  D=max(sum(k) for k in poly);m=[order(poly,p) for p in POINTS]
  assert sum(a*b for a,b in zip(WEIGHTS,m))<=4*D
  examples.append([D,m])
 # These modulus checks certify field arithmetic; not probable primality.
 for p in [65537,65539]:assert all(p%d for d in range(2,isqrt(p)+1))
 return {'status':'PASS','meaning':'finite rank diagnostics + exact nonzero witness; infinite theorem is paper proof',
         'max_degree':12,'rank_cases':len(cases),'rank_cases_data':cases,
         'non_symmetric_examples':len(examples),'kernel':[[i,j,v] for (i,j),v in sorted(F0.items())],
         'kernel_multiplicities':[order(F0,p) for p in POINTS],
         'moduli':[65537,65539]}
if __name__=='__main__':
 ap=argparse.ArgumentParser();ap.add_argument('--out',required=True);arg=ap.parse_args()
 result=run();Path(arg.out).write_text(json.dumps(result,sort_keys=True,indent=2)+'\n')
 print(json.dumps({k:v for k,v in result.items() if k not in ['rank_cases_data']}))
