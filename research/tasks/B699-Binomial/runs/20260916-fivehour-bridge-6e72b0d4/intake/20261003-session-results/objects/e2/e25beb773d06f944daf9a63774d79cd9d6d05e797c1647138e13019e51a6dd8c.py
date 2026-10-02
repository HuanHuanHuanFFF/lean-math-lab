"""Exact all-parameter S5 source audit. No lambda sampling.
Method 1: multiply the five defining factors in local coordinates, with lam degree.
Method 2: expand global factors, then binomial-translate each monomial.
Both over Z, retaining every coefficient, including all exceptional possibilities.
"""
from pathlib import Path
from math import comb
import json,hashlib
ROOT=Path(__file__).resolve().parents[1]
def add(a,b):
 c=a.copy()
 for k,v in b.items(): c[k]=c.get(k,0)+v
 return {k:v for k,v in c.items() if v}
def mul(a,b):
 c={}
 for (i,j,l),x in a.items():
  for (u,v,m),y in b.items():
   k=(i+u,j+v,l+m);c[k]=c.get(k,0)+x*y
 return {k:v for k,v in c.items() if v}
def product(fs):
 p={(0,0,0):1}
 for f in fs:p=mul(p,f)
 return p
# Coordinates global (N,X,lambda) and local (u,t,lambda).
def global_poly():
 p=product([{(0,1,0):1,(1,0,0):-a,(0,0,0):a*a} for a in range(4)])
 b=product([{(1,0,0):1,(0,0,0):-a} for a in [3,4,*range(3,9)]])
 return add(p,{(i,j,l+1):v for (i,j,l),v in b.items()})
H=global_poly()
def direct(r,s,w):
 x=s*(r-s);slope=s if w==2 else 0
 p=product([{(0,1,0):1,(1,0,0):slope-a,(0,0,0):x-a*r+a*a} for a in range(4)])
 b=product([{(1,0,0):1,(0,0,0):r-a} for a in [3,4,*range(3,9)]])
 return add(p,{(i,j,l+1):v for (i,j,l),v in b.items()})
def translate(r,s,w):
 x=s*(r-s);slope=s if w==2 else 0;c={}
 for (n,k,l),z in H.items():
  for a in range(n+1):
   v=z*comb(n,a)*r**(n-a)
   for b in range(k+1):
    for d in range(k-b+1):
     # X^k=(x+slope*u+t)^k
     vv=v*comb(k,b)*comb(k-b,d)*x**(k-b-d)*slope**d
     key=(a+d,b,l);c[key]=c.get(key,0)+vv
 return {k:v for k,v in c.items() if v}
adopt=json.loads((ROOT/'sources/factor_source_bounds_adopted.json').read_text())['S5']
rows=[]
for r in range(3,9):
 for s in range(r//2+1):
  w=2 if r==2*s else 1
  A=direct(r,s,w);B=translate(r,s,w);assert A==B
  bound=next(p['upper_order'] for p in adopt['points'] if (p['r'],p['s'])==(r,s))
  keys=sorted({(a,b) for a,b,l in A});jets=[]
  for a,b in keys:
   c0=A.get((a,b,0),0);c1=A.get((a,b,1),0)
   if a+w*b<=bound:jets.append([a,b,c0,c1])
  assert all(a+w*b>=bound for a,b,c0,c1 in jets)
  # A fixed nonzero constant or nonzero multiple of lam proves exact order
  witnesses=[v for v in jets if (v[2]!=0 and v[3]==0) or (v[2]==0 and v[3]!=0)]
  assert witnesses, (r,s)
  witnesses.sort(key=lambda v:(v[3]!=0,v[0],v[1]))
  win=witnesses[0]
  rows.append({'r':r,'s':s,'weight_t':w,'upper_order':bound,'exact_for_all_nonzero_rational_lambda':True,'jets_at_or_below_bound':jets,'uniform_noncancellation_witness':win,'full_local_coefficients':[[*k,v] for k,v in sorted(A.items())]})
assert len(rows)==21
assert max(j for i,j,l in H)==4 and H[0,4,0]==1
assert max(i+2*j for i,j,l in H)==8
result={'family':'S5','definition':'prod_(a=0..3)(X-a*N+a^2)+lambda*(N-3)*(N-4)*prod_(r=3..8)(N-r)', 'coefficient_field':'Q', 'parameter_domain':'all lambda in Q except 0','lambda_zero':'product of four nonconstant linear factors; excluded by Q-irreducibility of a carryable factor','lambda_infinity':'not in affine rational parameter domain; no denominator vanishing in this polynomial family','other_degenerations':'none needed for source upper bounds: each leading local form contains a constant nonzero or lambda-only coefficient; reducible nonzero members also satisfy the bounds','monic_X_degree':4,'weighted_degree':8,'all_21_orders_exact':True,'full_polynomial_equal_under_two_exact_constructions':True,'adopted_bounds_match':True,'global_coefficients':[[*k,v] for k,v in sorted(H.items())], 'points':rows}
O=ROOT/'certificates';O.mkdir(exist_ok=True)
(O/'S5_ALL_PARAMETER_AUDIT.json').write_text(json.dumps(result,indent=2)+'\n')
print('PASS all 21 exact all-parameter source orders; two integer constructions agree')
for r in range(3,9):print(r,[p['upper_order'] for p in rows if p['r']==r])
