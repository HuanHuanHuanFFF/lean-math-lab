"""Exact implementation regressions for the new determinant/profile lemmas.
No finite search here is used to prove a new unrestricted theorem.
"""
import argparse,json
from math import gcd,isqrt,comb
from pathlib import Path
from fractions import Fraction as F

def odd(n):
 assert n>0
 return n//(n&-n)
def val(n,p):
 assert n>0
 e=0
 while n%p==0:n//=p;e+=1
 return e
def prime(p):return p>1 and all(p%d for d in range(2,isqrt(p)+1))
def kap(n):
 de=3 if val(n,3)==1 else 1
 la=3 if val(n-1,3)==1 else 1
 mu=3 if val((n-2)//2,3)==1 else 1
 return de**3*la**3*mu**2

def fac(n):
 d=2;out={}
 while d*d<=n:
  if n%d==0:
   e=0
   while n%d==0:n//=d;e+=1
   out[d]=e
  d+=1
 if n>1:out[n]=1
 return out

def vc(n,j,p):
 q=p;s=0
 while q<=n:
  s+=n//q-j//q-(n-j)//q;q*=p
 return s

def digit_below(n,j,p):
 while n or j:
  if j%p>n%p:return False
  j//=p;n//=p
 return True

def run():
 assert F(108,343)<F(1,3)
 # Symbolic identity: complete degree-grid verification in n,u,A,Y.
 # Degree bounds (2,2,1,1) for the difference after the Y^2 terms cancel.
 ident=0
 for n in range(3):
  for u in range(3):
   for A in range(2):
    for Y in range(2):
     q=(u*n+Y)*(u*n+Y-A)-(u+Y)*(u+Y-A)-u*(n-1)*(u*(n+1)+2*Y-A)
     assert q==0;ident+=1
 # Strong determinant on genuinely nonempty W1 + OLD128 inputs.
 cases=[];window_inputs=0
 for m in range(3,16,2):
  for v in range(4,11):
   n=m*2**v
   if 128*m**4*(n-1)**3>=kap(n)*n**4:continue
   for j in range(4,n//2):
    if 3*j*(j-1)%(n-1):continue
    window_inputs+=1
    for T in range(3,m+1,2):
     if n%T or j%T:continue
     NN=n//T;JJ=j//T
     for A in range(1,min(T,6)):
      for X in sorted({1,2,3,5,7,max(1,NN//(A+1)),max(1,NN//A-1)}):
       B=NN-A*X
       if B<1:continue
       u=min(A,JJ//X);w=JJ-u*X
       if not (0<=w<=B):continue
       delta=A*w-B*u
       assert T*odd(NN)**2<=abs(delta)<=A*B
       cases.append([n,j,T,A,X,B,u,w,delta])
 assert cases and window_inputs
 # Actual binomial tests of whole-family statement f>=2, all digits unrestricted.
 ns=set();profiles=[]
 for p in [x for x in range(3,20) if prime(x)]:
  for A in range(1,p):
   for B in range(1,p):
    for f in range(2,4):
     for E in range(f+1,7):
      n=A*p**E+B*p**f
      if n<=3000:ns.add(n)
      # Fixed finite ranges validate the strict exponent comparison and quotient bounds.
      if n>=12:
       assert n<p**(E+1)
       if f>=2:assert p**f>A*B
      profiles.append((p,A,B,f,E))
 nchecks=0;boundary=[]
 for n in sorted(ns):
  fs=fac(comb(n,3));ps=[p for p in fs if p>=3]
  for j in range(4,n//2+1):
   assert any(vc(n,j,p)>0 for p in ps),(n,j)
   if n<=120:
    G=gcd(comb(n,3),comb(n,j))
    assert odd(G)>1
   nchecks+=1
 # Endpoint p=i=3: cancellation f=1 must not be mistaken for forced no-carry.
 assert vc(12,3,3)==0 and vc(36,3,3)==1
 assert vc(56,3,3)==2 and vc(56,11,3)==1
 assert (11%27)>(56%27) and not ((11%9)>(56%9))
 # False strengthening with OLD128 omitted; W1+G4 alone do not imply new determinant.
 n,j,T,A,X,B,u,w=36,15,3,1,1,11,0,5
 assert 3*j*(j-1)%(n-1)==0 and gcd(n,j)**4<3*n
 assert T*odd(A*X+B)**2>abs(A*w-B*u)
 # A retained exact input satisfying both weak windows is not NC3.
 n,j=56,11
 assert 3*j*(j-1)%(n-1)==0 and 6*j*(j-1)*(j-2)%(n-2)==0
 assert gcd(comb(n,3),comb(n,j))==840
 # Bounded digital equivalence regression: full layers vs digitwise comparison.
 dchecks=0
 for p in [3,5,7,11]:
  for n in range(8,130):
   for j in range(4,n//2+1):
    assert (vc(n,j,p)==0)==digit_below(n,j,p);dchecks+=1
 return {'status':'PASS','identity_grid_points':ident,'nonempty_window_inputs':window_inputs,
         'determinant_regressions':len(cases),'determinant_examples':cases[:12],
         'two_digit_parameter_regressions':len(profiles),'small_whole_rows':len(ns),
         'actual_original_binomial_pairs':nchecks,'digit_equivalence_checks':dchecks,
         'source_prime_endpoint':{'n':56,'j':11,'p':3,'valuations':[2,1]},
         'drop_ROW_counterexample':{'n':36,'j':15,'strong_lhs':27,'delta':5},
         'weak_window_non_counterexample':{'n':56,'j':11,'true_gcd':840}}
if __name__=='__main__':
 ap=argparse.ArgumentParser();ap.add_argument('--out',required=True);args=ap.parse_args()
 r=run();Path(args.out).write_text(json.dumps(r,sort_keys=True,indent=2)+'\n');print(json.dumps({k:v for k,v in r.items() if k!='determinant_examples'}))
