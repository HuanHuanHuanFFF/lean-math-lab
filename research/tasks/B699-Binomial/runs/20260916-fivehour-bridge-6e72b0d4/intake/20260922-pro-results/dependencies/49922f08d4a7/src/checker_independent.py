#!/usr/bin/env python3
from __future__ import annotations
import sympy as sp
x=sp.symbols('x')

def nums_of_rem(E,D,var):
    rem=sp.rem(sp.expand(E),sp.expand(D),var)
    out=[]
    for c in sp.Poly(rem,var).all_coeffs():
        n=sp.factor(sp.together(c).as_numer_denom()[0])
        if n!=0: out.append(n)
    return out

def check_basis_both_ways(gens, stated, variables):
    Gs=sp.groebner(stated,*variables,order='lex')
    for g in gens:
        _,r=Gs.reduce(g)
        assert sp.expand(r)==0
    Gi=sp.groebner(gens,*variables,order='grevlex')
    for s in stated:
        _,r=Gi.reduce(s)
        assert sp.expand(r)==0

def single_slot_independent():
    a,b,d,rho=sp.symbols('a b d rho')
    A=x**2+a*x+b
    U=x**3+sp.Rational(15,14)*a*x**2+sp.Rational(9,7)*b*x+d
    rhos={0:sp.Rational(3**8,2**4*7**10)*a**7,
          1:-sp.Rational(3**8,2**7*7**10)*a**7,
          2:-sp.Rational(3**8,2*7**10)*a**7}
    for k in (0,1,2):
        c=sp.Rational(3*(2-3*k),7)
        W=sp.expand(k*U+c*x*A)
        gens=nums_of_rem(W**3+rho*A-2*U*W**2,U**2,x)
        # Recompute an exact lex basis, then verify it against a grevlex basis.
        Glex=sp.groebner(gens,rho,d,b,a,order='lex')
        stated=[sp.factor(p.as_expr()) for p in Glex.polys]
        check_basis_both_ways(gens,stated,(rho,d,b,a))
        sub={b:sp.Rational(3,14)*a**2,d:sp.Rational(27,2744)*a**3,rho:rhos[k]}
        for g in gens: assert sp.factor(g.subs(sub))==0
    # Canonical family and exact 7-adic unit reductions.
    y,z=sp.symbols('y z')
    F=256*y**7+1568*y**6+3696*y**5+4200*y**4+2352*y**3+588*y**2+49*y+2
    S7=8*y*(6*y**2+14*y+7)*(32*y**4+116*y**3+124*y**2+37*y+1)
    A1=8*y**3+28*y**2+28*y+7; A2=32*y**3+84*y**2+56*y+7
    assert sp.expand(F-2-y*A1*A2)==0
    assert sp.Poly(A1.subs(y,7*z)/7,z,modulus=7)==sp.Poly(1,z,modulus=7) + sp.Poly((A1.subs(y,7*z)/7)-1,z,modulus=7)
    for Q in [A1.subs(y,7*z)/7,A2.subs(y,7*z)/7,(6*y**2+14*y+7).subs(y,7*z)/7,
              (32*y**4+116*y**3+124*y**2+37*y+1).subs(y,7*z)]:
        assert int(sp.Poly(Q,z,modulus=7).eval(0))%7==1
    assert sp.expand(S7/7 - (8*y*(6*y**2+14*y+7)*(32*y**4+116*y**3+124*y**2+37*y+1)/7))==0

def split_slot_independent():
    A,B,L=sp.symbols('A B L')
    cases=[
      ((0,1),x**3+B*x**2+A*x-B/sp.Integer(2)-sp.Rational(5,7),
       sp.Rational(5,7)*x**3+(sp.Rational(3,4)*B-sp.Rational(1,14))*x**2+(A-B/sp.Integer(4)-sp.Rational(5,14))*x,
       7*B**3-490*B**2+8596*B+13512),
      ((0,2),x**3+B*x**2+A*x-A-sp.Rational(3,2)*B-sp.Rational(25,14),
       sp.Rational(4,7)*x**3+(B/sp.Integer(2)-sp.Rational(5,14))*x**2+(-sp.Rational(3,2)*B-sp.Rational(25,14))*x,
       7*B**3+553*B**2+11725*B+16875),
      ((1,2),x**3+B*x**2+A*x-3*A-sp.Rational(7,2)*B-sp.Rational(55,14),
       (-3*A-sp.Rational(7,2)*B-sp.Rational(55,14))+(-A-sp.Rational(7,4)*B-sp.Rational(55,28))*x+(B/sp.Integer(4)-sp.Rational(11,28))*x**2+sp.Rational(3,7)*x**3,
       218750*B**3+828625*B**2+817124*B+60621),
    ]
    for pair,U,W,P in cases:
        gens=nums_of_rem(W**3+L*x*(x-1)-2*U*W**2,U**2,x)
        Glex=sp.groebner(gens,L,A,B,order='lex')
        stated=[sp.factor(p.as_expr()) for p in Glex.polys]
        check_basis_both_ways(gens,stated,(L,A,B))
        # The elimination cubic must occur and have no F_13 root.
        elim=[p for p in stated if not p.has(A,L) and sp.degree(p,B)==3]
        assert len(elim)==1
        assert sp.rem(sp.Poly(elim[0],B),sp.Poly(P,B)).is_zero
        PP=sp.Poly(P,B,modulus=13)
        assert all(int(PP.eval(i))%13 for i in range(13))

def bad_rejections():
    B=sp.symbols('B')
    P=7*B**3-490*B**2+8596*B+13512
    assert any(int(sp.Poly(P-5,B,modulus=13).eval(i))%13==0 for i in range(13))
    y=sp.symbols('y')
    F=256*y**7+1568*y**6+3696*y**5+4200*y**4+2352*y**3+588*y**2+49*y+2
    assert sp.expand(F-2-y*(8*y**3+28*y**2+28*y+7)*(32*y**3+84*y**2+56*y+8))!=0

if __name__=='__main__':
    single_slot_independent()
    split_slot_independent()
    bad_rejections()
    print('PASS independent SEPTIC-ALL checker')
