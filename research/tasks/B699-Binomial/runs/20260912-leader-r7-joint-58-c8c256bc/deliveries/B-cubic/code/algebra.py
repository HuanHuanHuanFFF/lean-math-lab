"""Sparse exact-polynomial checks of NEW identities; not an infinite proof checker."""
from __future__ import annotations
import argparse,json
from fractions import Fraction
from pathlib import Path

class Poly:
    dim=8
    def __init__(self, terms=None): self.t={k:Fraction(v) for k,v in (terms or {}).items() if v}
    @staticmethod
    def co(x): return x if isinstance(x,Poly) else Poly({(0,)*8:x})
    @staticmethod
    def var(i):
        k=[0]*8;k[i]=1;return Poly({tuple(k):1})
    def __add__(self,o):
        o=self.co(o); t=dict(self.t)
        for k,v in o.t.items():t[k]=t.get(k,0)+v
        return Poly(t)
    __radd__=__add__
    def __neg__(self):return Poly({k:-v for k,v in self.t.items()})
    def __sub__(self,o):return self+-self.co(o)
    def __rsub__(self,o):return self.co(o)+-self
    def __mul__(self,o):
        o=self.co(o);t={}
        for a,x in self.t.items():
            for b,y in o.t.items():
                k=tuple(u+v for u,v in zip(a,b));t[k]=t.get(k,0)+x*y
        return Poly(t)
    __rmul__=__mul__
    def __pow__(self,e):
        out=self.co(1)
        for _ in range(e):out=out*self
        return out

def run():
    n,h,mu,U,C,la,b,q=map(Poly.var,range(8))
    tests={}
    def chk(name,x):
        assert not x.t,(name,x.t);tests[name]='exact zero polynomial'
    # Cube-center equation is exactly half the existing middle equation.
    chk('cubic_middle_identity',n*h-2*mu*U*C**3-2*la*mu*C-2*h-(h*(n-2)-2*mu*C*(la+U*C**2)))
    chk('rational_gap_positive_decomposition',
        3*b*b*C*C+3*b*C+1-(6*C-1)-(3*C*C*(b*b-1)+3*C*(C-1)+3*C*(b-1)+2))
    chk('integer_gap_positive_decomposition',(C+1)**3-C**3-(6*C-1)-(3*C*(C-1)+2))
    chk('one_step_cube', (b*C+q)**3-(b*C)**3-(3*b*b*C*C*q+3*b*C*q*q+q**3))
    x=Poly.var(0)
    chk('family_A_half_ratio', 3*x-1-Fraction(5,2)*x-(x-2)*Fraction(1,2))
    chk('family_B_ratio', Fraction(3,4)*x-3-Fraction(2,3)*x-(x-36)*Fraction(1,12))
    chk('family_C_half_ratio',3*x-27-Fraction(5,2)*x-(x-54)*Fraction(1,2))
    # Bernoulli step used for all families.
    chk('bernoulli_cube', (n-1)**3-(n**3-3*n*n)-(3*n-1))
    # Existing CORE factorization, independently checked at the new consumer boundary.
    chk('CORE_center_positive_factorization',n**4*(n-2)**2-64*h**2*(h-n+1)
        -(n**2-4*h)*(16*h**2+(n-2)**2*(n**2+4*h)))
    return {'status':'PASS','method':'sparse rational coefficient identity','identities':tests,
            'A_C_strict_margin':'11/32','B_strict_margin':'1/27',
            'boundary_note':'symbolic identities; positivity and parameter coverage proved in notes/PROOFS.md'}
if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--out',type=Path,required=True);a=p.parse_args()
    r=run();a.out.parent.mkdir(parents=True,exist_ok=True);a.out.write_text(json.dumps(r,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print('PASS: %d exact polynomial identities'%len(r['identities']))
