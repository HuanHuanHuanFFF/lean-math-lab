#!/usr/bin/env python3
"""Build exact R6 certificates. Python standard library only; no network."""
from __future__ import annotations
import argparse, json, math
from pathlib import Path

def vp(x:int,p:int)->int:
 if x==0: raise ValueError('valuation of zero not finite')
 x=abs(x); e=0
 while x%p==0:x//=p;e+=1
 return e

def sqrt_lift(x:int,p:int,h:int,start:int|None=None)->int:
 if start is None:
  start=next(r for r in range(1,p) if (r*r-x)%p==0)
 r=start%p; mod=p
 assert (r*r-x)%p==0 and r
 for _ in range(1,h):
  r += mod*(((x-r*r)//mod)*pow(2*r,-1,p)%p)
  mod*=p
 return r%mod

def poly(kind,p,e,d,b):
 P=p**e
 if kind=='first':return 12*b*(1+P*d-P*b)-d*(1+P*d)**2
 return 4*d-15*b+P*(d*d-5*d*b+5*b*b)

def root_lift(kind,p,e,d,h):
 P=p**e
 b=(d*pow(12,-1,p) if kind=='first' else 4*d*pow(15,-1,p))%p
 m=p
 for _ in range(1,h):
  v=poly(kind,p,e,d,b)
  der=(12*(1+P*d-2*P*b) if kind=='first' else -15+P*(-5*d+10*b))
  b += m*((-(v//m))*pow(der,-1,p)%p)
  m*=p
 return b

def passing_prefix(kind,p,e,f):
 d=12 if kind=='first' else 15
 assert root_lift(kind,p,e,d,1)<=d
 for h in range(2,f+1):
  m=p**(h-1)
  for digit in range(p):
   cand=d+digit*m; b=root_lift(kind,p,e,cand,h)
   if b//m<=digit:
    d=cand; break
  else:raise AssertionError('no selected child')
 return d

def local_packet(kind,p,e,f,a=41,E=27,t=0):
 """Finite certificates of p-adic solutions, NOT natural-number inputs."""
 h=e+f+8; work=h+e+2; mod=p**work; outmod=p**h
 A=3**(2*t); alpha=3**a; B=3**(a-t); S=5**E
 d=passing_prefix(kind,p,e,f); P=p**e
 n=(1+P*d if kind=='first' else 5+P*d)
 g=n*pow(alpha,-1,mod)%mod
 c=g*pow(10*3**t,-1,mod)%mod
 N=n-1
 if kind=='first':
  F=p**f
  U=(n*n-F)*pow(12,-1,mod)%mod
  q=(n-5)*pow(S,-1,mod)%mod
  z2=U*pow(10*g*g,-1,mod)%mod
  z=sqrt_lift(z2,p,work)
  delta=sqrt_lift((alpha*alpha-40*N*z*z)%mod,p,work,alpha%p)
  R=(U-1)*pow(q,-1,mod)%mod
  W=(B-500*c*z*z)*pow(q,-1,mod)%mod
 else:
  q=(n-5)*pow(S,-1,mod)%mod
  W=p**f
  U=(n-g*3**t*q*W)*pow(5,-1,mod)%mod
  z2=U*pow(10*g*g,-1,mod)%mod
  z=sqrt_lift(z2,p,work)
  delta=sqrt_lift((alpha*alpha-40*N*z*z)%mod,p,work,3*alpha*pow(5,-1,p)%p)
  assert (U-1)%P==0
  R=((U-1)//P)*pow(q//P,-1,p**(work-e))%(p**(work-e))
 beta=(alpha-delta)*pow(2,-1,mod)%mod
 j=g*beta%mod
 b=(j//P if kind=='first' else (j-1)//P)
 assert (j if kind=='first' else j-1)%P==0
 C=7 # A fixed p-unit marker only; NOT recovered as the global central gcd.
 T=(alpha*alpha-120*z*z)*pow(3*C,-1,mod)%mod
 Lam=(48*R-11*S)%mod
 data={name:val%outmod for name,val in dict(n=n,g=g,c=c,q=q,U=U,z=z,delta=delta,beta=beta,j=j,R=R,W=W,T=T,Lambda=Lam,K_signed=c*W).items()}
 data.update(dict(kind=kind,p=p,e=e,f=f,a=a,E=E,t=t,precision=h,alpha=alpha,S=S,B=B,C_marker=C,d_prefix=d,b_prefix=b%(p**f),root_prefix=root_lift(kind,p,e,d,f),digits_d=[d//p**r%p for r in range(f)],digits_b=[b//p**r%p for r in range(f)],model_claim='prime_local_only',global_original_candidate=False,global_unitary_factorization_verified=False,global_central_gcd_verified=False,all_original_sources_global_verified=False))
 assert data['b_prefix']==data['root_prefix']
 assert all(x<=y for x,y in zip(data['digits_b'],data['digits_d']))
 return data

def valuation_binom(n,j,p):
 out=0; P=p
 while P<=n:
  out+=n//P-j//P-(n-j)//P;P*=p
 return out

def rough(x):
 S=1
 for p in (2,3,5):
  while x%p==0:x//=p;S*=p
 return x,S

def original(n,j,p):
 N=n-1;k=n-j
 assert j*k%N==0
 U=j*k//N;J=n-5*U;e=vp(n-5,p);f=vp(J,p)-e;P=p**e
 assert f>=1
 sigma=j if (j-1)%P==0 else k
 assert (sigma-1)%P==0
 d=(n-5)//P;b=(sigma-1)//P
 q,S=rough(n-5); allnear=(U-1)%q==0
 R=(U-1)//q if allnear else None
 g=math.gcd(n,j)
 return dict(n=n,j=j,p=p,N=N,U=U,J=J,e=e,f=f,d=d,b=b,sigma=sigma,q5=q,S235=S,R5_broad=R,all_q5_near=allnear,g=g,alpha=n//g,hit_levels=[r for r in range(f) if b//p**r%p>d//p**r%p],binom6_v=valuation_binom(n,6,p),binomj_v=valuation_binom(n,j,p),global_current_candidate=False,ten_U_square=math.isqrt(10*U)**2==10*U)

def main(out:Path):
 out.mkdir(parents=True,exist_ok=True)
 def save(name,obj):
  (out/name).write_text(json.dumps(obj,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
  print('BUILT',name,flush=True)
 # The integral-polynomial identities are also checked coefficientwise by accept.py.
 table=[dict(r=r,b=b,value=r*(r-1)-5*b*(r-b)) for r in [2,3,4] for b in range(r+1)]
 save('source_separation.json',dict(slots=table,source_prime_min=7,conclusion='gcd(K,q2*q3*q4)=1 under all source windows',not_full_B699=True))
 data=[original(15749,5208,41),original(412805,137816,43),original(3589,1404,7)]
 save('fifth_consumers.json',dict(minimal_scope='actual integers; N|jk; one actual p^e|n-5 near slot; vp(n-5U)>e',inputs=data,all_current_models=0))
 examples=[]
 for p in [17,19,23,29,31,37,41,43,101]:
  for r in [0,1,7]:
   x=3*p-1+p**3*r; y=4+p*x
   n=p*y*y+y+1;j=p*y+1
   row=original(n,j,p);row.update(x=x,y=y,r=r)
   examples.append(row)
 save('infinite_regression.json',dict(quantifier='all primes p>=17 and integers r>=0',formula='x=3p-1+p^3r; y=4+px; n=py^2+y+1; j=py+1',examples=examples,historical_net_claim=0,current_domain=False))
 packets=[]
 for kind,ps in [('first',[101,103,113]),('fifth',[31,41,43])]:
  for p in ps:
   for e,f in [(1,2),(1,4),(2,5)]:packets.append(local_packet(kind,p,e,f))
 save('joint_local_lifts.json',dict(scope='p-adic solvability of the joint scalar/norm system only; no global original model',packets=packets,original_models=0,new_survivor_count_claim=False))
 save('proof_obligations.json',dict(identity_1='n(n-1)-5jk=P*(4d-15b+P*(d^2-5db+5b^2))',identity_2='q5*W+500*c*z^2=3^(a-t) implies vp(3^(a-t)-500*c*z^2)=vp(q5)+vp(W)',scope_warnings=['I is supported on N, not on q5','q5-W contact is not a negative-T return','global unitary factorization is not established by local units','family is odd with true gcd=1','no global net reduction'],repeated_historical_theorems=False))

if __name__=='__main__':
 ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,default=Path(__file__).resolve().parents[1]/'certificates');a=ap.parse_args();main(a.out)
