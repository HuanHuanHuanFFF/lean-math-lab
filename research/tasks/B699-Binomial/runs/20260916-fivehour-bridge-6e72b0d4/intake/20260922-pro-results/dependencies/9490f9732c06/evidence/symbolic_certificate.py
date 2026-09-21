#!/usr/bin/env python3
"""Exact polynomial identities and universal monomial bounds for NSB64.

The mathematical proof uses M >= 64*A**2, A >= 1. It is not a finite scan.
This script reconstructs the identities before checking the stored certificate.
"""
from __future__ import annotations
import argparse
from fractions import Fraction
import json
from pathlib import Path
import sympy as s

ROOT = Path(__file__).resolve().parents[1]
M,A,z,h,Q,v,nu = s.symbols('M A z h Q v nu')

def frac(x) -> Fraction:
    return Fraction(int(s.numer(x)), int(s.denom(x)))

def monomials(expr):
    out=[]
    for term in s.expand(expr).as_ordered_terms():
        c,rest=term.as_coeff_Mul()
        pw=rest.as_powers_dict()
        assert set(pw) <= {M,A}, (term,pw)
        out.append(dict(coefficient=str(frac(c)),a_exponent=int(pw.get(A,0)),
                        m_denominator_exponent=-int(pw.get(M,0))))
    return sorted(out,key=lambda r:(r['m_denominator_exponent'],r['a_exponent']))

def bound(expr, alpha:int, beta:int, target:int):
    rows=monomials(expr); total=Fraction(0)
    for row in rows:
        i=row['a_exponent']; j=row['m_denominator_exponent']; d=j-beta
        # |c| A^i/M^j /(A^alpha/M^beta)
        # <= |c|/64^d, since M >= 64 A^2, A >= 1.
        assert d>=0 and i-alpha<=2*d, row
        total += abs(Fraction(row['coefficient']))/64**d
    assert total < target, (total,target)
    return dict(terms=rows,normalizing_a_exponent=alpha,
        normalizing_m_denominator_exponent=beta,
        exact_majorant=str(total),strict_upper=target,
        domain='A>=1; M>=64*A^2')

def build():
    H=M*M+A-1
    f=lambda zz:s.expand((zz*zz-H)*(H-2*zz-1)-H)
    z1=M+A/(2*M)+1/M**2+(20-A*A)/(8*M**3)
    B0=M**3-2*M*M+(s.Rational(3,2)*A-1)*M-2*A+1
    c1=(3*A*A-4*A-12)/8
    n1err=s.expand(H*z1-2*z1*z1-B0-c1/M)
    r1=f(z1)
    cert={
      'theorem':'NSB64', 'threshold':64,
      'root_residual':bound(r1,1,1,17),
      'phase_remainder':bound(n1err,1,2,13),
      'z1':str(z1),'B0':str(B0),'c1':str(c1)
    }
    u=s.symbols('u')
    derivative_margin=s.expand((s.Rational(1,2)*M**3-4*M*M-14*M-8).subs(M,64+u))
    coeffs=list(reversed(s.Poly(derivative_margin,u).all_coeffs()))
    assert all(c>0 for c in coeffs)
    cert['derivative_margin_at_M64_plus_u']=[str(c) for c in coeffs]

    # A=2 one-sided refinement. All coefficients of -f(z2) are positive.
    z2=s.expand(z1.subs(A,2)+5/M**4)
    r2=s.expand(f(z2).subs(A,2))
    total=Fraction(0); r2rows=monomials(r2)
    for row in r2rows:
        assert row['a_exponent']==0 and Fraction(row['coefficient'])<0
        j=row['m_denominator_exponent']; assert j>=2
        total+=abs(Fraction(row['coefficient']))/64**(j-2)
    assert total<30
    gap=s.expand((B0+M-z2-(H*z2-2*z2*z2)).subs(A,2))
    gaprows=monomials(gap)
    assert all(Fraction(r['coefficient'])>0 for r in gaprows)
    assert s.expand(gap- (3/M**2+20/M**3+28/M**5+28/M**6+40/M**7+50/M**8))==0
    cert['even_A2']={'z2':str(z2),'residual':r2rows,
        'residual_majorant':str(total),'residual_strict_upper':30,
        'gap_identity':gaprows,'domain':'M>=256, M even'}

    # Same-input coordinate identities: no new n or j is introduced.
    PP=Q+h*v; nn=PP*Q*nu+2; jj=(PP+nu)*Q**2; kk=(Q**2+v*nu)*PP
    linear=nu-((h-1)*Q-h*v)/2
    norm=v*nu**2-PP*Q**2+1
    nval=((h-1)*Q-h*v)/2
    assert s.expand((jj+kk-nn+2*norm).subs(nu,nval))==0
    assert s.expand(((PP+nu)*(Q**2+v*nu)-(nn-1)+norm).subs(nu,nval))==0
    assert s.expand((jj/Q**3-(h-nu/Q)).subs(nu,nval))==0
    assert s.expand((nn/Q**3-(h*nu/Q-2*(nu/Q)**2+2/Q**3)).subs(nu,nval))==0
    xx=s.symbols('x')
    # Real normalized root relation, direct substitution from the core.
    normalized=s.expand(((nu/Q)**2-h)*(h-2*nu/Q-1)-h)
    assert s.factor((normalized+h/Q**3).subs(nu,nval)) != 0  # not an identity without norm
    assert s.simplify((normalized+h/Q**3).subs(nu,nval)-h*norm.subs(nu,nval)/Q**3)==0

    # Simple support-transport obstruction identity modulo v.
    nred=nn.subs(nu,nval)
    assert s.expand(2*nred-h-3-(h-1)*(Q**3-1)-Q*h*v*((h-2)*Q-h*v))==0

    # The weak D-source countermodel is not a solution of the norm equation.
    vv=xx**3-1; qq=vv+xx; dd=xx**2+xx+1; hp=4*dd**2+9
    pp=qq+hp*vv; np=(hp*xx-qq)/2
    weakpoly=32*xx**9+72*xx**8+176*xx**7+241*xx**6+408*xx**5+292*xx**4+358*xx**3+112*xx**2+108*xx-59
    assert s.expand(4*(vv*np**2-pp*qq**2+1)-(xx-1)*(xx**2+xx+1)*weakpoly)==0
    cert['identities_checked']=['same_input_sum','same_input_first_source_product',
      'j_fraction','n_fraction','normalized_root','support_mod_v','weak_model_norm_failure']
    return cert

def main():
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--write',action='store_true')
    args=p.parse_args(); data=build()
    path=ROOT/'certificates/universal_bounds.json'
    if args.write:
        path.write_text(json.dumps(data,indent=2,sort_keys=True)+'\n')
    else:
        assert json.loads(path.read_text())==data
    print('POLYNOMIAL_IDENTITIES=PASS')
    print('UNIVERSAL_MAJORANTS=PASS')
    print('EVEN_A2_ONE_SIDED_IDENTITY=PASS')
    print('SAME_INPUT_COORDINATE_IDENTITIES=PASS')

if __name__=='__main__':main()
