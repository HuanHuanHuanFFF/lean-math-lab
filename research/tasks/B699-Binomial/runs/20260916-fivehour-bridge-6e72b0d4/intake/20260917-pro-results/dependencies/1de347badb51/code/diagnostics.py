"""Bounded diagnostics of new lemmas; not a substitute for their quantified proofs."""
from math import gcd,comb
from random import Random

def vp_fact(n,p):
 r=0
 while n:n//=p;r+=n
 return r

def vp_binomial(n,j,p):return vp_fact(n,p)-vp_fact(j,p)-vp_fact(n-j,p)

def factor(n):
 out=[];p=2
 while p*p<=n:
  if n%p==0:
   e=0
   while n%p==0:n//=p;e+=1
   out.append((p,e))
  p+=1
 if n>1:out.append((n,1))
 return out

def multiply(a,b):
 c=[0]*(len(a)+len(b)-1)
 for i,x in enumerate(a):
  for j,y in enumerate(b):c[i+j]+=x*y
 return c

def evaluate(a,x):
 v=0
 for c in reversed(a):v=v*x+c
 return v

def run():
 pair_count=0;div_checks=0;nonzero=0;nontrivial=0
 facts={n:factor(n) for n in range(1,181)}
 for n in range(20,181):
  for j in range(10,n//2+1):
   pair_count+=1;J=j*(n-j)
   for r in range(3,9):
    D=1
    for p,e in facts[n-r]:
     if p>=11 and vp_binomial(n,j,p)==0:D*=p**e
    if D==1:continue
    nontrivial+=1
    values=[[],[],[]]
    for s in range(r+1):
     X=s*(r-s)
     values[0].append(X-J)
     values[1].append((r-n)*(r+2)+X-J)
     values[2].append(X*X-J*J+r-n)
    for row in values:
     z=1
     for v in row:z*=v
     assert z%D==0
     div_checks+=1;nonzero+=bool(z)
 layers=0;upper_nonzero=0;zero=0
 for p in [11,13,17,19,23]:
  for e in range(1,9):
   Q=p**e
   for A in [2,5,p+1]:
    for r in range(3,9):
     n=Q*A+r
     for h in sorted(set([1,2,A//2])):
      for s in range(r+1):
       j=Q*h+s
       if not 10<=j<=n//2:continue
       v=vp_binomial(n,j,p)
       v2=vp_binomial(A,h,p)+vp_binomial(r,s,p)
       assert v==v2 and j%Q==s
       if v==0:zero+=1
       else:upper_nonzero+=1
       layers+=1
 rng=Random(20260916);mignotte=0;leading=0
 for _ in range(300):
  a=[rng.randrange(-5,6) for i in range(rng.randrange(2,9))]
  b=[rng.randrange(-5,6) for i in range(rng.randrange(2,9))]
  if a[-1]==0:a[-1]=1
  if b[-1]==0:b[-1]=-1
  c=multiply(a,b)
  assert sum(abs(v) for v in a)**2<=4**(len(a)-1)*sum(v*v for v in c)
  mignotte+=1
  T=a;M=sum(abs(v) for v in T);n=2*M+3;d=len(T)-1
  assert 2*abs(evaluate(T,n))>=n**d
  assert abs(evaluate(T,n))<=M*n**d
  leading+=1
 # A(N)=N+a, B(N)=N^2+b. Their resultant is a^2+b.
 res_checks=0
 for a in range(1,10):
  for b in range(1,15):
   R=a*a+b
   for n in range(1,81):
    if (n*n+b)%(n+a)==0:
     assert R%(n+a)==0;res_checks+=1
 return dict(status='PASS_NEW_BOUNDED_DIAGNOSTICS',legal_pairs=pair_count,nontrivial_avoiding_rows=nontrivial,source_product_divisibility_checks=div_checks,nonzero_product_checks=nonzero,complete_prime_power_layers=layers,zero_upper_valuation=zero,nonzero_upper_carries=upper_nonzero,maximum_tested_exponent=8,integer_factor_bound_tests=mignotte,leading_term_bound_tests=leading,resultant_divisibility_tests=res_checks,
             boundary='finite diagnostics; not actual big kernels and not NC9 counterexamples')

if __name__=='__main__':
 import json
 print(json.dumps(run(),indent=2))
