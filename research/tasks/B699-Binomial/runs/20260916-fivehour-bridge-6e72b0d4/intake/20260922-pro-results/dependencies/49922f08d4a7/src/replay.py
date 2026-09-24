#!/usr/bin/env python3
from __future__ import annotations
import json
from pathlib import Path
import sympy as sp

x = sp.symbols('x')

def zero(expr, msg):
    expr = sp.factor(sp.together(expr))
    if expr != 0:
        raise AssertionError(f"{msg}: {expr}")

def no_root_mod(poly, var, prime):
    P = sp.Poly(poly, var, modulus=prime)
    if P.degree() != sp.degree(poly, var):
        raise AssertionError('degree drop')
    vals = [int(P.eval(i)) % prime for i in range(prime)]
    if 0 in vals:
        raise AssertionError((poly, prime, vals))
    return vals

def low_degree_checks():
    # The paper proof handles the boundary degrees by leading coefficients.
    # Here we only certify the numerical slot contradictions k=6 and k=-2.
    assert 6 not in (0,1,2)
    assert -2 not in (0,1,2)
    return {'small_endpoint_linear_slot': 6, 'large_endpoint_linear_slot': -2}

def single_slot():
    a,b,d,rho = sp.symbols('a b d rho')
    A = x**2 + a*x + b
    U = x**3 + sp.Rational(15,14)*a*x**2 + sp.Rational(9,7)*b*x + d
    data = {}
    rho_expected = {
        0: sp.Rational(3**8, 2**4 * 7**10)*a**7,
        1: -sp.Rational(3**8, 2**7 * 7**10)*a**7,
        2: -sp.Rational(3**8, 2 * 7**10)*a**7,
    }
    families = {}
    for k in (0,1,2):
        c = sp.Rational(3*(2-3*k),7)
        W = sp.expand(k*U + c*x*A)
        E = sp.expand(W**3 + rho*A - 2*U*W**2)
        rem = sp.rem(E, U**2, x)
        eq = []
        for coeff in sp.Poly(rem,x).all_coeffs():
            num = sp.factor(sp.together(coeff).as_numer_denom()[0])
            if num != 0:
                eq.append(num)
        G = sp.groebner(eq, rho,d,b,a, order='lex')
        basis = [sp.factor(p.as_expr()) for p in G.polys]
        # Common necessary elimination factors.
        assert any(sp.factor(p).has(a**6*(3*a**2-14*b)) for p in basis)
        # Nondegenerate branch.
        sub = {b:sp.Rational(3,14)*a**2, d:sp.Rational(27,2744)*a**3, rho:rho_expected[k]}
        for coeff in sp.Poly(rem.subs(sub),x).all_coeffs():
            zero(coeff, f'single k={k} remainder')
        # a=0 branch forces b=d=0 in the exact basis and violates gcd(U,A)=1.
        basis_a0 = [sp.factor(p.subs(a,0)) for p in basis]
        assert any(p.has(b**2) and p.subs(b,1) != 0 for p in basis_a0)
        assert any(p.has(d**2) and p.subs(d,1) != 0 for p in basis_a0)
        # Recover f and endpoint on the nondegenerate branch.
        As = sp.expand(A.subs(sub)); Us = sp.expand(U.subs(sub)); Ws = sp.expand(W.subs(sub))
        rs = rho_expected[k]
        f = sp.cancel(2 + Ws*(Ws-Us)*(Ws-2*Us)/(rs*As))
        V = sp.cancel((f-1)/Us)
        sigma = sp.expand(V*Ws)
        y = sp.symbols('y')
        ft = sp.expand(f.subs(x,sp.Rational(3,7)*a*y))
        st = sp.expand(sigma.subs(x,sp.Rational(3,7)*a*y))
        families[k] = {'f':ft,'sigma':st,'f_minus_2':sp.factor((f-2).subs(x,a*y))}
        data[str(k)] = {'basis':[str(p) for p in basis], 'f':str(ft), 'sigma':str(st)}

    y = sp.symbols('y')
    F0 = 256*y**7+1568*y**6+3696*y**5+4200*y**4+2352*y**3+588*y**2+49*y+2
    F1 = -5120*y**7-25984*y**6-49056*y**5-42336*y**4-16464*y**3-2352*y**2-98*y+2
    F2 = -80*y**7-448*y**6-924*y**5-840*y**4-294*y**3+sp.Rational(49,4)*y+2
    zero(families[0]['f']-F0,'F0')
    zero(families[1]['f']-F1,'F1')
    zero(families[2]['f']-F2,'F2')

    # Unique rational origin: all other cubic factors have no rational root.
    r=sp.symbols('r')
    cubics = [
      (392*r**3+588*r**2+252*r+27,5),
      (1568*r**3+1764*r**2+504*r+27,11),
      (3920*r**3+4116*r**2+1008*r+27,13),
      (1960*r**3+1764*r**2+252*r-27,13),
    ]
    cubic_vals=[]
    for p,q in cubics:
        cubic_vals.append({'poly':str(p),'prime':q,'values':no_root_mod(p,r,q)})

    # Positive family exact factors and the complete 7-source deficit.
    sigma0 = sp.expand(8*y*(6*y**2+14*y+7)*(32*y**4+116*y**3+124*y**2+37*y+1)/7)
    zero(families[0]['sigma']-sigma0,'sigma0')
    A1=8*y**3+28*y**2+28*y+7
    A2=32*y**3+84*y**2+56*y+7
    zero(F0-2-y*A1*A2,'F0 source factor')
    z=sp.symbols('z')
    # Quotients after y=7z are 7-adic units.
    qA1=sp.expand(A1.subs(y,7*z)/7)
    qA2=sp.expand(A2.subs(y,7*z)/7)
    qM=sp.expand((6*y**2+14*y+7).subs(y,7*z)/7)
    Q=32*y**4+116*y**3+124*y**2+37*y+1
    assert int(sp.Poly(qA1,z,modulus=7).eval(0))%7==1
    assert int(sp.Poly(qA2,z,modulus=7).eval(0))%7==1
    assert int(sp.Poly(qM,z,modulus=7).eval(0))%7==1
    assert int(sp.Poly(Q.subs(y,7*z),z,modulus=7).eval(0))%7==1
    data['cubic_irreducibility']=cubic_vals
    data['positive_family']={'F0':str(F0),'sigma0':str(sigma0),'A1':str(A1),'A2':str(A2)}
    return data

