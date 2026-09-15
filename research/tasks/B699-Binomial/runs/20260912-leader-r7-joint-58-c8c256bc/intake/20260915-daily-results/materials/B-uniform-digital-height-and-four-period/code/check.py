"""Independent acceptance checker: rational long division + original integer windows.
Does not import discovery-side common.py or build.py.
"""
import json,sys,math,itertools,random
from pathlib import Path
from fractions import Fraction as F
root=Path(sys.argv[1])
def load(n):return json.loads((root/n).read_text())
def canon(a):return {i:F(v) for i,v in a.items() if v}
def plus(a,b):
 c=dict(a)
 for i,v in b.items():c[i]=c.get(i,F(0))+v
 return canon(c)
def prod(a,b):
 c={}
 for i,v in a.items():
  for j,u in b.items():c[i+j]=c.get(i+j,F(0))+v*u
 return canon(c)
def coeff(a,i):return a.get(i,F(0))
def constminus(a,c):return plus(a,{0:-F(c)})
def multiple(a,c):return canon({i:c*v for i,v in a.items()})
def remainder(a,k,A,r):
 a=canon(a)
 while a and max(a)>=k:
  e=max(a);v=a.pop(e);e-=k
  a[e]=a.get(e,F(0))+v*r/A;a=canon(a)
 return a
def evaluate(a,x):return sum((F(v)*x**i for i,v in a.items()),F(0))
def firstsecond(p,d,k,A):
 a=multiple(prod(p,constminus(p,d)),3)
 b=multiple(prod(prod(p,constminus(p,d)),constminus(p,2*d)),6)
 return remainder(a,k,F(A),1),remainder(b,k,F(A),2)
def basebound(v,w,k):
 assert w>=1 and 1<=k<=8**w
 assert v>=32*64**w
 t,s=divmod(v,k);a=t//8
 assert t>=24*k+12*w+24
 assert 6*a+6*k+3*w+4<=t-2
 return t,s,a
# Recreate the exact full bottom without trusting listed n/j or the discovery residual.
data=load('rank3_bottom.json');rows=data['rows']
assert data['k']==8 and data['exclusive_stop']==512 and data['step']==8
assert [a['x'] for a in rows]==list(range(8,512,8))
for a in rows:
 x=a['x'];n=x**8
 # P coefficients are generated from the repeating signed block, not a rational formula.
 p={1:1,2:-1,3:1,4:3,5:1,6:-1,7:1,8:3}
 j0=evaluate(p,x)/8;assert j0.denominator==1;j=int(j0)
 assert a['j']==j and 4<=j<n//2
 assert j*(j-1)%(n-1)==0
 assert 6*j*(j-1)*(j-2)%(n-2)!=0
 R=x*(3*x**3+x*x-x+1);D=8*(x**4-1)
 assert a['remainder']==6*R*(R-D)*(R-2*D)%(n-2)
# Independent algebra, and rational bound valid on the whole x>=16 tail.
R={1:1,2:-1,3:1,4:3};D={0:-8,4:8}
f=multiple(prod(prod(R,plus(R,multiple(D,-1))),plus(R,multiple(D,-2))),6)
r=remainder(f,8,F(1),2);expected=load('algebra.json')
assert [int(coeff(r,i)) for i in range(8)]==expected['remainder']
assert sum(abs(coeff(r,i))*F(1,16)**(7-i) for i in range(7))<48
assert remainder(prod(R,constminus(R,4)),4,F(1),1)=={}
# Recheck all pigeonhole witnesses with exact congruences and coefficient reconstruction.
compress=load('compression.json');realised=0;passednorm=0
for a in compress['symbolic']+compress['evaluated']:
 exps=a['exponents'];v=a['v'];w=len(exps);k=a['k'];t=a['t'];s=a['s'];D=a['shift'];l,u=a['pair']
 assert 0<=l<u<=8**w and k==u-l and v==k*t+s and 0<=s<k and D==t//8
 assert len(set(exps))==w and all(0<=e<v for e in exps)
 degrees=[]
 for e in exps:
  assert 8*((u*e)%v)//v==8*((l*e)%v)//v
  m=(u*e)//v-(l*e)//v;degrees.append(m)
  assert 0<=m<=k and 8*abs(k*e-v*m)<v
 assert degrees==a['degrees']
 ce=[e+D-m*t for e,m in zip(exps,degrees)]
 assert ce==a['coefficient_exponents'] and all(0<=c<=2*D+k for c in ce)
 if a in compress['symbolic']:basebound(v,w,k)
 else:
  realised+=1;x=2**t;A=2**s;d=2**D;p={}
  for m,e in zip(degrees,ce):p[m]=p.get(m,F(0))+2**e
  n=2**v;j=sum(2**e for e in exps)
  assert evaluate(p,x)==d*j
  r1,r2=firstsecond(p,d,k,A)
  limit=12*max(A,2)**3*(sum(abs(z) for z in p.values())+d)**3
  assert a['certificate_bound_holds']==(x>=4*limit)
  if x>=4*limit:
   passednorm+=1
   assert r1 or r2
   for r0,div in [(r1,n-1),(r2,n-2)]:
    if r0:assert 0<abs(evaluate(r0,x))<div
