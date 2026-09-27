"""Six integer determinants, with fraction-free Bareiss division checks.
Only the Python standard library is required. Reconstructs original integer
jet matrices; no floating point or modular inverse is used in reconstruction.
"""
from __future__ import annotations
import json
from math import comb
from pathlib import Path

def mul(a:list[int],b:list[int])->list[int]:
 c=[0]*(len(a)+len(b)-1)
 for i,x in enumerate(a):
  for j,y in enumerate(b):c[i+j]+=x*y
 return c

def jet(a:int,b:int,r:int,v:int,s:int,i:int,j:int)->int:
 if j>b:return 0
 return sum(comb(b,j)*comb(b-j,l)*v**(b-j-l)*s**l*comb(a,i-l)*r**(a-i+l)
            for l in range(min(b-j,i)+1)if i-l<=a)

def matrix(gate:list[int],minor:list[int])->list[list[int]]:
 q,L,P5,*ms=gate
 W=[1]
 for r in range(3,9):W=mul(W,[-r,1])
 F5=[];pos=0
 for r in range(3,9):
  f=[1]
  for s in range(r//2+1):
   for _ in range(ms[pos]):f=mul(f,[-s*(r-s),1])
   pos+=1
  if r==7:f=mul(f,[P5,-5*L,5])
  else:f=[5*x for x in f]
  assert len(f)==q+1
  F5.append(f)
 H=[[0]*(q+1)for _ in range(6)]
 for r in range(3,9):
  a=[1];den=1
  for t in range(3,9):
   if r!=t:a=mul(a,[-t,1]);den*=r-t
  assert 120%den==0
  for n,x in enumerate(a):
   for b,y in enumerate(F5[r-3]):H[n][b]+=x*(120//den)*y
 mons=[(a,b)for b in range(q-2)for a in range(2*q-5-2*b)]
 rows=[]
 for r in range(3,9):
  for s in range(r//2+1):
   v=s*(r-s);diag=2*s==r
   for j in range(q):
    for i in range(1,2*q-2*j if diag else q-j):rows.append((r,v,s if diag else 0,i,j))
 out=[]
 assert minor[1]==len(mons)+1
 for ix in minor[3:]:
  r,v,s,i,j=rows[ix]
  row=[sum(w*jet(a+n,b,r,v,s,i,j)for n,w in enumerate(W))for a,b in mons]
  row.append(sum(H[a][b]*jet(a,b,r,v,s,i,j)for a in range(6)for b in range(q+1)))
  out.append(row)
 assert len(out)==len(out[0])==minor[1]
 return out

def bareiss(a:list[list[int]])->int:
 a=[r[:]for r in a];n=len(a);previous=1;sign=1
 for k in range(n-1):
  t=next((i for i in range(k,n)if a[i][k]),None)
  if t is None:return 0
  if t!=k:a[k],a[t]=a[t],a[k];sign=-sign
  pivot=a[k][k]
  for i in range(k+1,n):
   for j in range(k+1,n):
    numerator=pivot*a[i][j]-a[i][k]*a[k][j]
    value,remainder=divmod(numerator,previous)
    if remainder:raise ArithmeticError('non-exact Bareiss division')
    a[i][j]=value
   a[i][k]=0
  previous=pivot
 return sign*a[-1][-1]

def run(geometry:Path)->dict:
 result=[]
 for q in(8,9):
  gates=(geometry/f'q{q}.gates').read_text().splitlines()
  minors=(geometry/f'q{q}.32749.minors').read_text().splitlines()
  for ix in (0,len(gates)//2,len(gates)-1):
   g=list(map(int,gates[ix].split()));m=list(map(int,minors[ix].split()))
   assert m[0]==ix
   d=bareiss(matrix(g,m));assert d and d%32749==(600*m[2])%32749
   result.append(dict(q=q,gate_index=ix,dimension=m[1],integer_determinant=str(d),decimal_digits=len(str(abs(d))),mod32749=d%32749))
 return dict(status='PASS_SIX_EXACT_INTEGER_MINORS',samples=result)
if __name__=='__main__':
 import argparse
 ap=argparse.ArgumentParser();ap.add_argument('geometry',type=Path);ap.add_argument('output',type=Path);a=ap.parse_args()
 a.output.write_text(json.dumps(run(a.geometry),indent=2)+'\n')
 print('PASS_SIX_EXACT_INTEGER_MINORS')
