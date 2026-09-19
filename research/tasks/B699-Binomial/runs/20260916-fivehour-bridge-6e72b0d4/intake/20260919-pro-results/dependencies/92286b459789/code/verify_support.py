#!/usr/bin/env python3
"""Exact all-parameter tangency, exceptional curves and finite-field proofs.
All routines use Python's standard library. No CAS or discovery module imported.
"""
from __future__ import annotations
import json,math
from fractions import Fraction as Q
from pathlib import Path
from collections import defaultdict
from verify_geometry import Model,need,write,add,mul,prime,bernstein,det_mod
ROOT=Path(__file__).resolve().parents[1]

def diagonal(P,r):
 s=r//2;out=defaultdict(Q);D=max(a+b for a,b in P)
 # Linear change from ordinary Taylor (u,v) to (u,t), v=t+s*u.
 for i in range(D+1):
  for j in range(max(b for a,b in P)+1):
   c=Model.jet(P,(r,s*s,i,j))
   if not c:continue
   for h in range(j+1):out[i+j-h,h]+=c*math.comb(j,h)*s**(j-h)
 return {k:v for k,v in out.items() if v}

def tangent_family(B,D,r,m,excluded=()):
 b=diagonal(B,r);d=diagonal(D,r);keys=set(b)|set(d);w=min(i+2*j for i,j in keys)
 grade=[(k,b.get(k,0),d.get(k,0)) for k in sorted(keys) if k[0]+2*k[1]==w]
 vals={-a/c for _,a,c in grade if c};exc=None
 if len(vals)==1:
  v=next(iter(vals))
  if all(a+v*c==0 for _,a,c in grade):exc=v
 upper=w;special=None
 if exc is not None:
  ev=add(b,{k:exc*v for k,v in d.items()});need(ev,'zero polynomial on special parameter')
  w1=min(i+2*j for i,j in ev);special={'parameter':[exc.numerator,exc.denominator],'weighted_order':w1,'excluded_reducible_parameter':exc in excluded}
  if exc not in excluded:upper=max(upper,w1)
 kap=2*m-upper;need(kap>=0,'negative ordinary-versus-weighted gap')
 return {'r':r,'ordinary_center_order':m,'generic_weighted_order':w,'leading_grade':[[list(k),[Q(a).numerator,Q(a).denominator],[Q(c).numerator,Q(c).denominator]] for k,a,c in grade],'special':special,'uniform_kappa_lower':kap}

def trim(a):
 while a and a[-1]==0:a.pop()
 return a

def rem(a,f,p):
 a=trim([x%p for x in a]);iv=pow(f[-1],-1,p)
 while len(a)>=len(f):
  k=len(a)-len(f);c=a[-1]*iv%p
  for i,b in enumerate(f):a[k+i]=(a[k+i]-c*b)%p
  trim(a)
 return a

def pmul(a,b,f,p):
 c=[0]*(max(0,len(a)+len(b)-1))
 for i,x in enumerate(a):
  for j,y in enumerate(b):c[i+j]=(c[i+j]+x*y)%p
 return rem(c,f,p)

def ppow(a,n,f,p):
 out=[1]
 while n:
  if n&1:out=pmul(out,a,f,p)
  a=pmul(a,a,f,p);n//=2
 return out

def gcd(a,b,p):
 while b:a,b=b,rem(a,b,p)
 if not a:return []
 z=pow(a[-1],-1,p);return [(x*z)%p for x in a]

