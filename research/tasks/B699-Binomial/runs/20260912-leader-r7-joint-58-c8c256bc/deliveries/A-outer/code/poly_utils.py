from math import comb,gcd,lcm
from functools import reduce
import sympy as sp
import numpy as np
CELLS=[(r,b,r-b) for r in range(9) for b in range(r+1)]
N,J=sp.symbols('N J')
def terms(expr):
 p=sp.Poly(sp.expand(expr),N,J)
 den=lcm(*[int(sp.denom(c)) for c in p.coeffs()]);gg=reduce(gcd,[int(c*den) for c in p.coeffs()]);ps=[(u,v,int(c*den)//gg) for (u,v),c in p.terms()]
 if ps[0][2]<0:ps=[(u,v,-c) for u,v,c in ps]
 return tuple(ps)
def orders(poly):
 d=max(u+v for u,v,c in poly);ans=[]
 for n,j,_ in CELLS:
  m=0
  while m<=d:
   if any(sum(c*comb(u,k)*comb(v,m-k)*n**(u-k)*j**(v-m+k) for u,v,c in poly if u>=k and v>=m-k) for k in range(m+1)):break
   m+=1
  ans.append(m)
 return ans

def basis(degree,h):
 pows=[(u,t-u) for t in range(degree) for u in range(t,-1,-1)]
 polys=[N*sp.prod((N-i)/(i+1) for i in range(u))*sp.prod((J-i)/(i+1) for i in range(v)) for u,v in pows]+[J**h]
 E=np.array([[n*(comb(n,u) if n>=u else 0)*(comb(j,v) if j>=v else 0) for u,v in pows]+[j**h] for n,j,_ in CELLS],dtype=np.int64)
 return polys,E

def exact_interpolant(E,indices,polys):
 # Exact nullspace, bounded small matrices; no numerical acceptance.
 M=sp.polys.matrices.DomainMatrix.from_Matrix(sp.Matrix(E[indices].tolist())).convert_to(sp.ZZ)
 ns=M.nullspace().to_Matrix()
 if ns.rows!=1:return None
 coeff=list(ns.row(0));return terms(sum(c*p for c,p in zip(coeff,polys)))