# All polynomial zero cases classified independently.
num=zero=0
for k in range(1,5):
 for cc in itertools.product(range(-2,3),repeat=k+1):
  p=canon(dict(enumerate(cc)))
  for d in (1,2,3):
   num+=1;r1,r2=firstsecond(p,d,k,1)
   if not r1 and not r2:
    zero+=1
    assert all(i in (0,k) for i in p)
    lead=coeff(p,k)/d;ct=coeff(p,0)/d
    assert (lead,ct) in {(0,0),(-1,2),(1,-1),(0,1),(2,-2),(1,0)}
assert num==load('classification.json')['polynomial_cases']
assert zero==load('classification.json')['simultaneous_zero_cases']
# Sign-free A=1 and positive general-A large-base lemma regression, including deg k.
rng=random.Random(369915);lemma_cases=0
for _ in range(240):
 k=rng.randint(1,5);d=rng.randint(1,5);A=rng.randint(1,7)
 cc=[rng.randrange(6) for _ in range(k+1)]
 if not any(cc):cc[0]=1
 p=canon(dict(enumerate(cc)));S=sum(abs(x) for x in cc);bound=48*max(A,2)**3*(S+d)**3
 x=d*(bound//d+1);n=A*x**k;J=evaluate(p,x)/d
 if J.denominator!=1 or not(4<=J<=n//2):continue
 j=int(J);a,b=firstsecond(p,d,k,A)
 assert a or b
 assert not(3*j*(j-1)%(n-1)==0 and 6*j*(j-1)*(j-2)%(n-2)==0)
 lemma_cases+=1
# Mixed cofactor progression: complete periods, not trial factorization.
period=3696;t0=198
primes=[97,257,23,29]
for p in primes:
 assert p>=23 and all(p%d for d in range(2,math.isqrt(p)+1))
 assert pow(2,period,p)==1
 x=pow(2,t0,p);beta=(3*x**3+x*x-x+1)*(x**4+1)%p;gamma=(8*pow(x,7,p)-beta)%p
 assert (beta if p in(97,257) else gamma)==0
# One actual example of large binary support and two large canonical cofactors.
t=198;x=2**t;n=x**8
j=(3*x**8+x**7-x**6+x**5+3*x**4+x**3-x*x+x)//8
g=math.gcd(n,j);beta=j//g;gamma=(n-j)//g
assert g==2**(t-3) and j.bit_count()==2*t+6
assert beta%97==beta%257==gamma%23==gamma%29==0
assert j*(j-1)%(n-1)==0 and 6*j*(j-1)*(j-2)%(n-2)!=0
# Full p=3 cancellation example; both weak windows do NOT imply NC3.
assert 3*11*10%55==0 and 6*11*10*9%54==0
assert math.comb(56,3)%9==0 and math.comb(56,11)%3==0
assert math.comb(56,11)%9!=0
out=dict(status='PASS',bottom=len(rows),classification_cases=num,zero_cases=zero,
         realised_compressions=realised,large_base_compression_certificates=passednorm,
         positive_template_regressions=lemma_cases,mixed_period=period,mixed_t0=t0,
         actual_mixed_j_popcount=j.bit_count(),g_bits=g.bit_length(),
         canonical_cofactor_lower_bounds=[97,23],publication_inputs_reverified=False,
         lean=False,independent_human_review=False)
(root/'independent_check.json').write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n')
print(json.dumps(out,ensure_ascii=False))
