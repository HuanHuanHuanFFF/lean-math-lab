#!/usr/bin/env python3
"""Exact sparse-polynomial identities used in the paper, standard library only."""
import json, sys
from pathlib import Path
from fractions import Fraction as F

DIM=5
class P:
    def __init__(self,c=0):
        self.d={} if c==0 else {(0,)*DIM:F(c)}
    @staticmethod
    def var(i):
        p=P(); k=[0]*DIM;k[i]=1;p.d[tuple(k)]=F(1);return p
    @staticmethod
    def cv(v): return v if isinstance(v,P) else P(v)
    def __add__(self,v):
        v=P.cv(v);r=P();r.d=self.d.copy()
        for k,c in v.d.items():r.d[k]=r.d.get(k,F(0))+c
        r.d={k:c for k,c in r.d.items() if c};return r
    __radd__=__add__
    def __neg__(self):return self*-1
    def __sub__(self,v):return self+-P.cv(v)
    def __rsub__(self,v):return P.cv(v)+-self
    def __mul__(self,v):
        v=P.cv(v);r=P()
        for a,x in self.d.items():
            for b,y in v.d.items():
                k=tuple(i+j for i,j in zip(a,b));r.d[k]=r.d.get(k,F(0))+x*y
        r.d={k:c for k,c in r.d.items() if c};return r
    __rmul__=__mul__
    def __pow__(self,e):
        assert isinstance(e,int) and e>=0
        r=P(1);b=self
        while e:
            if e&1:r=r*b
            e//=2
            if e:b=b*b
        return r

def main(out):
    A,u,y,q,n=[P.var(i) for i in range(DIM)]
    r=u*(A-u)
    rem=6*r*(2*A-u-3*y)+2*q*(y+3*u-2*A)
    ids={
      'first_window_reduction':3*(u*(n-1)+y)*(u*(n-1)+y-A)-3*y*(y-A)-3*u*(n-1)*(u*(n-1)+2*y-A),
      'cubic_by_quadratic':6*(y+u)*(y+u-A)*(y+u-2*A)-(2*y+6*u-4*A)*(3*y*(y-A)-q)-rem,
      'remainder_at_u':6*r*(2*A-u-3*u)+2*q*(u+3*u-2*A)-4*(2*u-A)*(q-3*r),
      'remainder_linear_difference':rem-(6*r*(2*A-u-3*u)+2*q*(u+3*u-2*A))-(-18*r+2*q)*(y-u),
      'at_A_plus_u':(q-3*r)*(A+u)+r*(2*A-u)+q*(3*u-2*A)-(q*(4*u-A)-r*(A+4*u)),
    }
    w=P.var(4);AA=u+w
    ids['positive_sign_deficit']=u*w*(AA+4*u)-AA*(4*u-AA)-(u*u*(5*w-3)+u*w*(w-2)+w*w)
    t=P.var(4)
    ids['tail_positivity']=t**3-6*t-24-((t-5)*(t*t+5*t+19)+71)
    ids['tail_bound_identity']=2*t**5-9*t**4-6*t*t-24*t-((2*t-9)*t**4-6*t*t-24*t)
    for name,p in ids.items():
        if p.d:raise AssertionError((name,p.d))
    assert F(9,2)*2**3*3**2+3*2**3+12*2**2 ==396 <486==2*3**5
    assert F(108,343)<F(1,3)
    assert F(4096,3)<12**3
    result={'identity_count':len(ids),'zero_polynomials':sorted(ids),'exact_constants':{'T3_A2_bound':396,'T3_A2_divisor_lower':486,'ROW_ratio':'108/343 < 1/3','isolated_three':'4096/3 < 12^3'},'scope':'Finite algebra identities and constants; universal inequalities are proved in notes/PROOFS.md.'}
    Path(out).mkdir(parents=True,exist_ok=True);(Path(out)/'symbolic.json').write_text(json.dumps(result,sort_keys=True,indent=2)+'\n')
    print('PASS symbolic',len(ids),'identities')
if __name__=='__main__':main(sys.argv[1])