def irreducible_check(coeff,p):
 need(prime(p),'irreducibility modulus not prime');f=trim([x%p for x in coeff]);q=len(coeff)-1
 need(len(f)==q+1,'specialization lost degree');divisors=[l for l in range(2,q+1) if q%l==0 and prime(l)]
 val=[0,1];powers=[]
 for i in range(1,q+1):
  val=ppow(val,p,f,p);powers.append(val)
  if any(i==q//l for l in divisors):
   g=list(val)+[0]*max(0,2-len(val));g[1]=(g[1]-1)%p;need(gcd(f,trim(g),p)==[1],'Rabin factor gcd not one')
 need(val==[0,1],'Rabin Frobenius identity failed')
 return {'prime':p,'degree':q,'coefficients_mod_p':f,'frobenius_remainders':powers,'gcd_exponents':[q//l for l in divisors]}

def run(out,geometry_out):
 W={(0,0):1};P4={(0,0):1}
 for r in range(3,9):W=mul(W,{(1,0):1,(0,0):-r})
 for t in range(4):P4=mul(P4,{(0,1):1,(1,0):-t,(0,0):t*t})
 Q4=[{(2,0):-1,(1,0):6,(0,1):1,(0,0):-11}, {(2,0):1,(1,0):-8,(0,0):15}, {(2,0):1,(1,0):-7,(0,0):12}]
 nf23=[]
 for i,Q4i in enumerate(Q4):
  nf23.append([tangent_family(P4,mul(W,Q4i),r,m,excluded=(Q(0),)) for r,m in zip((4,6,8),(1,1,0))])
 need([[x['uniform_kappa_lower'] for x in row] for row in nf23]==[[1,1,0],[1,1,0],[0,1,0]],'NF23 tangent signature')
 P5=mul(P4,{(0,1):1,(1,0):-4,(0,0):16})
 Q5={(4,0):1,(3,0):-10,(2,0):35,(1,0):-50,(0,0):24,(2,1):-3,(1,1):20,(0,1):-35,(0,2):1}
 nf29=[tangent_family(P5,mul(W,Q5),r,1,excluded=(Q(0),)) for r in (4,6,8)]
 need([x['uniform_kappa_lower'] for x in nf29]==[1,1,1],'NF29 tangent signature')
 a=json.loads((geometry_out/'nf53_front_accepted.json').read_text());fam=next(x for x in a['exception_details'] if x['kind']=='one_rational_parameter_boundary')
 B={(a,b):Q(c,d) for a,b,c,d in fam['base_terms']};D={(a,b):Q(c,d) for a,b,c,d in fam['direction_terms']}
 nf53=[tangent_family(B,D,r,m) for r,m in zip((4,6,8),(3,2,2))]
 need([x['uniform_kappa_lower'] for x in nf53]==[2,1,1],'NF53 all-parameter tangent lower bound')
 data={'NF23_frozen_families_new_tangency':nf23,'NF29_frozen_family_new_tangency':nf29,'NF53_new_family_new_tangency':nf53}
 write(out/'tangent_signatures.json',data)
 irr=[]
 for q,index,p in ((7,365,101),(8,1305,23)):
  src=json.loads((geometry_out/f'nf{6*q-1}_front_accepted.json').read_text());E=next(x for x in src['exception_details'] if x['index']==index)
  P={(a,b):v for a,b,v in E['terms']};need(all(a==0 for a,b in P if b==q),'leading coefficient not constant')
  coeff=[P.get((0,i),0) for i in range(q+1)];ans=irreducible_check(coeff,p);ans.update(q=q,index=index,N=0,integer_specialization=coeff)
  irr.append(ans)
 write(out/'irreducible_exception_certificates.json',irr)
 # Direct rational geometric point in the UNBOUNDED NF53 family. Its parameter
 # is chosen afterwards, and does NOT assert membership in the fixed G or NC9.
 n,j=400,10;J=j*(n-j)
 value=lambda P:sum(c*n**a*J**b for (a,b),c in P.items())
 dv=value(D);need(dv!=0,'boundary example has zero denominator');t=-value(B)/dv
 need(value(add(B,{k:t*v for k,v in D.items()}))==0,'rational family boundary point')
 from math import comb
 common=[p for p in (11,13,17,19,23,29,31,37,43,47,53,59,61,67,71,73,79,83,89,97,101,131,197,199,397) if prime(p) and comb(n,9)%p==0 and comb(n,j)%p==0]
 need(common,'not verified as an original NON-counterexample')
 write(out/'nf53_actual_point_boundary.json',{'status':'GEOMETRIC_FAMILY_POINT_WITH_ACTUAL_COMMON_PRIME_NOT_NC9','n':n,'j':j,'J':J,'parameter':[t.numerator,t.denominator],'common_prime_witness':common[0]})
 print('SUPPORT all-parameter tangency PASS; two exact Q-irreducible exceptions PASS; NF53 geometric non-counterexample PASS',flush=True)
 return {'status':'PASS_NEW_TANGENCY_AND_EXCEPTION_CERTIFICATES','uniform_signatures':[[1,1,0],[1,1,0],[0,1,0],[1,1,1],[2,1,1]],'irreducible_fixed_exceptions':2}
