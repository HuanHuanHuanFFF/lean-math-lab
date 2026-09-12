#!/usr/bin/env python3
"""Exact bivariate polynomial rebuild, stdlib only.
The finite operations verify polynomial identities, not the infinite arithmetic
implications or any Lean theorem. Independent grid proof is a separate script.
"""
from __future__ import annotations
import argparse,json
from fractions import Fraction as F
from math import factorial
from pathlib import Path
P=dict[tuple[int,int],F]

def const(c:int|F)->P:
    return {} if not c else {(0,0):F(c)}
def add(a:P,b:P)->P:
    c=dict(a)
    for k,v in b.items():
        c[k]=c.get(k,F(0))+v
        if not c[k]:del c[k]
    return c
def scale(a:P,s:int|F)->P:
    return {k:v*s for k,v in a.items() if v*s}
def mul(a:P,b:P)->P:
    c={}
    for (i,j),x in a.items():
        for (k,l),y in b.items():c[(i+k,j+l)]=c.get((i+k,j+l),F(0))+x*y
    return {k:v for k,v in c.items() if v}
def power(a:P,n:int)->P:
    c=const(1)
    for _ in range(n):c=mul(c,a)
    return c
def product(*args:P)->P:
    c=const(1)
    for a in args:c=mul(c,a)
    return c
def shift(a:P,c:int)->P:return add(a,const(c))
def choose(a:P,r:int)->P:
    return scale(product(*(shift(a,-s) for s in range(r))),F(1,factorial(r)))
def degrees(a:P)->dict:
    return {'total':max(i+j for i,j in a),
            'j':max(i for i,j in a),'k':max(j for i,j in a),'nonzero_terms':len(a)}
def require(flag:bool,label:str)->None:
    if not flag:raise ValueError(label)

def run()->dict:
    x={(1,0):F(1)};y={(0,1):F(1)};n=add(x,y)
    e,d,c,b,a=[mul(choose(x,r),choose(y,4-r)) for r in range(5)]
    I=add(add(scale(mul(a,e),12),scale(mul(b,d),-3)),power(c,2))
    J=add(add(add(scale(product(a,c,e),72),scale(product(b,c,d),9)),
              add(scale(product(a,power(d,2)),-27),scale(product(power(b,2),e),-27))),
          scale(power(c,3),-2))
    W=add(scale(power(I,3),2),scale(power(J,2),-1))
    Q=add(add(add(power(x,2),mul(x,y)),power(y,2)),add(scale(n,-3),const(2)))
    ri=scale(product(x,y,shift(x,-1),shift(y,-1),shift(n,-3),shift(n,-2)),F(1,8))
    rj=scale(product(power(x,2),power(y,2),shift(x,-1),shift(y,-1),
                     power(shift(n,-3),2),shift(n,-2)),F(-1,16))
    rw=scale(product(power(x,3),power(y,3),power(shift(x,-1),2),
                     power(shift(y,-1),2),power(shift(n,-3),3),
                     power(shift(n,-2),2),Q),F(-1,256))
    require(I==ri,'I identity');require(J==rj,'J identity');require(W==rw,'W identity')
    require(Q==add(mul(shift(n,-1),shift(n,-2)),scale(mul(x,y),-1)),'Q upper bound identity')
    require(Q==add(add(mul(x,shift(x,-3)),mul(y,shift(y,-3))),add(mul(x,y),const(2))),'Q positive identity')
    # Exact expansion of the I-to-n/4 comparison after n=t+10.
    z=shift(x,10)
    margin=add(scale(product(power(shift(z,-1),2),shift(z,-3)),32),
               scale(product(power(z,2),shift(z,-2)),-9))
    require(margin=={(0,0):F(10944),(1,0):F(4284),(2,0):F(548),(3,0):F(23)},'I margin')
    z3=shift(x,3)
    bern=add(product(power(shift(z3,-1),5),power(shift(z3,-3),3)),
             scale(product(shift(z3,-14),power(z3,7)),-1))
    bern_coeff=[24057,53946,51030,26114,7640,1214,82]
    require(bern=={(i,0):F(v) for i,v in enumerate(bern_coeff)},'sharper W polynomial')
    require(degrees(W)['total']==17,'degree cancellation')
    return {'status':'exact_polynomial_identities_verified','I':degrees(I),'J':degrees(J),
            'W':degrees(W),'Q_positive_legal_region':'j,k>=5',
            'I_margin_coefficients_at_n_eq_t_plus_10':[10944,4284,548,23],
            'sharper_W_coefficients_at_n_eq_t_plus_3':bern_coeff,'identities':7,'external_algebra_package':False}

def main()->None:
    ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);args=ap.parse_args()
    out=run();args.out.parent.mkdir(parents=True,exist_ok=True)
    args.out.write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out))
if __name__=='__main__':main()
