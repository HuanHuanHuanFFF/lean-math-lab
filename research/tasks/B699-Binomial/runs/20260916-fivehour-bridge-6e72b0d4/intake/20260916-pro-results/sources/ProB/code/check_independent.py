"""Independent small-degree rational rank checks and arithmetic cross-checks.
No external packages. Does not import either discovery/check script.
"""
from fractions import Fraction
from math import factorial,gcd,comb,isqrt
from pathlib import Path
import argparse,json

POINTS=((0,0),(1,0),(0,1),(2,0),(1,1),(0,2))

def derivatives(degree,orders):
 exps=[(a,b) for a in range(degree+1) for b in range(degree-a+1)]
 rows=[]
 for (x,y),w in zip(POINTS,orders):
  for a in range(w):
   for b in range(w-a):
    rows.append([0 if i<a or j<b else
      factorial(i)//factorial(i-a)*factorial(j)//factorial(j-b)*x**(i-a)*y**(j-b)
      for i,j in exps])
 return exps,rows

def rank_q(mat,columns):
 # Column-by-column elimination via a basis of rational row vectors.
 pivots={}
 for raw in mat:
  row=list(map(Fraction,raw))
  for p,base in sorted(pivots.items()):
   a=row[p]
   if a:
    for k in range(p,columns):row[k]-=a*base[k]
  p=next((k for k,x in enumerate(row) if x),None)
  if p is not None:
   q=row[p];pivots[p]=[x/q for x in row]
 return len(pivots)

def run(root):
 original=json.loads((root/'outputs/rigidity.json').read_text())
 count=0
 for degree,a,b,t,dim,rk in original['rank_cases_data']:
  if degree>7:continue
  exps,mat=derivatives(degree,(t,a,a,b,b,b))
  got=rank_q(list(reversed(mat)),len(exps))
  assert len(exps)-got==dim,(degree,a,b,t,dim,got)
  count+=1
 ar=json.loads((root/'outputs/arithmetic.json').read_text())
 for n,j,T,A,X,B,u,w,delta in ar['determinant_examples']:
  assert n==T*(A*X+B) and j==T*(u*X+w)
  assert n-1>0 and 3*j*(j-1)%(n-1)==0
  m=n
  while m%2==0:m//=2
  assert n>3*m**4
  # Check the sharper raw product, rather than merely the derived loose CAP.
  Z=3*(u+T*delta)*(u-A+T*delta)
  assert Z!=0 and Z%(n-1)==0
  assert m*m//T<=abs(delta)
 # Explicit sharp witness: expand F0 independently on a complete degree grid.
 from itertools import product
 # Exact coefficient list for X^2Y^2(X-1)(Y-1).
 co={(3,3):1,(3,2):-1,(2,3):-1,(2,2):1}
 for x,y in product(range(7),repeat=2):
  assert sum(c*x**i*y**j for (i,j),c in co.items())==x*x*y*y*(x-1)*(y-1)
 # Reconstruct a true gcd directly for the standard non-NC projection example.
 assert gcd(comb(56,3),comb(56,11))==840
 return {'status':'PASS','rational_rank_cases':count,'rank_max_degree':7,
         'determinant_exact_product_examples':len(ar['determinant_examples']),
         'sharp_kernel_full_degree_grid':49,'imports_discovery_code':False}
if __name__=='__main__':
 p=argparse.ArgumentParser();p.add_argument('--out',required=True);a=p.parse_args()
 root=Path(__file__).resolve().parents[1];r=run(root)
 Path(a.out).write_text(json.dumps(r,sort_keys=True,indent=2)+'\n');print(json.dumps(r))
