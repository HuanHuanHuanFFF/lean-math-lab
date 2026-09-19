#!/usr/bin/env python3
"""Exact sparse-polynomial verification, no symbolic-library imports."""
from __future__ import annotations
import argparse,copy,json
from pathlib import Path

class Poly:
    def __init__(self,n:int,terms:dict|None=None):
        self.n=n;self.t={p:c for p,c in (terms or {}).items() if c}
    @classmethod
    def constant(cls,n,c):return cls(n,{(0,)*n:c})
    @classmethod
    def variable(cls,n,i):
        a=[0]*n;a[i]=1;return cls(n,{tuple(a):1})
    def convert(self,x):return x if isinstance(x,Poly) else Poly.constant(self.n,x)
    def __add__(self,x):
        x=self.convert(x);assert x.n==self.n;r=self.t.copy()
        for p,c in x.t.items():r[p]=r.get(p,0)+c
        return Poly(self.n,r)
    __radd__=__add__
    def __neg__(self):return Poly(self.n,{p:-c for p,c in self.t.items()})
    def __sub__(self,x):return self+-self.convert(x)
    def __rsub__(self,x):return self.convert(x)+-self
    def __mul__(self,x):
        x=self.convert(x);assert x.n==self.n;r={}
        for p,c in self.t.items():
            for q,d in x.t.items():
                z=tuple(a+b for a,b in zip(p,q));r[z]=r.get(z,0)+c*d
        return Poly(self.n,r)
    __rmul__=__mul__
    def __pow__(self,e):
        assert isinstance(e,int) and e>=0
        a=Poly.constant(self.n,1)
        for _ in range(e):a=a*self
        return a
    def rows(self):return [[list(p),c] for p,c in sorted(self.t.items(),reverse=True)]

def variables(n):return [Poly.variable(n,i) for i in range(n)]

def check(c:dict)->dict:
    assert c['schema']=='B699-ODD13-algebra-v1';ids={}
    def record(name,vs,l,r):
        assert (l-r).t=={},name
        ids[name]={'variables':vs,'coefficients':l.rows()}
    r,=variables(1)
    record('amgm',['r'],27*(1+r)**4-256*r,(3*r-1)**2*(3*r*r+14*r+27))
    k,d,W,E=variables(4);M=d*d+2*k*d-2*k*k;B=d*d+k*d-3*k*k
    Q=M*W*W-k*(d+2*k)*W*E+k*k*E*E
    record('positive_quadratic_gap',['k','d','W','E'],Q-B*W*W,k*(W-E)*((d+k)*W-k*E))
    k,d=variables(2);M=d*d+2*k*d-2*k*k;B=d*d+k*d-3*k*k
    record('discriminant13',['k','d'],(2*d+k)**2-4*B,13*k*k)
    record('M_upper',['k','d'],3*d*d-2*M,(d-2*k)**2)
    record('old_recovery_product',['k','d'],(d+k)*B,d*M-3*k**3)
    k,d,a,m,q=variables(5);M=d*d+2*k*d-2*k*k
    record('quadratic_discriminant',['k','d','a','m','q'],
           ((d+2*k)*a*m)**2-4*M*((a*m)**2-q*m**3),
           m*m*(4*q*M*m-a*a*(3*d*d+4*k*d-12*k*k)))
    assert c['identities']==ids
    X,=variables(1)
    d=X+3;M=d*d+2*d-2;B=d*d+d-3
    P1=B*B-(d-1)*d*M
    d=X+5;M=d*d+6*d-18;B=d*d+3*d-27
    P2=B*B-(d-6)*d*M;P3=2*B-d*d
    pos={'d_bound_I':P1.rows(),'d_bound_II':P2.rows(),'B_lower_II':P3.rows()}
    assert c['positive_coefficients']==pos
    assert all(v>0 for rows in pos.values() for _,v in rows)
    constants={'height_II':127552392,'height_cap':134217728,
               'height_I_denominator':124416,
               'QR13':sorted(set(i*i%13 for i in range(1,13))),
               'nonQR13':[i for i in range(1,13) if i not in set(j*j%13 for j in range(1,13))]}
    assert c['constants']==constants
    assert 72*11**6<2**27 and 12**6//24==124416
    assert 3*81*4<1024 # equivalent 81/1024 < 1/12
    assert 17**3<2**20 and 2**40<17**13 and 8*8%17==13
    return {'schema':'B699-ODD13-algebra-acceptance-v1','identities':len(ids),
            'positive_polynomials':len(pos),'height_constants':'exact integers',
            'method':'standard-library sparse polynomial arithmetic',
            'scaling_model':'(n,g) only; no recovered j or NC input'}

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--certificate',type=Path,required=True)
    ap.add_argument('--output',type=Path,required=True);a=ap.parse_args()
    c=json.loads(a.certificate.read_text());out=check(c)
    bad=copy.deepcopy(c);bad['identities']['amgm']['coefficients'][0][1]+=1
    try:check(bad)
    except AssertionError:out['corrupted_polynomial_rejected']=True
    else:raise AssertionError('corrupted polynomial accepted')
    a.output.parent.mkdir(parents=True,exist_ok=True);a.output.write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps({'identities':out['identities'],'positive_polynomials':out['positive_polynomials']}))
