#!/usr/bin/env python3
"""Standard-library checker for source-aligned uniform polynomial certificates."""
from __future__ import annotations
from math import comb
from fractions import Fraction
from pathlib import Path
import json
from typing import Any

# A polynomial in h,y, or in d with the second exponent zero.
def add(*polys):
    out={}
    for p in polys:
        for e,c in p.items(): out[e]=out.get(e,0)+c
    return {e:c for e,c in out.items() if c}

def scale(p,c): return {e:v*c for e,v in p.items() if v*c}

def mul(p,q):
    out={}
    for (a,b),v in p.items():
        for (c,d),w in q.items():
            e=(a+c,b+d); out[e]=out.get(e,0)+v*w
    return {e:c for e,c in out.items() if c}

def power(p,n):
    out={(0,0):1}
    for _ in range(n): out=mul(out,p)
    return out

def mon(a,b=0): return {(a,b):1}

def F(H,Y):
    return add(scale(power(Y,3),-2),mul(add(H,{(0,0):-1}),power(Y,2)),
               scale(mul(H,Y),2),scale(power(H,2),-1))

def expected_margins():
    # Coefficients are in ascending degree and are independently transcribed
    # from PROOFS §4/§6, not read from generator output.
    return {
      'F_at_d_plus_1':[-3,-8,-4,2],
      'F_second_derivative_positive':[-14,-12,2],
      'F_derivative_minus_d_cubed':[0,-2,-4,1],
      'x_above_half_h':[-4,-4,1],
      'Z_and_T_increasing':[-4,-4,1],
      'T_positive':[-2,-3,-3,1],
      'F_derivative_bound':[0,0,-26,4],
      'GN_derivative_bound':[0,0,0,-6,-2,-42,8],
      'GT_derivative_bound':[0,0,0,-6,-6,-36,36],
      'phase_perturbation_below_integer_gap':[-1536,-512,0,1],
      'y_perturbation_below_integer_gap':[-64,0,0,0,0,0,0,1],
      'integer_bracket_Z_lower_margin':[-2,-4,2],
      'integer_bracket_T_lower_margin':[-2,-3,1],
      'integer_bracket_derivative_margin':[-20,1],
    }

def verify(data:dict[str,Any])->dict[str,Any]:
    if data.get('schema')!='B699-PHASE1024-uniform-v1' or data.get('shift')!=32:
        raise ValueError('wrong uniform-certificate schema/domain')
    expected=expected_margins()
    items=data['margins']
    if len(items)!=len(expected) or {a['id'] for a in items}!=set(expected):
        raise ValueError('missing/duplicate/extra margin')
    count=0
    for a in items:
        coeff=expected[a['id']]
        if a['coefficients']!=coeff: raise ValueError('source-misaligned margin')
        shifted=[sum(coeff[j]*comb(j,k)*32**(j-k) for j in range(k,len(coeff)))
                 for k in range(len(coeff))]
        if shifted!=a['shifted'] or shifted[0]<=0 or any(c<0 for c in shifted):
            raise ValueError('bad all-domain positive-coefficient proof')
        count+=sum(c>0 for c in shifted)
    H,Y=mon(1,0),mon(0,1)
    Z=add(mul(H,Y),scale(power(Y,2),-2))
    T=add(Z,Y,scale(H,-1))
    GN=add(scale(power(Z,3),2),mul(add(scale(H,7),{(0,0):1}),power(Z,2)),
           mul(add(scale(power(H,3),-2),scale(power(H,2),2)),Z),power(H,4))
    GT=add(power(T,3),mul(add(scale(H,6),{(0,0):1}),power(T,2)),
           mul(add(scale(power(H,3),-1),scale(power(H,2),6)),T),power(H,3))
    identities=data['identities']
    if len(identities)!=2 or {i['id'] for i in identities}!={'GN_of_Z','GT_of_T'}:
        raise ValueError('wrong eliminants')
    for row in identities:
        q={}
        for a,b,c in row['quotient_h_y']:
            if any(type(v) is not int for v in (a,b,c)) or not (0<=a<=2 and 0<=b<=3) or (a,b) in q:
                raise ValueError('bad quotient support')
            q[(a,b)]=c
        target=GN if row['id']=='GN_of_Z' else GT
        if mul(F(H,Y),q)!=target: raise ValueError('eliminant identity failed')
    D=mon(1)
    YA=add(D,scale(mon(-1),Fraction(1,2)),mon(-2))
    residual=mul(scale(mon(6),4),F(mon(2),YA))
    num=data['asymptotic_residual']['numerator']
    den=data['asymptotic_residual']['denominator']
    if den!=[0,0,0,0,0,0,4] or residual!={(i,0):c for i,c in enumerate(num) if c}:
        raise ValueError('asymptotic expansion identity failed')
    return {'status':'PASS','margins':len(items),'positive_shifted_coefficients':count,
            'eliminant_identities':2,'asymptotic_identity':True}

if __name__=='__main__':
    import argparse
    p=argparse.ArgumentParser();p.add_argument('certificate',type=Path);args=p.parse_args()
    print(json.dumps(verify(json.loads(args.certificate.read_text())),indent=2))
