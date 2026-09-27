#!/usr/bin/env python3
"""Exact R6 fifth-source consumer. NO_HIT is not a proof of noCommon."""
from __future__ import annotations
import argparse,json,math

def valuation(x,p):
 if not x:raise ValueError('zero valuation is not finite')
 e=0;x=abs(x)
 while x%p==0:x//=p;e+=1
 return e

def check(n:int,j:int,p:int)->dict:
 if not(7<=j<=n//2):raise ValueError('require 7 <= j <= floor(n/2)')
 if p<7 or any(p%d==0 for d in range(2,math.isqrt(p)+1)):
  raise ValueError('p must be a proved prime >=7; this CLI uses full trial division')
 N=n-1;J=j*(n-j)
 if J%N:raise ValueError('the complete first-source integer N|jk is absent')
 if (n-5)%p:raise ValueError('p does not occur in the actual fifth source')
 U=J//N;e=valuation(n-5,p);P=p**e
 if j%P==1:sigma=j
 elif (n-j)%P==1:sigma=n-j
 else:raise ValueError('the actual complete fifth-source near slot is absent')
 V=n-5*U
 if not V:return {'status':'OUTSIDE_FINITE_VALUATION_INTERFACE','J5':0}
 f=valuation(V,p)-e
 if f<1:return {'status':'NO_CONTACT','e':e,'f':f}
 m=(n-5)//P;b=4*m*pow(15,-1,p)%p;mod=p
 for _ in range(1,f):
  value=4*m-15*b+P*(m*m-5*m*b+5*b*b)
  deriv=-15+P*(-5*m+10*b)
  b+=mod*((-value//mod)*pow(deriv,-1,p)%p);mod*=p
 actual=(sigma-1)//P
 assert actual%mod==b
 conflicts=[r for r in range(f) if (b//p**r)%p>(m//p**r)%p]
 return {'status':'COMMON6_WITNESS' if conflicts else 'NO_HIT', 'n':n,'j':j,'prime':p,'source_exponent':e,'auxiliary_exponent':f,'root_modulus':mod,'root':b,'m_modulus_residue':m%mod,'conflict_digit_indices':conflicts,'original_carry_layers':[e+r+1 for r in conflicts],'scope_warning':'NO_HIT does not establish NC6 or membership in B-RES10'}
if __name__=='__main__':
 a=argparse.ArgumentParser();a.add_argument('n',type=int);a.add_argument('j',type=int);a.add_argument('p',type=int);x=a.parse_args()
 try:print(json.dumps(check(x.n,x.j,x.p),indent=2))
 except ValueError as e:a.error(str(e))
