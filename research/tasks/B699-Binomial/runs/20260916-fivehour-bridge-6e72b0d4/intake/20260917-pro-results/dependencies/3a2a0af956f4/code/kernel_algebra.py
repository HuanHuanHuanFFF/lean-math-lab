"""Exact integer Taylor matrices; modular linear algebra uses bounded int64.
Reimplementation from H013 PROOFS, fixed source commit recorded in SOURCE_ADOPTION.
"""
from math import comb, gcd, lcm
from fractions import Fraction as Q
from functools import reduce
import numpy as np

def basis(D,T=0):
 return [(a,b) for b in range(D//2+1) for a in range(D-2*b+1) if a+2*b>=T]

def equations(weights,l):
 out=[]
 for r,w in sorted(weights.items()):
  for s in range(r//2+1):
   m=max(0,w-int(s<l)-int(r-s<l))
   for v in range(m):
    for u in range(max(0,m-(2 if 2*s==r else 1)*v)):
     out.append((r,s,u,v))
 return out

def entry(a,b,row):
 r,s,u,v=row;t=r-s
 if b<v:return 0
 if s!=t:
  if a<u:return 0
  return comb(a,u)*comb(b,v)*r**(a-u)*(s*t)**(b-v)
 return comb(b,v)*sum(comb(b-v,h)*comb(a,u-h)*(s*t)**(b-v-h)*s**h*r**(a-u+h) for h in range(max(0,u-a),min(b-v,u)+1))

def build(D,weights,l=3,T=0):
 bs=basis(D-2*l,max(0,T-2) if l else T);rows=equations(weights,l)
 A=[[entry(a,b,row) for a,b in bs] for row in rows]
 return A,bs,rows

def rref_mod(A,p=1000003):
 M=np.array([[int(x)%p for x in row] for row in A],dtype=np.int64)
 rowids=list(range(M.shape[0]));piv=[];det=1;r=0
 for c in range(M.shape[1]):
  ix=np.flatnonzero(M[r:,c])
  if not len(ix):continue
  j=r+int(ix[0])
  if j!=r:
   M[[r,j]]=M[[j,r]];rowids[r],rowids[j]=rowids[j],rowids[r]
  pivot=int(M[r,c]);det=det*pivot%p
  M[r,c:]=M[r,c:]*pow(pivot,-1,p)%p
  factors=M[:,c].copy();factors[r]=0
  M[:,c:] = (M[:,c:]-factors[:,None]*M[r,c:][None,:])%p
  piv.append(c);r+=1
  if r==M.shape[0]:break
 free=[c for c in range(M.shape[1]) if c not in set(piv)]
 ker=[]
 for f in free:
  v=[0]*M.shape[1];v[f]=1
  for rr,c in enumerate(piv):v[c]=int(-M[rr,f]%p)
  ker.append(v)
 return dict(rank=r,rows=rowids[:r],cols=piv,free=free,minor_det=det,kernel=ker)

def inv_series(factors,n):
 out=[Q(1)]+[Q(0)]*(n-1)
 for a,m in factors:
  f=[Q((-1)**k*comb(m+k-1,k),a**(m+k)) for k in range(n)]
  out=[sum(out[j]*f[k-j] for j in range(k+1)) for k in range(n)]
 return out

def residue_relation(wp,terms,rows):
 lookup={s:i for i,s in enumerate(rows)};v=[Q(0)]*len(rows)
 for t,scale,extra in terms:
  for r,m in wp.items():
   pole=m+extra.count(r)
   fac=[(r-s,d) for s,d in wp.items() if s!=r]+[(r-s,1) for s in extra if s!=r]
   cf=inv_series(fac,pole);ss=min(t,r-t)
   for h in range(pole):
    mul=scale*cf[pole-1-h]
    if 2*ss==r:v[lookup[(r,ss,h,0)]]+=mul
    else:
     for vv in range(h+1):
      f=t**vv
      if f:v[lookup[(r,ss,h-vv,vv)]]+=mul*f
 den=lcm(*(c.denominator for c in v));z=[int(c*den) for c in v];d=reduce(gcd,z)
 return [c//d for c in z]

def det_mod(A,p=1000003):
 M=np.array(A,dtype=np.int64)%p;d=1;n=len(A)
 for i in range(n):
  ix=np.flatnonzero(M[i:,i])
  if not len(ix):return 0
  j=i+int(ix[0])
  if j!=i:M[[i,j]]=M[[j,i]];d=-d
  z=int(M[i,i]);d=d*z%p
  f=M[i+1:,i]*pow(z,-1,p)%p
  M[i+1:,i:]=(M[i+1:,i:]-f[:,None]*M[i,i:])%p
 return int(d)%p

def sylvester_mod(f,g,m,p=1000003):
 f=list(f)+[0]*(m+1-len(f));g=list(g)+[0]*(m+1-len(g))
 # descending coefficient convention
 f=f[::-1];g=g[::-1];A=[]
 for poly in [f,g]:
  for k in range(m): A.append([0]*k+poly+[0]*(m-1-k))
 return det_mod(A,p)
