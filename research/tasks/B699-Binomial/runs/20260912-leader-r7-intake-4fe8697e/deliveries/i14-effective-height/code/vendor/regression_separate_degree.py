"""Exact finite regressions for new identities; the universal proof is in notes."""
from fractions import Fraction as F
from math import comb,gcd,prod,factorial,isqrt
from pathlib import Path
import json,time,hashlib,itertools
ROOT=Path(__file__).resolve().parents[1]

def prime(p):return p>=2 and all(p%q for q in range(2,isqrt(p)+1))
def poly(A,B,C):
 N=A+B+C+1
 P=[(-1)**(C+r)*comb(N,r)*comb(A+C-r,A) for r in range(C+1)]
 Q=[(-1)**C*comb(A+C-r,C)*comb(B+r,r) for r in range(A+1)]
 E=[(-1)**r*comb(A+r,r)*comb(N,A+C+r+1) for r in range(B+1)]
 return P,Q,E

def ev(a,x):
 s=F(0)
 for c in reversed(a):s=s*x+c
 return s

def intervals(e,d,f):
 N=e+d+f;ends=sorted({F(k,h) for h in [e,d,f,N] for k in range(h+1)})
 out=[]
 for a,b in zip(ends,ends[1:]):
  mid=(a+b)/2
  J=sum((h*mid).__floor__() for h in [e,d,f])
  if (N*mid).__floor__()-J==2:
   assert a==F(J+2,N)
   out.append((a,b,J))
 return out

def main():
 if not __debug__:raise RuntimeError('Do not use -O')
 st=time.monotonic();carry=0;content=0;identities=0;clearing=0
 for p in [2,3,5,7,11,13]:
  for a,b,c in itertools.product(range(p),repeat=3):
   if a+b+c<2*p-1:continue
   for r in range(p):
    cc=(a+c-r)//p-(a-r)//p+(b+r)//p
    assert cc>=1;carry+=1
 samples=[]
 for e,d,f in [(1,1,1),(2,2,1),(5,14,4),(12,20,7),(17,7,7),(4,2,1),(1,3,1),(3,1,1)]:
  N=e+d+f;ints=intervals(e,d,f)
  for m in [1,2,3,5,10,25]:
   ps=[p for p in range(2,N*m+1) if prime(p)]
   claimed=set()
   for w in range(0,N*m+1):
    for a,b,J in ints:
     lo=F(m)/(w+b);hi=F(N*m-2)/(N*w+J+2)
     for p in ps:
      if lo<p<=hi:
       assert p not in claimed;claimed.add(p)
    if F(m)/(w+1)<2:break
   Pclaim=prod(claimed)
   for delta in [0,1]:
    A=e*m-delta;B=f*m-1+delta;C=d*m-delta
    if min(A,B,C)<0:continue
    P,Q,Epoly=poly(A,B,C);G=gcd(*Q)
    assert G>0 and G%Pclaim==0;assert all(x%G==0 for x in P);content+=1
    for z in [F(1,9),F(1,243),F(1,50)]:
     assert ev(P,z)-(1-z)**((d+f)*m)*ev(Q,z)==z**(A+C+1)*ev(Epoly,z);identities+=1
    samples.append(dict(e=e,d=d,f=f,m=m,delta=delta,content_bits=G.bit_length(),forced_prime_count=len(claimed)))
 # Check both unequal directions and negative original remaining exponents.
 for p,q,k,l,a,b in [(3,11,5,2,1,2),(5,7,2,2,2,1),(3,2,2,3,1,1)]:
  P0=p**k;Q0=q**l;L=a*P0;D=a*P0-b*Q0;z=F(D,L)
  for e,d,f in [(1,3,1),(3,1,1),(2,2,1),(5,14,4)]:
   c=d+f
   for m in [1,2]:
    for r,s,Ao,Bo in [(0,0,5,5),(1,1,7,9),(k*c*m,l*c*m,1,1),(k*(e+f)*m,l*c*m,1,1)]:
     vals=[];n1=p**r*Ao;n2=q**s*Bo;Delta=n1-n2
     X=F(p)**(r-k*c*m)*Ao;Z=F(q)**(s-l*c*m)*Bo
     M=a**(max(e-d,0)*m)*p**max(k*(e+f)*m-r,0)*q**max(l*c*m-s,0)
     for delta in [0,1]:
      A=e*m-delta;B=f*m-1+delta;C=d*m-delta;pp,qq,ee=poly(A,B,C);G=gcd(*qq)
      ppv=F(L)**C*ev(pp,z)/G;qqv=F(L)**C*ev(qq,z)/G
      I=a**(c*m)*ppv*Z-b**(c*m)*qqv*X
      R=F(L)**(c*m-A-1)*D**(A+C+1)*ev(ee,z)/G
      assert P0**(c*m)*I==R*Z-b**(c*m)*qqv*Delta
      assert (M*I).denominator==1
      vals.append(I);clearing+=1
     assert any(v!=0 for v in vals)
 out=dict(status='PASS_EXACT_FINITE_REGRESSIONS_NOT_UNIVERSAL_PROOF',carry_cases=carry,content_instances=content,polynomial_identities=identities,clearing_instances=clearing,samples=samples,seconds=time.monotonic()-st)
 (ROOT/'outputs/separate_degree_regression.json').write_text(json.dumps(out,indent=2)+'\n');print({k:v for k,v in out.items() if k!='samples'})
if __name__=='__main__':main()
