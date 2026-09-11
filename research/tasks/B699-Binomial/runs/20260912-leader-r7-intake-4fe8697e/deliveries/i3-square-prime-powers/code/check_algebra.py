#!/usr/bin/env python3
"""Exact polynomial checks + finite full-exponent regression. No floating arithmetic."""
from fractions import Fraction as F
from math import gcd,comb,isqrt
from functools import reduce
from pathlib import Path
import json,sys
# Sparse polynomials in d,u,g,m.
ZERO=(0,0,0,0)
def C(a):return {ZERO:F(a)} if a else {}
def V(k):e=list(ZERO);e[k]=1;return {tuple(e):F(1)}
def add(a,b):
 r=dict(a)
 for e,x in b.items():r[e]=r.get(e,F(0))+x
 return {e:x for e,x in r.items() if x}
def neg(a):return {e:-x for e,x in a.items()}
def sub(a,b):return add(a,neg(b))
def mul(a,b):
 r={}
 for e,x in a.items():
  for f,y in b.items():
   v=tuple(i+j for i,j in zip(e,f));r[v]=r.get(v,F(0))+x*y
 return {e:x for e,x in r.items() if x}
def pw(a,n):
 r=C(1)
 for _ in range(n):r=mul(r,a)
 return r
def prod(*xs):
 r=C(1)
 for x in xs:r=mul(r,x)
 return r

def vp(x,p):
 a=0
 while x%p==0:x//=p;a+=1
 return a

def run():
 d,u,g,m=[V(k) for k in range(4)];du=mul(d,u);polys=[]
 for ep in [-1,1]:
  v=add(du,C(2*ep));vm=sub(du,C(2*ep))
  # upper identity after replacing m*beta by d^2
  a=sub(sub(prod(g,pw(du,2)),prod(m,pw(u,2))),sub(prod(C(4),g),prod(m,pw(u,2))))
  assert sub(a,prod(g,v,vm))=={}
  polys.append(f'upper_{ep}')
  a=sub(prod(pw(u,2),sub(prod(g,m,pw(d,2)),C(1))),sub(prod(C(4),g,m),pw(u,2)))
  assert sub(a,prod(g,m,v,vm))=={}
  polys.append(f'lower_{ep}')
  a=add(prod(pw(u,3),sub(prod(g,pw(d,3)),C(1))),add(pw(u,3),prod(C(8*ep),g)))
  factor=add(sub(pw(du,2),prod(C(2*ep),du)),C(4))
  assert sub(a,prod(g,v,factor))=={}
  polys.append(f'cube_{ep}')
 # Bernoulli remainder is z^2(6-4z+z^2), nonnegative on [0,1].
 z=d
 assert sub(sub(pw(sub(C(1),z),4),sub(C(1),prod(C(4),z))),prod(pw(z,2),add(sub(C(6),prod(C(4),z)),pw(z,2))))=={}
 margins={
  'upper_to_old_beta':2**20-108*8**4,
  'orientation_remainder_lt_one':33**2-12*33-6,
  'bernoulli_to_49_over_50':359*50-363*49,
  'lower_to_9000':49*9000-8748*50,
  'signed_T_to_1000':1000*33-738*33-1440,
  'fourth_old_beta':2**20-29**4,
  'fifth_small_q_old_beta':2**20-5**5,
  'sixth_small_q_old_beta':2**20-3**6,
 }
 assert all(v>0 for v in margins.values())
 primes=[p for p in range(2,121) if all(p%d for d in range(2,isqrt(p)+1))]
 records=0; valuations=0;square_conditions=0
 for n in range(8,121):
  for j in range(4,n//2+1):
   H=reduce(gcd,[comb(j,r)*comb(n-j,3-r) for r in range(4)])
   A=comb(n,3);L=A//H;actual=gcd(A,comb(n,j))
   assert actual%L==0
   assert n**6<108*j**3*L**4
   for p in primes:
    if p>n:break
    eh=el=0;Q=p
    while Q<=n:
     a=(3%Q>n%Q);b=(j%Q>n%Q)
     eh+=a and not b;el+=a and b;Q*=p
    assert vp(H,p)==eh and vp(L,p)==el;valuations+=1
   if n%4==0:
    assert vp(L,2)==vp(n,2)-min(vp(n,2),vp(j,2))
   if isqrt(n)**2==n:
    gb=gcd(n,j);beta=j//gb;dd=gcd(beta,n-1);X=isqrt(n)
    if n%4==0 and (X-1)%dd==0 or n%4==0 and (X+1)%dd==0:
     square_conditions+=1
   records+=1
 n,j=30,10;H=reduce(gcd,[comb(j,r)*comb(n-j,3-r) for r in range(4)]);L=comb(n,3)//H;G=gcd(comb(n,3),comb(n,j))
 assert (H,L,G)==(20,203,1015)
 cross={'n':n,'i':3,'j':j,'H':H,'L':L,'actual_gcd':G,'missed_prime':5,'first_layers':[5],'second_layers':[25]}
 n,j,p=56,11,3
 endpoint={'n':n,'i':3,'j':j,'p':p,'valuations':[vp(comb(n,3),p),vp(comb(n,j),p)]}
 assert endpoint['valuations']==[2,1]
 n=2**25;j=1801**2;gg=gcd(n,j);beta=j//gg;dd=gcd(beta,n-1)
 assert (gg,beta,dd)==(1,1801**2,1801)
 assert n==2*4096**2 and (4096-1)%1801 and (4096+1)%1801
 assert n%31==1 and j%31==9
 nonsquare=dict(n=n,j=j,beta=beta,d=dd,e=beta//dd,n_mod31=n%31,j_mod31=j%31,witness_prime=31)
 return dict(status='PASS',polynomial_identities=polys+['Bernoulli'],positive_integer_margins=margins,full_content_regression={'triples':records,'prime_valuation_comparisons':valuations},cross_layer_example=cross,p_equals_i_example=endpoint,non_square_obstruction=nonsquare)
if __name__=='__main__':
 out=Path(sys.argv[1]);obj=run();(out/'algebra.json').write_text(json.dumps(obj,indent=2,sort_keys=True)+'\n');print(json.dumps({'status':obj['status'],'identities':len(obj['polynomial_identities']),'regression':obj['full_content_regression']}))
