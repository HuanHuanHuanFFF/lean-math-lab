"""Exact rational nullspaces for the two surviving low-degree affine systems.
Python standard library only. Polynomials use exponent-pair dictionaries.
"""
from fractions import Fraction as F
from math import comb
from pathlib import Path
import json

def add(a,b):
 c=dict(a)
 for m,v in b.items():c[m]=c.get(m,F(0))+v
 return {m:v for m,v in c.items()if v}
def scale(a,c):return {m:v*c for m,v in a.items()if v*c}
def mul(a,b):
 c={}
 for (i,j),v in a.items():
  for (k,l),w in b.items():c[i+k,j+l]=c.get((i+k,j+l),F(0))+v*w
 return {m:v for m,v in c.items()if v}
def encode(a):return [[i,j,v.numerator,v.denominator]for(i,j),v in sorted(a.items())]
def jet(poly,r,s,i,j):
 v=s*(r-s);sh=s if 2*s==r else 0;ans=F(0)
 for(a,b),c in poly.items():
  if j>b:continue
  for l in range(min(b-j,i)+1):
   z=i-l
   if z<=a:ans+=c*comb(b,j)*comb(b-j,l)*v**(b-j-l)*sh**l*comb(a,z)*r**(a-z)
 return ans

def read_gate(line):
 v=list(map(int,line.split()));assert len(v)==40
 return v[0],v[1:7],v[7:13],v[13:19],v[19:]
def make_matrix(line):
 q,d,k,lam,ms=read_gate(line);W={(0,0):F(1)}
 for r in range(3,9):W=mul(W,{(1,0):F(1),(0,0):F(-r)})
 H0={};pt=0
 for ri,r in enumerate(range(3,9)):
  ff={(0,0):F(1)}
  for s in range(r//2+1):
   for _ in range(ms[pt]):ff=mul(ff,{(0,1):F(1),(0,0):F(-s*(r-s))})
   pt+=1
  if d[ri]:ff=mul(ff,{(0,1):F(1),(0,0):-F(lam[ri],120)})
  L={(0,0):F(1)}
  for t in range(3,9):
   if t!=r:L=scale(mul(L,{(1,0):F(1),(0,0):F(-t)}),F(1,r-t))
  H0=add(H0,mul(ff,L))
 assert max(a+2*b for a,b in H0)<=2*q
 pols=[mul(W,{(a,b):F(1)})for b in range(q-2)for a in range(2*q-5-2*b)]+[scale(H0,14400)]
 assert all(v.denominator==1 for pol in pols for v in pol.values())
 rows=[];labels=[];pt=0
 for ri,r in enumerate(range(3,9)):
  for s in range(r//2+1):
   m=ms[pt];pt+=1;dg=2*s==r
   for j in range(m):
    stop=max(m-j,2*m-2*j-k[ri])if dg else m-j
    for i in range(1,stop):
     rows.append([jet(pol,r,s,i,j)for pol in pols]);labels.append([r,s,i,j])
 return pols,rows,labels,W

def rref(rows,n=None):
 a=[[F(v)for v in row]for row in rows];n=n if n is not None else len(a[0]);rr=0;piv=[]
 for c in range(n):
  ix=next((i for i in range(rr,len(a))if a[i][c]),None)
  if ix is None:continue
  a[rr],a[ix]=a[ix],a[rr];v=a[rr][c];a[rr]=[x/v for x in a[rr]]
  for i in range(len(a)):
   if i!=rr and a[i][c]:
    v=a[i][c];a[i]=[x-v*y for x,y in zip(a[i],a[rr])]
  piv.append(c);rr+=1
  if rr==len(a):break
 return a,piv

def run(gdir,out):
 ans=[]
 for name,dim in [('q4_base',2),('q5_d56',1)]:
  lines=(gdir/(name+'.gates')).read_text().splitlines();pols,A,labels,W=make_matrix(lines[0]);RR,piv=rref(A,len(pols));assert len(pols)-len(piv)==dim
  basis=[]
  for f in range(len(pols)):
   if f in piv:continue
   v=[F(0)]*len(pols);v[f]=F(1)
   for row,c in enumerate(piv):v[c]=-RR[row][f]
   assert all(sum(a*b for a,b in zip(row,v))==0 for row in A)
   H={}
   for a,b in zip(v,pols):H=add(H,scale(b,a))
   basis.append(H)
  P0={(0,0):F(1)}
  for t in range(4):P0=mul(P0,{(0,1):F(1),(1,0):F(-t),(0,0):F(t*t)})
  if name=='q4_base':
   B=mul(mul(W,{(1,0):F(1),(0,0):F(-3)}),{(1,0):F(1),(0,0):F(-4)})
   expected=[P0,B]
  else:
   C=mul(P0,{(0,1):F(1),(2,0):F(-1),(1,0):F(9),(0,0):F(-20)})
   expected=[C]
  mons=sorted(set(m for pol in basis+expected for m in pol))
  cols=[[pol.get(m,F(0))for m in mons]for pol in basis+expected]
  assert len(rref(cols)[1])==dim
  assert len(rref(cols[dim:])[1])==dim
  if name=='q4_base':
   assert jet(P0,5,2,1,0)==0 and jet(B,5,2,1,0)!=0
   assert jet(P0,6,3,1,0)==0 and jet(B,6,3,1,0)!=0
  ans.append({'name':name,'gate_index':0,'columns':len(pols),'rank':len(piv),'kernel_dimension':dim,
   'pivots':piv,'rref_nonzero_rows':[[str(x)for x in RR[i]]for i in range(len(piv))],
   'expected_polynomial_basis':list(map(encode,expected)),
   'result':'P0 + t (N-3)(N-4) W; irreducibility requires t!=0'if name=='q4_base'else 'P0*(X-(N-4)(N-5)), reducible',
   'parameters_bounded':False})
 (out/'exact_low_kernels.json').write_text(json.dumps(ans,indent=2)+'\n');return ans
