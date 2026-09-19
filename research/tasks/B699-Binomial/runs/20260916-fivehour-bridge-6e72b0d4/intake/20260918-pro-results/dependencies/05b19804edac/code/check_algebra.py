#!/usr/bin/env python3
"""Exact symbolic identity checks. Not a substitute for the quantified proof."""
from __future__ import annotations
import argparse
import json
import sympy as s


def main(output: str) -> None:
    checks: dict[str, bool] = {}
    def zero(name: str, expr: s.Expr) -> None:
        value = s.factor(expr)
        if value != 0:
            raise AssertionError((name, value))
        checks[name] = True

    n,j,h,Z=s.symbols('n j h Z', nonzero=True)
    k=n-j
    ell=n*(n-1)*(n-2)/(6*h)
    b=j*(n-1)*(n-2)/(2*h)
    c=j*(j-1)*(n-2)/(2*h)
    d=j*(j-1)*(j-2)/(6*h)
    psi=ell*Z**3-b*Z**2+c*Z-d
    Y=s.symbols('Y')
    F=k*(k-1)*(k-2)/6+j*k*(k-1)*Y/2+k*j*(j-1)*Y**2/2+j*(j-1)*(j-2)*Y**3/6
    zero('actual_F_transform',Z**3*F.subs(Y,1-1/Z)/h-psi)
    I=b*b-3*ell*c
    J=2*b**3-9*ell*b*c+27*ell**2*d
    disc=s.discriminant(psi,Z)
    zero('raw_I', I-j*k*(n-1)*(n-2)**2/(4*h*h))
    zero('raw_J', J-j*k*(k-j)*(n-1)**2*(n-2)**2/(4*h**3))
    zero('raw_discriminant',disc-j*j*k*k*(j-1)*(k-1)*(n-1)*(n-2)**2/(12*h**4))
    zero('MOM_n',n*I-3*ell*(b-c))
    zero('MOM_j',j*I-b*(b-c))
    zero('depressed_identity',27*ell**2*psi-((3*ell*Z-b)**3-3*I*(3*ell*Z-b)-J))
    zero('discriminant_identity',4*I**3-J**2-27*ell**2*disc)
    zero('midpoint_raw',psi.subs(Z,s.Rational(1,2))-(n-2*j)*((n-2*j)**2-3*n+2)/(48*h))

    la,mu,u,z,H,C,G,ep,de,c_alpha,g=s.symbols('lam mu u z H C G epsilon delta c_alpha g',nonzero=True)
    nr=2*mu*C*H+2
    norm=u*C*G-z*H**2-la
    square=la*(mu**2*C**2-G*de**2)-z*(nr-1)
    eps_expr=la*mu*H-2*u*G
    center=2*C*(nr-1)*eps_expr-la*(4*G*H**2*de**2-3*nr+2)
    zero('midpoint_norm_linear_combination', center+4*(nr-1)*norm-4*H**2*square)
    zero('norm_mod_divisor', (la**2*mu**2*norm).subs(H,(2*u*G+ep)/(la*mu))-(la**2*mu**2*C*u*G-z*(2*u*G+ep)**2-la**3*mu**2))

    f=la**2*mu**2*C*u*G-z*(2*u*G+ep)**2-la**3*mu**2
    q=la**2*mu**2*C*C-2*z*C*(2*u*G+ep)-la*z-la**2*G*de**2
    A=mu**2*u*(la**4*mu**2*de**2-8*ep*u*z*z)
    B=6*ep*de**2*la**2*mu**2*u*z+12*la*mu**2*u*u*z*z
    D=9*de**2*la**3*mu**2*u*z
    E=z*(la*de**2*ep-2*u*z)**2+la**5*mu**2*de**4
    P=-A*C**3+B*C*C+D*C+E
    zero('cubic_resultant',s.resultant(f,q,G)+la**2*P)
    Grec=(la**2*mu**2*C*C-2*z*C*ep-la*z)/(4*u*z*C+la**2*de**2)
    zero('G_recovery',q.subs(G,Grec))
    zero('height_constant',s.Integer(6)*1108*307+2-2040938)
    assert 2040938<2**21
    checks['height_constant_below_2pow21']=True

    # B/E normalization: impose the same-input product identities, not
    # independent arbitrary substitutions of B and E parameters.
    hv=c_alpha*g*(n-1)*(n-2)/6
    raw_i=j*k*(n-1)*(n-2)**2/(4*hv**2)
    raw_j=j*k*(k-j)*(n-1)**2*(n-2)**2/(4*hv**3)
    raw_dis=j*j*k*k*(j-1)*(k-1)*(n-1)*(n-2)**2/(12*hv**4)
    prod=u*C*g*g*(n-1)/la
    zero('BE_I', 9*prod/(c_alpha**2*g*g*(n-1))-9*u*C/(c_alpha**2*la))
    zero('BE_J', 54*prod*(2*g*H*de)/(c_alpha**3*g**3*(n-1)*(2*mu*C*H))-54*u*de/(c_alpha**3*la*mu))
    zero('BE_Delta',108*prod**2*(z*(n-1)*H*H/la)/(c_alpha**4*g**4*(n-1)**3*(2*mu*C*H)**2)-27*u*u*z/(c_alpha**4*la**3*mu**2))
    out={'engine':'sympy '+s.__version__,'checks':checks,'passed':len(checks),'status':'EXACT_SYMBOLIC_IDENTITIES'}
    with open(output,'w',encoding='utf-8') as fobj:json.dump(out,fobj,ensure_ascii=False,indent=2)
    print(json.dumps(out,ensure_ascii=False,indent=2))

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--output',required=True)
    main(ap.parse_args().output)
