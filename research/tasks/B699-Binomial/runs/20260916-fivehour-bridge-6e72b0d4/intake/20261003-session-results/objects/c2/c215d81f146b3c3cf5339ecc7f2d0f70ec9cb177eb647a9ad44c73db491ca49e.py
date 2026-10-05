#!/usr/bin/env python3
"""Reproduce the finite diagnostic grid only. Not a proof of any general claim."""
from pathlib import Path
from fractions import Fraction as F
from math import isqrt
import json,sys
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'code'))
from sparse import unpack
sc=json.loads((ROOT/'certificates/scale.json').read_text())
polys={k:unpack(sc[k],4) for k in ['a','b','c','D','F','H','S','K','Cstar','Q3']}
vals=[F(-3),F(-2),F(-1),F(1,2),F(2),F(3)]
rs=[F(1,4),F(1,2),F(3,4),F(1),F(3,2),F(2),F(3),F(4)]
found=[];drops=[]
for u in vals:
 for y in vals:
  for r in rs:
   a,b,c,D,H=[polys[k].evaluate([u,y,r,0]) for k in ['a','b','c','D','H']]
   if not D:continue
   if not a:drops.append(list(map(str,[u,y,r,a,b,c])))
   disc=b*b-4*a*c
   if disc<0:continue
   q1,q2=isqrt(disc.numerator),isqrt(disc.denominator)
   if q1*q1!=disc.numerator or q2*q2!=disc.denominator:continue
   sq=F(q1,q2)
   roots=[(-b+sq)/(2*a),(-b-sq)/(2*a)] if a else ([-c/b] if b else [])
   for L in set(roots):
    if not L:continue
    ff=polys['F'].evaluate([u,y,r,0]);C=y*y*(y-1)**2;w=(L*ff+C)/(L*D)
    if w==F(3,2):continue
    G=6*u*u*(u-1)**2;ell=G*L;z=G*r*L;v=u+u*(u-1)*y
    h=y*y-2*u*y-1+L*(6*w*(u-1)**2-1)-r*L*(8*w*u*u-12*u*u+12*u-4)
    cc=(4*z*w-6*z)/3+h*(u*u-2*u)-w*ell-u*u+2*(u-1)*v
    t=ell*z+(ell*w)**2+ell*(cc+h*u+v)
    if not t:continue
    Q3=polys['Q3'].evaluate([u,y,r,L])
    found.append({k:str(vv) for k,vv in {'u':u,'y':y,'r':r,'L':L,'w':w,'t':t,'Q3':Q3}.items()})
result={'role':'diagnostic only; not theorem proof','u_y_values':list(map(str,vals)),
        'r_values':list(map(str,rs)),'grid_count':len(vals)**2*len(rs),
        'quadratic_examples':found,'degree_drop_cases':drops}
expected=json.loads((ROOT/'experiments/quadratic_probe.json').read_text())
# Root ordering in a set is not mathematical evidence; compare canonically.
key=lambda x:(x['u'],x['y'],x['r'],x['L'])
assert sorted(result['quadratic_examples'],key=key)==sorted(expected['quadratic_examples'],key=key)
for k in result:
 if k!='quadratic_examples':assert result[k]==expected[k]
print(json.dumps({'status':'PASS','grid_count':result['grid_count'],'examples':len(found),'role':'diagnostic only'}))
