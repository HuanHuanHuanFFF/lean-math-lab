from pathlib import Path
from math import comb,gcd
import json,time
ROOT=Path(__file__).resolve().parents[1]

def vp(x,p):
 a=0
 while x and x%p==0:x//=p;a+=1
 return a

def vfac(n,p):
 a=0
 while n:n//=p;a+=n
 return a

def carries(n,j,p):
 k=n-j;c=ans=0
 while j or k or c:
  z=j%p+k%p+c;c=int(z>=p);ans+=c;j//=p;k//=p
 return ans

def common9(n,j):
 x=comb(n,9);p=2
 while p*p<=x:
  if x%p==0:
   if p>=11 and comb(n,j)%p==0:return p
   while x%p==0:x//=p
  p+=1
 if x>=11 and comb(n,j)%x==0:return x
 return None

def has_H(n,H):
 for p in [2,3,5,7]:
  val=[vp(n-r,p) for r in range(9)];m=max(val)
  if not any(val[r]==m for r in H):return False
 return True

def main(out):
 out=Path(out);out.mkdir(parents=True,exist_ok=True);st=time.time()
 count=upper=0
 for p in [11,13,17,19]:
  for e in range(1,9):
   Q=p**e
   for r in range(9):
    for A in [2,3,p+1,p+2,2*p+3]:
     n=Q*A+r
     for u in sorted(set([1,A//2])):
      for b in sorted(set([0,r,r+1])):
       j=Q*u+b
       if not 10<=j<=n//2:continue
       val=vfac(n,p)-vfac(j,p)-vfac(n-j,p)
       assert val==carries(n,j,p)
       if val==0:assert j%Q<=r
       if j%Q<=r and val>0:upper+=1
       if j%Q>r:assert val>0
       count+=1
 den=0
 for n in range(20,301):
  for j in range(10,n//2+1):
   g=gcd(n,j);a=n//g;b=j//g
   d=n//gcd(n,j**6)
   assert d==a//gcd(a,g**5)
   assert n<=d*g**6
   den+=1
 rows=[];pairs=0
 for n in range(20,1501):
  if has_H(n,{0,1,2}):
   for j in range(10,n//2+1):assert common9(n,j) is not None;pairs+=1
   rows.append(n)
 # The unbounded projection model has an actual common prime 11, not NC9.
 assert all(541%p for p in [2,3,5,7])
 assert all(541%d for d in range(2,24))
 assert 541%9==1 and 541%49==2 and 541%11==2
 assert pow(10,42,9)==pow(10,42,49)==pow(10,42,11)==1
 assert (2*(pow(2,-1,11)-1))%11==10>2
 assert 6*155000+13*1000000<14000001
 o={'status':'PASS_FINITE_DIAGNOSTICS_NOT_AN_INFINITE_PROOF','prime_power_cases':count,'nonzero_upper_carry_cases':upper,'denominator_identity_cases':den,'H012_rows_up_to_1500':rows,'legal_pairs_on_those_rows':pairs,'projection_model':'n=541*10^(42t), j=541*(10^(42t)/2-1), t>=50000; actual common prime 11','seconds':time.time()-st}
 (out/'diagnostics.json').write_text(json.dumps(o,indent=2));print(json.dumps(o))
if __name__=='__main__':
 import argparse
 p=argparse.ArgumentParser();p.add_argument('--out',required=True);a=p.parse_args();main(a.out)
