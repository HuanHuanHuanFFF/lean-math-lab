#!/usr/bin/env python3
"""Separated R6 certificate checker; never imports discover.py."""
from __future__ import annotations
import argparse, json, math
from pathlib import Path

def v(x,p):
 assert x!=0
 x=abs(x);r=0
 while x%p==0:x//=p;r+=1
 return r

def isprime(p):return p>=2 and all(p%d for d in range(2,math.isqrt(p)+1))

def carries(n,j,p):
 k=n-j; carry=0; answer=0
 while n or j or k or carry:
  s=j%p+k%p+carry
  carry=s//p;answer+=carry
  n//=p;j//=p;k//=p
 return answer

def check_original(a,full=False):
 n,j,p=a['n'],a['j'],a['p'];k=n-j;N=n-1
 assert isprime(p) and p>=7 and 7<=j<=n//2
 assert j*k%N==0 and a['U']==j*k//N
 U=a['U'];e=v(n-5,p);P=p**e;J=n-5*U;f=v(J,p)-e
 assert e==a['e'] and f==a['f'] and f>=1 and a['J']==J
 sigma=j if (j-1)%P==0 else k
 assert sigma%P==1 and (n-sigma)%P==4
 b=(sigma-1)//P;d=(n-5)//P
 assert b==a['b'] and d==a['d'] and sigma==a['sigma']
 Phi=4*d-15*b+P*(d*d-5*d*b+5*b*b)
 assert N*J==P*Phi and v(Phi,p)==f
 # The discriminant is 5*(n*n+4*n). This checker instead verifies the actual
 # original sigma and its digits; it does not import the discovery root solver.
 hits=[r for r in range(f) if (b//p**r)%p>(d//p**r)%p]
 assert a['hit_levels']==hits
 assert carries(n,j,p)==carries(d,b,p)==a['binomj_v']
 den=math.factorial(6);top=math.prod(range(n-5,n+1));bn6=top//den
 assert v(bn6,p)==a['binom6_v']==e
 if full:
  bn=math.comb(n,j)
  assert v(bn,p)==a['binomj_v']
 assert not hits or a['binomj_v']>=1
 q=n-5;S=1
 for small in [2,3,5]:
  while q%small==0:q//=small;S*=small
 assert a['q5']==q and a['S235']==S
 near=(U-1)%q==0
 assert a['all_q5_near']==near
 assert a['R5_broad']==((U-1)//q if near else None)
 assert a['g']==math.gcd(n,j) and a['alpha']==n//a['g']
 assert a['ten_U_square']==(math.isqrt(10*U)**2==10*U)
 assert a['global_current_candidate'] is False

def check_local(a):
 p,e,f=a['p'],a['e'],a['f'];h=a['precision'];mod=p**h;P=p**e
 assert isprime(p) and p>=31 and h>2*e+f
 assert a['model_claim']=='prime_local_only'
 for key in ['global_original_candidate','global_unitary_factorization_verified','global_central_gcd_verified','all_original_sources_global_verified']:
  assert a[key] is False
 alpha=3**a['a'];S=5**a['E'];t=a['t'];A=3**(2*t);B=3**(a['a']-t)
 assert a['alpha']==alpha and a['S']==S and a['B']==B
 assert a['a']>=41 and a['E']>=27 and 0<=t<a['a']
 # Displayed residues themselves cannot be canonical natural-number inputs.
 assert a['n']<alpha
 n,g,c,q,U,z,delta,beta,j,R,W,T,Lam,K=[a[k] for k in ['n','g','c','q','U','z','delta','beta','j','R','W','T','Lambda','K_signed']]
 C=a['C_marker'];assert C==7
 assert all(0<=y<mod for y in [n,g,c,q,U,z,delta,beta,j,R,W,T,Lam,K])
 eqs=[n-g*alpha,g-10*3**t*c,n-10*A*c*B,S*q-n+5,q*R-U+1,U-1000*A*c*c*z*z,
       delta*delta+40*(n-1)*z*z-alpha*alpha,delta+2*beta-alpha,j-g*beta,j*(n-j)-(n-1)*U,
       S-5*R-10*A*c*W,W+B*R-100*S*c*z*z,q*W+500*c*z*z-B,
       K-c*W,10*A*K-S+5*R,Lam-48*R+11*S,3*C*T-alpha*alpha+120*z*z]
 assert all(x%mod==0 for x in eqs),[i for i,x in enumerate(eqs) if x%mod]
 assert all(x%p for x in [g,c,z,delta,R])
 assert min(v(c,p),v(W,p))==0 # prime-local unitary allocation ONLY
 d=a['d_prefix'];bb=a['b_prefix'];expect=a['root_prefix']
 assert bb==expect and 0<=bb<p**f and 0<d<p**f and d%p
 if a['kind']=='first':
  assert pow(3,(p-1)//2,p)==p-1 and pow(10,(p-1)//2,p)==p-1
  assert v(n-1,p)==e and v(T,p)==f and f>e and v(Lam,p)==e and W%p and q%p
  assert (n-1)//P%(p**f)==d and j%P==0
  assert j//P%(p**f)==bb
  Q=12*bb*(1+P*d-P*bb)-d*(1+P*d)**2
  assert Q%(p**f)==0
 else:
  assert a['kind']=='fifth' and pow(10,(p-1)//2,p)==1
  assert v(n-5,p)==e and v(q,p)==e and v(W,p)==f and T%p
  assert v((B-500*c*z*z)%mod,p)==e+f
  assert (n-5)//P%(p**f)==d and j%P==1
  assert (j-1)//P%(p**f)==bb
  Q=4*d-15*bb+P*(d*d-5*d*bb+5*bb*bb)
  assert Q%(p**f)==0
 dd=[d//p**r%p for r in range(f)];bd=[bb//p**r%p for r in range(f)]
 assert a['digits_d']==dd and a['digits_b']==bd and all(x<=y for x,y in zip(bd,dd))

def add(a,b):
 c=a.copy()
 for m,k in b.items():
  c[m]=c.get(m,0)+k
  if not c[m]:del c[m]
 return c

def neg(a):return {m:-k for m,k in a.items()}
def mul(a,b):
 c={}
 for u,x in a.items():
  for w,y in b.items():
   m=tuple(i+j for i,j in zip(u,w));c[m]=c.get(m,0)+x*y
 return {m:k for m,k in c.items() if k}
def scalar(a,s):return {m:k*s for m,k in a.items() if k*s}

def symbolic_check():
 one={(0,0,0):1};P={(1,0,0):1};d={(0,1,0):1};b={(0,0,1):1}
 n=add(scalar(one,5),mul(P,d));N=add(n,neg(one));sig=add(one,mul(P,b));other=add(n,neg(sig))
 lhs=add(mul(n,N),neg(scalar(mul(sig,other),5)))
 Phi=add(add(scalar(d,4),scalar(b,-15)),mul(P,add(add(mul(d,d),scalar(mul(d,b),-5)),scalar(mul(b,b),5))))
 assert lhs==mul(P,Phi)
 # Universal family Z_p has p^2 times a p-unit at x=3p-1 modp^3.
 for p in range(17,150):
  if isprime(p):
   x=3*p-1;Z=1+3*p*x+p*p*x*x+x
   assert Z==p*p*(9*p*p-6*p+10) and v(Z,p)==2

def main(certdir:Path):
 load=lambda n:json.loads((certdir/n).read_text())
 a=load('source_separation.json');table=a['slots']
 assert a['source_prime_min']==7 and a['not_full_B699'] is True
 assert table==[dict(r=r,b=b,value=r*(r-1)-5*b*(r-b)) for r in [2,3,4] for b in range(r+1)]
 for row in table:
  x=abs(row['value']);assert x>0
  for p in [2,3,5]:
   while x%p==0:x//=p
  assert x==1
 a=load('fifth_consumers.json');assert a['all_current_models']==0
 for x in a['inputs']:check_original(x,True)
 a=load('infinite_regression.json');assert a['historical_net_claim']==0 and a['current_domain'] is False
 assert len(a['examples'])==27
 for x in a['examples']:
  p,r=x['p'],x['r'];y=4+p*(3*p-1+p**3*r)
  assert x['x']==3*p-1+p**3*r and x['y']==y
  assert x['n']==p*y*y+y+1 and x['j']==p*y+1
  check_original(x)
  assert x['g']==1 and x['n']%2==1 and x['e']==1 and x['f']==2
  assert x['hit_levels']==[1]
 a=load('joint_local_lifts.json');assert a['original_models']==0 and a['new_survivor_count_claim'] is False and len(a['packets'])==18
 for x in a['packets']:check_local(x)
 a=load('proof_obligations.json')
 assert a['repeated_historical_theorems'] is False and len(a['scope_warnings'])==5
 symbolic_check()
 print('PASS: 5 certificate files; 12 source slots; 3 actual inputs; 27 family instances; 18 joint local lifts; coefficientwise identity',flush=True)

if __name__=='__main__':
 p=argparse.ArgumentParser();p.add_argument('--certificates',type=Path,default=Path(__file__).resolve().parents[1]/'certificates');args=p.parse_args();main(args.certificates)
