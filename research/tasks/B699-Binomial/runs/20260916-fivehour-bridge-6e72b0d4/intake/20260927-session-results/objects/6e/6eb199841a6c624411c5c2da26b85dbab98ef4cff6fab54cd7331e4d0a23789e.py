"""Selected exact integer Hasse minors; no symbolic algebra package.
This is a supplementary characteristic-zero check for one gate in every
nonempty profile. All gates have two modular minor certificates separately.
"""
from fractions import Fraction
from math import comb
import json

def poly_mul(a,b):
 out={}
 for(i,j),u in a.items():
  for(k,l),v in b.items():out[i+k,j+l]=out.get((i+k,j+l),0)+u*v
 return {k:v for k,v in out.items()if v}
def poly_add(a,b):
 out=a.copy()
 for k,v in b.items():out[k]=out.get(k,0)+v
 return {k:v for k,v in out.items()if v}
def scalar(a,s):return {k:v*s for k,v in a.items()if v*s}
def jet(f,r,s,i,j):
 value=s*(r-s);shear=s if 2*s==r else 0;ans=0
 for(a,b),v in f.items():
  if b<j:continue
  for u in range(min(i,b-j)+1):
   if 0<=i-u<=a:
    ans+=v*comb(b,j)*comb(b-j,u)*value**(b-j-u)*shear**u*comb(a,i-u)*r**(a-i+u)
 return ans

def integer_columns(line):
 z=list(map(int,line.split()));assert len(z)==40
 q=z[0];D=z[1:7];K=z[7:13];lam=z[13:19];m=z[19:]
 W={(0,0):1}
 for r in range(3,9):W=poly_mul(W,{(1,0):1,(0,0):-r})
 H0={};pt=0
 for ri,r in enumerate(range(3,9)):
  f={(0,0):1}
  for s in range(r//2+1):
   for _ in range(m[pt]):f=poly_mul(f,{(0,1):1,(0,0):-s*(r-s)})
   pt+=1
  if D[ri]:f=poly_mul(f,{(0,1):1,(0,0):-Fraction(lam[ri],120)})
  L={(0,0):Fraction(1)}
  for t in range(3,9):
   if t!=r:L=scalar(poly_mul(L,{(1,0):1,(0,0):-t}),Fraction(1,r-t))
  H0=poly_add(H0,poly_mul(f,L))
 assert max(a+2*b for a,b in H0)<=2*q
 cols=[poly_mul(W,{(a,b):1})for b in range(q-2)for a in range(2*q-5-2*b)]+[scalar(H0,14400)]
 assert len(cols)==(q-2)**2+1
 for f in cols:
  for k,v in list(f.items()):
   assert Fraction(v).denominator==1;f[k]=int(v)
 labels=[];pt=0
 for r in range(3,9):
  for s in range(r//2+1):
   diag=2*s==r
   for j in range(q):
    for i in range(1,2*q-2*j if diag else q-j):labels.append((r,s,i,j,pt))
   pt+=1
 return cols,labels,m,K

def bareiss(a):
 a=[r[:]for r in a];n=len(a);sign=1;prev=1;checks=0
 for k in range(n-1):
  pivotrow=next((r for r in range(k,n)if a[r][k]),None)
  if pivotrow is None:return 0,checks
  if pivotrow!=k:a[k],a[pivotrow]=a[pivotrow],a[k];sign=-sign
  pivot=a[k][k]
  for i in range(k+1,n):
   left=a[i][k]
   for j in range(k+1,n):
    num=pivot*a[i][j]-left*a[k][j]
    assert num%prev==0
    a[i][j]=num//prev;checks+=1
   a[i][k]=0
  prev=pivot
 return sign*a[-1][-1],checks

def run(gdir,cases,out):
 records=[]
 for name,q,D,K in cases:
  gates=(gdir/f'{name}.gates').read_text().splitlines()
  if not gates:continue
  minor=list(map(int,(gdir/f'{name}.32719.minors').read_text().splitlines()[0].split()))
  idx,n,record,*ids=minor;assert idx==0 and len(ids)==n==(q-2)**2+1
  cols,labels,m,kappa=integer_columns(gates[0]);matrix=[]
  for id in ids:
   r,s,i,j,pt=labels[id]
   assert i+j<m[pt] or(2*s==r and i+2*j<2*m[pt]-kappa[r-3])
   matrix.append([jet(f,r,s,i,j)for f in cols])
  determinant,divisions=bareiss(matrix)
  assert determinant and determinant%32719==14400*record%32719
  records.append({'profile':name,'gate_index':0,'size':n,'selected_global_jet_rows':ids,'determinant_decimal':str(determinant),'exact_divisions_checked':divisions,'prime':32719,'scaled_modular_determinant':determinant%32719,'no_float_or_CAS':True})
 assert len(records)==15
 out.write_text(json.dumps({'integer_minor_count':len(records),'records':records},indent=2)+'\n')
 return len(records)
