"""Construct exact algebra and bounded classification evidence (not an NC proof)."""
from __future__ import annotations
import argparse, json
from fractions import Fraction
from pathlib import Path
import sympy as s


def encoded(expr,variables):
    return [[list(m),str(c)] for m,c in s.Poly(s.expand(expr),*variables).terms() if c]


def build():
    x,e,z,t=s.symbols('x e z t');A=x*t-z*e**2;w=2*x+e;rho=e*t
    Cbar=4*z*x+4*z*e+t;S=4*z*x+6*z*e+3*t
    pairs=[('shift',e*Cbar-4*x*(z*e+t),rho-4*A),
           ('recovery_cubic',e**2*(4*x*S+2*(rho-3*A)),
            2*(t*w**3-A*(2*w**2+2*w*e-e**2)))]
    identities=[]
    for name,L,R in pairs:
        assert s.expand(L-R)==0
        identities.append(dict(name=name,left=encoded(L,(x,e,z,t)),right=encoded(R,(x,e,z,t))))
    a,v=s.symbols('a v');A=1+a;positive=[]
    for name,g,ep,mult in [('strip_k1',3*A/2+v,A+s.Rational(2,3)*(3*A/2+v),36),
                           ('strip_k2',3*A+v,A+s.Rational(4,3)*(3*A+v),9)]:
        p=s.expand(mult*(3*g*g-ep*ep-A));cs=encoded(p,(a,v))
        assert all(Fraction(c)>=0 for _,c in cs) and p.subs({a:0,v:0})>0
        positive.append(dict(name=name,coefficients=cs))
    y,d,a=s.symbols('y d a');factors=[]
    data=[('negative_one',a,a*d*(d*d+2*d-2),a*(d*y+1),(d*d+2*d-2)*y*y-(d+2)*y+1),
          ('negative_three',27,d*(d*d+6*d-18),d*y+3,(d*d+6*d-18)*y*y-(3*d+18)*y+9),
          ('zero',a,3*a,a*(y-1),3*y*y+y-1),
          ('positive_23',27,23,y-3,23*y*y+15*y-9),
          ('positive_77',27,77,7*y-3,11*y*y-3*y-9),
          ('positive_115',27,115,5*y-3,23*y*y+3*y-9)]
    for name,A,R,L,Q in data:
        lhs=R*y**3-2*A*y*y-2*A*y+A;rhs=L*Q
        assert s.expand(lhs-rhs)==0
        factors.append(dict(name=name,left=encoded(lhs,(y,d,a)),right=encoded(rhs,(y,d,a))))
    rows=[];limit=2001
    for A in (1,9,27):
        candidates={}
        def add(r,n,d):
            if 1<=r<=limit and r%2:candidates.setdefault(r,set()).add(Fraction(n,d))
        add(3*A,1,1)
        if A==27:
            for r,n,d in ((23,3,1),(77,3,7),(115,3,5)):add(r,n,d)
        d=1
        while A*d*(d*d+2*d-2)<=limit:
            add(A*d*(d*d+2*d-2),-1,d);d+=2
        if A==27:
            d=5
            while d*(d*d+6*d-18)<=limit:
                if d%3:add(d*(d*d+6*d-18),-3,d)
                d+=2
        for r,rs in sorted(candidates.items()):
            rows.append(dict(A=A,rho=r,roots=[[q.numerator,q.denominator] for q in sorted(rs)]))
    return dict(schema='B699-STRIP-EXP-RAT-v1',identities=identities,positive_polynomials=positive,
                factor_identities=factors,root_regression=dict(limit=limit,tested=3*((limit+1)//2),rows=rows),
                constants=dict(cutoff=164,small_comparison=81*82**3,
                               squared_height_coefficient=4*81**3,power_of_two=2**22))

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--output',type=Path,required=True);args=ap.parse_args()
    cert=build();args.output.parent.mkdir(parents=True,exist_ok=True)
    args.output.write_text(json.dumps(cert,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps({'status':'PASS_BUILD','identities':len(cert['identities']),
                      'factor_identities':len(cert['factor_identities']),
                      'root_classes':len(cert['root_regression']['rows'])}))
