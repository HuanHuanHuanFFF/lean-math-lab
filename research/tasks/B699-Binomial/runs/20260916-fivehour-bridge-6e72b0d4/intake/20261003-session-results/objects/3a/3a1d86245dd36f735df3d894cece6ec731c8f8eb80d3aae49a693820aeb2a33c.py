"""Exact Q determinant verification for all four residual quintic root configurations.
Independent of finite-field Gaussian elimination: exact rational local coefficients.
"""
from pathlib import Path
from fractions import Fraction as F
from math import comb
import json,sympy as sp
ROOT=Path(__file__).resolve().parents[1];O=ROOT/'certificates/geometry'
def mul(a,b):
 c={}
 for (i,j),v in a.items():
  for (k,l),w in b.items():c[i+k,j+l]=c.get((i+k,j+l),F(0))+v*w
 return {k:v for k,v in c.items() if v}
def add(a,b):
 c=a.copy()
 for k,v in b.items():c[k]=c.get(k,F(0))+v
 return {k:v for k,v in c.items() if v}
def jet(P,r,s,wt,i,j):
 val=F(0);x=s*(r-s);c=s if wt==2 else 0
 for (a,b),v in P.items():
  if b<j:continue
  for d in range(max(0,i-a),min(i,b-j)+1):
   val+=v*comb(b,j)*comb(b-j,d)*x**(b-j-d)*c**d*comb(a,i-d)*r**(a-i+d)
 return val
W={(0,0):F(1)}
for r in range(3,9):W=mul(W,{(1,0):F(1),(0,0):F(-r)})
mons=[(a,b) for b in range(3) for a in range(5-2*b)]
cols=[{(a+i,b+j):v for (i,j),v in W.items()} for a,b in mons]
allrows=[];pts=[]
for r in range(3,9):
 for s in range(r//2+1):
  w=2 if r==2*s else 1;pt=len(pts);pts.append((r,s,w))
  for j in range(5):
   for i in range(1,(10-2*j) if w==2 else (5-j)):allrows.append((pt,r,s,w,i,j))
configs=[list(map(int,l.split())) for l in (O/'g01.txt').read_text().splitlines()]
minorrows=[list(map(int,l.split())) for l in (O/'g01.p32749.minors').read_text().splitlines()]
assert len(configs)==len(minorrows)==4
out=[]
for ix,(v,sel) in enumerate(zip(configs,minorrows)):
 q=v[0];ds=v[1:7];ks=v[7:13];L=v[13:19];B=v[19:25];ms=v[25:];assert q==5 and len(ms)==21
 H0={};pt=0
 for r in range(3,9):
  row={(0,0):F(1)}
  for s in range(r//2+1):
   for k in range(ms[pt]):row=mul(row,{(0,1):F(1),(0,0):F(-s*(r-s))})
   pt+=1
  if ds[r-3]==1:row=mul(row,{(0,1):F(1),(0,0):-F(L[r-3],120)})
  elif ds[r-3]:raise AssertionError('not a linear remainder profile')
  lag={(0,0):F(1)}
  for t in range(3,9):
   if t!=r:lag=mul(lag,{(1,0):F(1,r-t),(0,0):F(-t,r-t)})
  H0=add(H0,mul(lag,row))
 assert max(a+2*b for a,b in H0)<=10
 assert H0.get((0,5))==1
 assert sel[:2]==[ix,10]
 matrix=[];used=[]
 for rid in sel[3:]:
  pt,r,s,w,i,j=allrows[rid];m=ms[pt]
  assert i+j<m or (w==2 and i+2*j<2*m-ks[r-3])
  row=[jet(P,r,s,w,i,j) for P in [*cols,H0]];matrix.append(row);used.append([pt,r,s,w,i,j])
 M=sp.Matrix([[sp.Rational(x.numerator,x.denominator) for x in row] for row in matrix]);det=F(M.det());assert det
 assert det.numerator*pow(det.denominator,-1,32749)%32749==sel[2]
 out.append({'configuration':ix,'selected_rows':used,'rational_matrix':[[str(x) for x in row] for row in matrix],'rational_determinant':str(det),'det_mod32749':sel[2],'all_rational_coefficients_retained':True,'nonzero':True})
(O/'EXACT_RATIONAL_MINORS.json').write_text(json.dumps({'q':5,'fee':[0,0,0,1,2,2],'complete_remaining_configurations':4,'certificates':out},indent=2)+'\n')
print('PASS four nonzero exact rational 10x10 determinants:',[a['rational_determinant'] for a in out])