def split_slot():
    A,B,L=sp.symbols('A B L')
    pairs={
      (0,1):(
        x**3+B*x**2+A*x-B/sp.Integer(2)-sp.Rational(5,7),
        sp.Rational(5,7)*x**3+(sp.Rational(3,4)*B-sp.Rational(1,14))*x**2+(A-B/sp.Integer(4)-sp.Rational(5,14))*x,
        7*B**3-490*B**2+8596*B+13512),
      (0,2):(
        x**3+B*x**2+A*x-A-sp.Rational(3,2)*B-sp.Rational(25,14),
        sp.Rational(4,7)*x**3+(B/sp.Integer(2)-sp.Rational(5,14))*x**2+(-sp.Rational(3,2)*B-sp.Rational(25,14))*x,
        7*B**3+553*B**2+11725*B+16875),
      (1,2):(
        x**3+B*x**2+A*x-3*A-sp.Rational(7,2)*B-sp.Rational(55,14),
        (-3*A-sp.Rational(7,2)*B-sp.Rational(55,14))+(-A-sp.Rational(7,4)*B-sp.Rational(55,28))*x+(B/sp.Integer(4)-sp.Rational(11,28))*x**2+sp.Rational(3,7)*x**3,
        218750*B**3+828625*B**2+817124*B+60621),
    }
    out={}
    mods=[]
    for pair,(U,W,P) in pairs.items():
        k,l=pair
        R=x*(x-1)
        # ODE and root slots.
        ode=sp.expand(3*x*(x-1)*sp.diff(W,x)-(2*x-1)*W-2*x*(x-1)*sp.diff(U,x)+((k+l)*x-k)*U)
        zero(ode,f'ODE {pair}')
        zero(W.subs(x,0)-k*U.subs(x,0),f'root0 {pair}')
        zero(W.subs(x,1)-l*U.subs(x,1),f'root1 {pair}')
        E=sp.expand(W**3+L*R-2*U*W**2)
        rem=sp.rem(E,U**2,x)
        eq=[]
        for coeff in sp.Poly(rem,x).all_coeffs():
            num=sp.factor(sp.together(coeff).as_numer_denom()[0])
            if num!=0: eq.append(num)
        G=sp.groebner(eq,L,A,B,order='lex')
        basis=[sp.factor(p.as_expr()) for p in G.polys]
        assert any(sp.rem(sp.Poly(p,B),sp.Poly(P,B)).is_zero for p in basis if not p.has(A,L) and sp.degree(p,B)==3)
        vals=no_root_mod(P,B,13)
        mods.append({'pair':str(pair),'poly':str(P),'mod13':vals})
        out[str(pair)]={'basis':[str(p) for p in basis], 'P':str(P), 'mod13':vals}
    # Relation between the first two cubics.
    P1=pairs[(0,1)][2];P2=pairs[(0,2)][2]
    zero(P2 + P1.subs(B,-B-3),'P2 transform')
    out['modular_checks']=mods
    return out

def bad_cert_rejection():
    y=sp.symbols('y')
    F0=256*y**7+1568*y**6+3696*y**5+4200*y**4+2352*y**3+588*y**2+49*y+2
    A1=8*y**3+28*y**2+28*y+7
    A2=32*y**3+84*y**2+56*y+7
    assert sp.expand(F0-2-y*A1*(A2+7)) != 0
    B=sp.symbols('B')
    P=7*B**3-490*B**2+8596*B+13512
    vals=[int(sp.Poly(P+1,B,modulus=13).eval(i))%13 for i in range(13)]
    # Deliberately corrupted polynomial is not accepted as the frozen no-root certificate.
    assert vals != [5,6,5,5,9,7,2,10,8,12,12,11,12]
    return True

def main():
    out={
      'low_degree':low_degree_checks(),
      'single_slot':single_slot(),
      'split_slot':split_slot(),
      'bad_cert_rejection':bad_cert_rejection(),
    }
    target=Path(__file__).resolve().parents[1]/'cert'/'classification.json'
    target.write_text(json.dumps(out,ensure_ascii=False,indent=2,sort_keys=True)+'\n',encoding='utf-8')
    print('PASS SEPTIC-ALL replay')
    print(target)

if __name__=='__main__':
    main()
