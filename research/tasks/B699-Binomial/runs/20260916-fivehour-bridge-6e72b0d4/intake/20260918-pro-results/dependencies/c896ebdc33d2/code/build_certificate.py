#!/usr/bin/env python3
"""Construct the exact B-SPLIT certificate. Requires SymPy; verifier does not."""
from __future__ import annotations
import argparse, json, math
from fractions import Fraction
from pathlib import Path
import sympy as s

ROOT=Path(__file__).resolve().parents[1]
x=s.symbols('x')

def coeffs(expr):
    p=s.Poly(s.expand(expr),x)
    return [str(p.nth(i)) for i in range(p.degree()+1)]

def finite_records():
    result=[]
    for kap,d,q0 in [(3,5,13),(3,5,1),(3,7,1)]:
        M=d*d+2*kap*d-2*kap*kap
        for a in sorted(int(v) for v in s.divisors(d) if math.gcd(int(v),d//int(v))==1):
            for m in sorted(int(v) for v in s.divisors(M) if math.gcd(int(v),M//int(v))==1):
                E=a*m; v=M//m
                D=4*q0*M*m-a*a*(3*d*d+4*kap*d-12*kap*kap)
                floor=math.isqrt(D) if D>=0 else None
                roots=[]
                if floor is not None and floor*floor==D:
                    roots=sorted(set(Fraction((d+2*kap)*a+sgn*floor,2*v) for sgn in (-1,1)))
                result.append({'kappa':kap,'d':d,'Q0':q0,'a':a,'m':m,
                               'D_reduced':D,'floor_sqrt':floor,'roots_V':[str(t) for t in roots]})
    return sorted(result,key=lambda t:(t['kappa'],t['d'],t['Q0'],t['a'],t['m']))

def main():
    p=argparse.ArgumentParser();p.add_argument('--output',type=Path,default=ROOT/'certificates'/'certificate.json');args=p.parse_args()
    main_positive=[]
    for kap,c,shift in [(1,1,3),(1,3,7),(3,1,7)]:
        d=x+shift;M=d*d+2*kap*d-2*kap*kap;B=d*d+kap*d-3*kap*kap
        co=coeffs(4*B**4-kap**2*c**4*M**3)
        assert all(Fraction(v)>0 for v in co)
        main_positive.append({'kappa':kap,'c':c,'shift':shift,'coefficients':co})
    r=x;d=(r**4-7*r*r+3*r+9)/3;p0=r*r-3;q=r*r+r-3
    M=s.expand(d*d+2*d-2);B=s.expand(d*d+d-3)
    m=s.cancel(M/p0);b=s.cancel(B/q);Q=13*q
    assert s.denom(s.together(m))==9 and s.denom(s.together(b))==9
    expressions={
        'M_side_m_gt1':m-1,'M_side_p_gt1':p0-1,'B_side_Q_gt1':Q-1,
        'B_side_remainder_gt1':B-Q,
        'old_SHARP':27*d*M*Q**2-512*B**2,
        'new_Q_norm':m**3-4*B*Q**3,
        'old_NEG_a':m**3-2*B**2,
        'old_NEG_b':5*p0**3-8*d,
        'new_complement_height':27*B**3-32*d*d*Q**3,
        'old_Q_height':27*Q**2-512*(d-1),
    }
    boundary_positive={}
    for name,f in expressions.items():
        co=coeffs(f.subs(x,x+100));assert all(Fraction(v)>0 for v in co)
        boundary_positive[name]=co
    bezout=[]
    for name,aa,bb,K in [('M',p0,9*m,27),('B',q,9*b,783)]:
        u,v,h=s.gcdex(aa,bb,x);assert h==1
        U=s.expand(K*u);V=s.expand(K*v)
        assert all(z.q==1 for z in s.Poly(U,x).all_coeffs()+s.Poly(V,x).all_coeffs())
        assert s.expand(U*aa+V*bb)==K
        bezout.append({'name':name,'constant':K,'U':coeffs(U),'V':coeffs(V)})
    data={'version':1,'main_positive':main_positive,'finite':finite_records(),
          'boundary':{'r0':1102,'period':4524,'positive_shift':100,
                      'm_coefficients':coeffs(m),'b_coefficients':coeffs(b),
                      'bezout':bezout,'positive':boundary_positive},
          'scope':'Paper theorem plus exact finite endpoint and polynomial certificates. Not Lean.'}
    args.output.parent.mkdir(parents=True,exist_ok=True)
    args.output.write_text(json.dumps(data,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print(json.dumps({'finite_states':len(data['finite']),'main_positive_polynomials':3,
                      'boundary_positive_polynomials':len(boundary_positive),'bezout_identities':2}))
if __name__=='__main__':main()
