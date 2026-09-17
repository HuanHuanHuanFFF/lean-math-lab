"""Finite diagnostics of the new formulas. Not a proof of the infinite claims."""
from pathlib import Path
from fractions import Fraction as Q
from math import comb, gcd
from itertools import product, combinations
import json,time
from verify import require, vals, bs, echelon_mod, rational_nulls
ROOT=Path(__file__).resolve().parents[1]

def multiply(A,B,limit,weight=1):
 C={}
 for (a,b),v in A.items():
  for (c,d),w in B.items():
   if a+c+weight*(b+d)<limit:
    z=(a+c,b+d);C[z]=C.get(z,0)+v*w
 return {z:v for z,v in C.items() if v}
def power(A,k,limit,weight=1):
 R={(0,0):1}
 for _ in range(k):R=multiply(R,A,limit,weight)
 return R

def entry(a,b,r,s,i,h):
 t=r-s
 if b<h:return 0
 if s!=t:
  return 0 if a<i else comb(a,i)*comb(b,h)*r**(a-i)*(s*t)**(b-h)
 return comb(b,h)*sum(comb(b-h,l)*comb(a,i-l)*(s*s)**(b-h-l)*s**l*r**(a-i+l)
                     for l in range(max(0,i-a),min(b-h,i)+1))
def vp_bin(n,j,p):
 out=0;q=p
 while q<=n:
  out+=n//q-j//q-(n-j)//q;q*=p
 return out

def run():
 st=time.time();counts={}
 B20=[(a,b) for b in range(11) for a in range(21-2*b)]
 require(len(B20)==121,'fat basis count')
 checked=0;diag=0;off=0
 for r in range(3,9):
  for s in range(r//2+1):
   weight=2 if 2*s==r else 1
   NN={(0,0):r,(1,0):1}
   XX={(0,0):s*(r-s),(0,1):1}
   if weight==2:XX[(1,0)]=s
   pp=[power(NN,a,4,weight) for a in range(21)]
   qq=[power(XX,b,4,weight) for b in range(11)]
   ind=[(i,h) for h in range(4) for i in range(4) if i+weight*h<4]
   require(len(ind)==(6 if weight==2 else 10),'diagonal order count')
   for a,b in B20:
    poly=multiply(pp[a],qq[b],4,weight)
    for i,h in ind:
     require(poly.get((i,h),0)==entry(a,b,r,s,i,h),'Taylor two implementations')
     checked+=1
   if weight==2:diag+=1
   else:off+=1
 counts.update(fat_taylor_entries=checked,diagonal_representatives=diag,off_diagonal_representatives=off)
 # The final step deliberately imposes ordinary (N,X) double conditions,
 # including an X derivative at a diagonal source point.
 B11=[(a,b) for b in range(6) for a in range(12-2*b)]
 cnt=0
 for r in range(3,9):
  for s in range(r//2+1):
   x=s*(r-s)
   for a,b in B11:
    poly=multiply(power({(0,0):r,(1,0):1},a,2),
                  power({(0,0):x,(0,1):1},b,2),2)
    formulas={(0,0):r**a*x**b,(1,0):a*r**(a-1)*x**b if a else 0,
              (0,1):b*r**a*x**(b-1) if b else 0}
    require(all(poly.get(z,0)==v for z,v in formulas.items()),'ordinary double derivatives')
    cnt+=3
 counts['ordinary_double_entries']=cnt
 # One actual finite full-rank profile; solve its double system in Q,
 # independently of the existence / determinant argument used in the proof.
 V=vals();profile=None
 for pairs in product(*(tuple(combinations(V[r],2)) for r in V)):
  points=[(r,x) for r,z in zip(V,pairs) for x in z]
  M=[[r**a*x**b for a,b in bs()] for r,x in points]
  if len(echelon_mod(M,1000003)[1])==12:
   profile=points;break
 require(profile is not None,'full rank profile')
 MM=[]
 for r,x in profile:
  MM.extend([[r**a*x**b for a,b in B11],
             [a*r**(a-1)*x**b if a else 0 for a,b in B11],
             [b*r**a*x**(b-1) if b else 0 for a,b in B11]])
 kk=rational_nulls(MM);require(len(kk)>=6,'double kernel dimension')
 for v in kk:
  require(any(v) and all(sum(x*y for x,y in zip(row,v))==0 for row in MM),'concrete double kernel')
  require(sum(abs(x) for x in v)<2**1500,'concrete coefficient bound')
 counts['concrete_double_kernel_nullity']=len(kk)
 counts['concrete_double_kernel_row_equations']=len(MM)*len(kk)
 counts['concrete_double_kernel_max_l1_bits']=max(sum(abs(x) for x in v).bit_length() for v in kk)
 # Full prime-power Taylor divisibility, including targets with upper carries.
 total=upper=0
 for p in (11,13,17,19,23,29,31):
  for e in range(1,9):
   Qp=p**e
   for r in range(3,9):
    for s in range(r//2+1):
     v0=s*(r-s)
     for a,b in ((1,2),(p-1,p-1)):
      j=s+Qp*a;k=r-s+Qp*b;n=j+k;X=j*k
      require(10<=j<=n//2 and (n-r)%Qp==0 and (n-r)%(p*Qp)!=0,'complete prime power')
      nn=n-r;xx=X-v0
      f2=nn*nn+nn*xx+xx*xx
      f4=nn**4+nn**3*xx+nn**2*xx**2+nn*xx**3+xx**4
      require(f2%(Qp**2)==0 and f4%(Qp**4)==0,'power multiplicity')
      require(j%Qp==s and k%Qp==r-s,'source residues')
      upper+=vp_bin(n,j,p)>0;total+=1
 counts.update(complete_prime_power_cases=total,nonzero_upper_carry_cases=upper)
 # Exact warning: an actual zero cannot be moved into the nonzero-product E.
 roots=(0,1);chosen=(0,)
 require(roots!=chosen and (1*(1-1))==0,'do not peel an actual zero')
 # Cubic geometric model: not an integer NC9 counterexample and not a known
 # factor of the original interpolation polynomial.
 def model(n,x):
  R=1
  for t in (1,2,3):R*=x-t*(n-t)
  P=1
  for r in range(3,9):P*=n-r
  return 1000*R-P*(20*n*x-(n-1)*(n*n+37))
 roots_by={r:[x for x in V[r] if model(r,x)==0] for r in V}
 pts=[(r,x) for r,z in roots_by.items() for x in z]
 require([len(roots_by[r]) for r in V]==[2,2,2,3,3,3],'cubic geometric hits')
 require(len(echelon_mod([[r**a*x**b for a,b in bs()] for r,x in pts],1000003)[1])==12,'cubic full-rank points')
 n=10**8
 require(model(n,n*n//25)*model(n,n*n//16)<0,'positive real branch at one large specialization')
 counts['cubic_geometric_hit_count']=len(pts)
 counts['cubic_real_specialization_N']=n
 return {'status':'PASS_NEW_FORMULA_DIAGNOSTICS','counts':counts,
 'scope':'finite checks, not verification of all NC9 inputs or all frozen inputs',
 'seconds':time.time()-st}
if __name__=='__main__':
 import argparse
 p=argparse.ArgumentParser();p.add_argument('--out',required=True);a=p.parse_args();r=run()
 Path(a.out).write_text(json.dumps(r,indent=2));print(json.dumps(r))
