#!/usr/bin/env python3
"""Construct exact coefficient certificates; no integer-input/prime/exponent scan."""
from __future__ import annotations
from pathlib import Path
from fractions import Fraction
import json
import sympy as sp
ROOT=Path(__file__).resolve().parents[1]

def encoded(expr, names):
    vv=sp.symbols(' '.join(names), seq=True)
    poly=sp.Poly(sp.expand(expr),*vv,domain=sp.QQ)
    out=[]
    for exp, coef in sorted(poly.terms()):
        q=sp.Rational(coef)
        if q: out.append([list(exp),int(q.p),int(q.q)])
    return out

def build():
    identities=[]
    def put(name,names,left,right):
        assert sp.expand(left-right)==0, name
        identities.append({'name':name,'variables':names,
                           'left':encoded(left,names),'right':encoded(right,names)})
    x,z,e,T,A=sp.symbols('x z e T A'); S=4*z*x+6*z*e+3*T
    put('REC_from_norm',['x','z','e','T','A'],
        2*(4*z*x+4*z*e+T)*(2*x+e)+2*A,
        4*x*S+2*(e*T-3*A)+8*(z*e**2-x*T+A))
    put('C2_from_norm',['x','z','e','T','A'],
        z*(2*x+e)**2+A-x*(4*z*x+4*z*e+T),z*e**2+A-x*T)
    d,k,Y=sp.symbols('d k Y'); M=d*d+2*k*d-2*k*k; B=d*d+k*d-3*k*k
    put('reducible_eta',['d','k'],d*M-3*k**3,(d+k)*B)
    put('reducible_P',['d','k','Y'],d*M*Y**3-2*k**3*Y**2-2*k**3*Y+k**3,
        (d*Y+k)*(M*Y**2-k*(d+2*k)*Y+k*k))
    g,H,v,w,X,Y,lam,mu,C=sp.symbols('g H v w X Y lam mu C')
    put('cross_endpoint_norm',['g','H','v','w','X','Y','lam','mu','C'],
        2*lam*mu*C*H+2*lam-2*g*g*X*Y-g*H*(v*X+w*Y),
        H*(2*lam*mu*C-2*v*w*H-g*(v*X+w*Y))-2*(g*g*X*Y-v*w*H*H-lam))
    L,R,U,V=sp.symbols('L R U V')
    put('cross_complete_surplus',['L','R','U','V'],(L*U)*(R*V),(L*R)*(U*V))
    l,b,c,f=sp.symbols('l b c f'); I=b*b-3*l*c; h=b-c
    put('third_coefficient_recovery',['l','b','c','f'],
        3*(3*l*h-2*I)*f-c*(b*h-2*I),
        3*(3*l*(b+c)-2*b*b)*f-c*(6*l*c-b*b-b*c))
    r,Y=sp.symbols('r Y'); P=r*Y**3-2*Y**2-2*Y+1
    F=2*r*r*Y**3-8*r*Y**2+(8-5*r)*Y+r+10
    put('same_input_square_coupling',['r','Y'],
        Y*(6*P-2)+(2*P-1)*(2*P-2),2*Y**3*F)
    n,j,l=sp.symbols('n j l')
    put('actual_I_cleared',['n','j','l'],
        (3*l*j)**2*(n-1)-3*l*(3*l*j*(j-1))*n,9*l*l*j*(n-j))
    t=sp.symbols('t'); dd=11+48504*t
    put('mixed_M',['t'],dd*dd+2*dd-2,141*(1+8256*t+16685376*t*t))
    put('mixed_B',['t'],dd*dd+dd-3,129*(1+8648*t+18237504*t*t))
    put('mixed_even_valuation',['t'],dd+1,4*(3+12126*t))
    x=sp.symbols('x'); l=2*x; b=3*(x-1); c=sp.Rational(3,2)*(x-2); I=b*b-3*l*c
    nn=x*x; jj=x*(x-1)/2
    put('pseudo_I',['x'],I,sp.Integer(9))
    put('pseudo_n_recovery',['x'],nn*I,3*l*(b-c))
    put('pseudo_j_recovery',['x'],jj*I,b*(b-c))
    put('pseudo_third_defect',['x'],
        3*(3*l*(b+c)-2*b*b)-c*(6*l*c-b*b-b*c),
        -sp.Rational(27,4)*(x**3-7*x*x-2*x+16))
    q=sp.symbols('q')
    put('pseudo_defect_strict_sign',['q'],(8+q)**3-7*(8+q)**2-2*(8+q)+16,
        q**3+17*q*q+78*q+64)
    params=json.loads((ROOT/'inputs/parameters.json').read_text())
    cert={'schema':'B699-i3-cross-recovery-v1','identities':identities,
          'valuation_certificate':{
              'dyadic_exponents':params['dyadic_exponents'],
              'odd_prime_exponents':params['odd_prime_exponents'],
              'odd_saturation':'unitary divisor',
              'eta_dyadic_valuation_parity':'odd',
              'requires_v2_n_gt_2e_plus_2':True},
          'source_contract':{'allowed_lambda_mu':params['allowed_lambda_mu'],
                            'VG8_adopted_not_reproved':True},
          'scope':{'conditional_reducible_even_valuation_exclusion':True,
                   'general_cross_domain_closed':False,'general_i3_closed':False,
                   'absolute_bound_on_unbounded_input_parameter':False,
                   'finite_endpoint_needed':False,'finite_search_performed':False}}
    return cert

def main():
    cert=build();out=ROOT/'outputs/certificate.json'
    out.write_text(json.dumps(cert,ensure_ascii=False,indent=2)+'\n')
    summary={'status':'PASS','method':'SymPy exact coefficient construction',
             'identities':len(cert['identities']),'sample_inputs_tested':0,
             'new_finite_endpoints':0,'old_endpoint_replays':0,
             'sympy_version':sp.__version__}
    (ROOT/'outputs/primary.json').write_text(json.dumps(summary,indent=2)+'\n')
    print(json.dumps(summary,ensure_ascii=False))
if __name__=='__main__':main()
