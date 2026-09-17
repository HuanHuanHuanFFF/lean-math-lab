from pathlib import Path
from math import comb,gcd
import json,time
from sympy import ZZ
from sympy.polys.matrices import DomainMatrix
ROOT=Path(__file__).parents[1];P=1000003
pts=[(r,s*(r-s))for r in range(3,9)for s in range(r//2+1)]
def mon(d):return[(a,b)for b in range(d//2+1)for a in range(d-2*b+1)]
def rref(A):
 A=[[x%P for x in row]for row in A];piv=[];rr=0
 for c in range(len(A[0])):
  k=next((k for k in range(rr,len(A))if A[k][c]),None)
  if k is None:continue
  A[k],A[rr]=A[rr],A[k];iv=pow(A[rr][c],-1,P);A[rr]=[x*iv%P for x in A[rr]]
  for i in range(len(A)):
   if i!=rr and A[i][c]:
    v=A[i][c];A[i]=[(x-v*y)%P for x,y in zip(A[i],A[rr])]
  piv.append(c);rr+=1
  if rr==len(A):break
 return A,piv

def ker(A):
 A,piv=rref(A);n=len(A[0]);ans=[]
 for c in range(n):
  if c in piv:continue
  row=[0]*n;row[c]=1
  for i,p in enumerate(piv):row[p]=-A[i][c]%P
  ans.append(row)
 return ans

def tay(poly,mon,i,j,r,x):
 return sum(c*comb(a,i)*comb(b,j)*r**(a-i)*x**(b-j)for c,(a,b)in zip(poly,mon)if a>=i and b>=j)

def one(mask):
 start=time.monotonic();Z=[x for i,x in enumerate(pts)if mask>>i&1];ms=(4,4,3,3,3,3);B7=mon(7);B17=mon(17);B10=mon(10)
 H=DomainMatrix.from_list([[r**a*x**b for a,b in B7]for r,x in Z],ZZ).nullspace().to_Matrix().tolist();hs=[]
 for raw in H:
  v=list(map(int,raw));g=gcd(*v);hs.append([x//g for x in v])
 rows=[];local=[]
 for ix,(r,x)in enumerate(Z):
  m=ms[r-3]
  for i in range(m):
   for j in range(m-i):rows.append((ix,i,j,r,x))
  for a in range(m-1):
   for b in range(m-1-a):local.append((ix,a,b,r,x))
 A=[[comb(a,i)*comb(b,j)*r**(a-i)*x**(b-j)if a>=i and b>=j else 0 for a,b in B17]for ix,i,j,r,x in rows]
 L=ker([list(x)for x in zip(*A)]);C=[]
 for h in hs:
  B=[[tay(h,B7,i-a,j-b,r,x)if ix==ix2 and i>=a and j>=b else 0 for ix2,a,b,_,_ in local]for ix,i,j,r,x in rows]
  for l in L:C.append([sum(l[t]*B[t][c]for t in range(len(rows)))%P for c in range(len(local))])
 globalL=[[comb(a,i)*comb(b,j)*r**(a-i)*x**(b-j)if a>=i and b>=j else 0 for a,b in B10]for ix,i,j,r,x in local]
 arank=len(rref(A)[1]);crank=len(rref(C)[1]);grank=len(rref(globalL)[1]);
 return {'mask':mask,'Z':Z,'weights':ms,'H_basis':hs,'H_monomials':B7,'jet_shape':[len(A),len(A[0])],'jet_rank':arank,'left_nullity':len(L),'residual_shape':[len(C),len(local)],'residual_rank':crank,'universal_local_dimension':len(local)-crank,'global_multiplier_rank':grank,'prime':P,'seconds':time.monotonic()-start}
if __name__=='__main__':
 masks=[int(m)for m in (ROOT/'evidence/cubic_residual_masks.txt').read_text().split()if int(m).bit_count()==14]
 answers=[]
 for mask in masks[:3]:
  a=one(mask);answers.append(a);print({k:v for k,v in a.items()if k not in['Z','H_basis','H_monomials']},flush=True)
 (ROOT/'evidence/linear_multiplier_diagnostic.json').write_text(json.dumps(answers,indent=2))
