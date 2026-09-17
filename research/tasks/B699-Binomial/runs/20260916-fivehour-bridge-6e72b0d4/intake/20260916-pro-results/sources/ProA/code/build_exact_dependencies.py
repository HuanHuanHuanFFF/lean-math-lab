"""Exact left relations from residues of two divided differences. Discovery/construction."""
from fractions import Fraction as Q
from math import comb,gcd,lcm
from functools import reduce
from pathlib import Path
import json,time
from probe_kernel import matrix,weights,ROOT,P

def inv_product_series(factors,N):
 # Product (a+z)^(-m), all a != 0, coefficients as exact fractions.
 out=[Q(1)]+[Q(0)]*(N-1)
 for a,m in factors:
  seq=[Q((-1)**k*comb(m+k-1,k),a**(m+k)) for k in range(N)]
  out=[sum(out[j]*seq[k-j] for j in range(k+1)) for k in range(N)]
 return out

def residue_relation(wp,terms,spec):
 lookup={tuple(s):i for i,s in enumerate(spec)};v=[Q(0)]*len(spec)
 for t,scale,extra in terms:
  for r,m in wp.items():
   pole=m+extra.count(r)
   fac=[(r-s,d) for s,d in wp.items() if s!=r]+[(r-s,1) for s in extra if s!=r]
   coeff=inv_product_series(fac,pole)
   ss=min(t,r-t)
   for h in range(pole):
    mult=scale*coeff[pole-1-h]
    if ss*2==r:
     assert t==ss
     v[lookup[(r,ss,h,0)]]+=mult
    else:
     for vv in range(h+1):
      factor=t**vv
      if factor:
       v[lookup[(r,ss,h-vv,vv)]]+=mult*factor
 den=lcm(*(c.denominator for c in v));ints=[int(c*den) for c in v];g=reduce(gcd,ints)
 return [a//g for a in ints]

def entry(a,b,spec):
 r,s,u,v=spec;t=r-s
 if b<v:return 0
 if s!=t:
  if a<u:return 0
  return comb(a,u)*comb(b,v)*r**(a-u)*(s*t)**(b-v)
 return comb(b,v)*sum(comb(b-v,h)*comb(a,u-h)*(s*t)**(b-v-h)*s**h*r**(a-u+h) for h in range(max(0,u-a),min(b-v,u)+1))

if __name__=='__main__':
 st=time.time();D=55;w=weights(D,[2,4,5,6,7,8]);A,bs,spec=matrix(D,w,3)
 v1=residue_relation({2:16,4:9,5:8,6:6,7:5,8:5},[(1,Q(1),[1]),(0,Q(-1),[1])],spec)
 v2=residue_relation({2:15,4:8,5:8,6:6,7:5,8:5},[(2,Q(1,2),[2,3]),(0,Q(-1,2),[2,3]),(1,Q(-1),[1,3]),(0,Q(1),[1,3])],spec)
 for i,v in enumerate([v1,v2]):
  nz=[(idx,c) for idx,c in enumerate(v) if c]
  for j,(a,b) in enumerate(bs):
   assert sum(c*entry(a,b,spec[idx]) for idx,c in nz)==0,(i,j)
  print('EXACT_RELATION',i,'support',len(nz),'maxbits',max(abs(c).bit_length() for c in v),flush=True)
 data={'D':D,'weights':w,'row_count':len(spec),'col_count':len(bs),'prime':P,'left_relations':[v1,v2]}
 (ROOT/'evidence/exact_left_relations.json').write_text(json.dumps(data,indent=2))
 print('PASS_EXACT_LEFT_RELATIONS',time.time()-st)
