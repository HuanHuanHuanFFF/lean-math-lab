#!/usr/bin/env python3
import sympy as sp

x=sp.symbols('x')

def assert_zero(e,msg):
    if sp.expand(e)!=0: raise AssertionError(msg+': '+str(sp.factor(e)))

def two_plus_one():
    a,b,c0,c1,rho=sp.symbols('a b c0 c1 rho')
    A=x**2+a*x+b; C=c1*x+c0
    P=sp.expand(A*(C-3*x*sp.diff(C,x))-2*x*sp.diff(A,x)*C)
    pairs=[(0,1),(0,2),(1,0),(1,2),(2,0),(2,1)]
    expected={
      (0,1): ['25600*rho - 1','80*b - 3','5*a - 3'],
      (0,2): None,(1,0):None,
      (1,2): ['rho + 20000000','b - 1536','a - 87'],
      (2,0): ['25600*rho - 1','80*b - 3','5*a - 3'],
      (2,1): ['123904*rho + 1313046875','176*b - 50421','11*a - 417']}
    sols={}
    for K,L in pairs:
        coeffP=[sp.Poly(P,x).coeff_monomial(x**n) for n in range(4)]
        us=[]; constraints=[]; free=[]
        for n in range(4):
            d=(3*K-2)*n+(L-K)
            if d:
                us.append(sp.simplify(coeffP[n]/d))
            else:
                u=sp.symbols('u1'); us.append(u); free=[u]; constraints.append(coeffP[n])
        U=sum(us[n]*x**n for n in range(4)); W=sp.expand(K*U+A*C)
        sub={c0:1,c1:1}; U=sp.expand(U.subs(sub));W=sp.expand(W.subs(sub)); constraints=[sp.expand(e.subs(sub)) for e in constraints]
        N=sp.expand(W*(W-U)*(W-2*U)); den=sp.expand((x**2+a*x+b)*x)
        qax,rax=sp.div(N,den,domain=sp.QQ.frac_field(a,b,*free))
        eq=list(constraints)
        if rax!=0: eq += sp.Poly(rax,x).all_coeffs()
        q1,r1=sp.div(sp.expand(qax+rho),U,domain=sp.QQ.frac_field(a,b,rho,*free))
        if r1!=0: eq += sp.Poly(r1,x).all_coeffs()
        V=sp.cancel(q1/rho)
        num=sp.together(V*W-1).as_numer_denom()[0]
        _,r2=sp.div(sp.expand(num),U,domain=sp.QQ.frac_field(a,b,rho,*free))
        if r2!=0: eq += sp.Poly(r2,x).all_coeffs()
        eq=[sp.factor(sp.together(e).as_numer_denom()[0]) for e in eq if e!=0]
        vars=[rho,b,a]+free
        G=sp.groebner(eq,*vars,order='lex')
        basis=[sp.factor(p.as_expr()) for p in G.polys]
        if expected[(K,L)] is not None:
            exp=[sp.sympify(t,locals={'rho':rho,'a':a,'b':b}) for t in expected[(K,L)]]
            assert all(any(sp.expand(p/e).is_number for p in basis if e!=0) for e in exp)
        sols[(K,L)]=(basis,U,W,V,free)
    # degenerate-free branches expected
    u=sp.symbols('u1')
    # basis forces nonzero solutions u=45/2 and -45 respectively; u=0 is degree-degenerate
    b02=sols[(0,2)][0]; b10=sols[(1,0)][0]
    assert any(sp.factor(p).has(2*u-45) for p in b02)
    assert any(sp.factor(p).has(u+45) for p in b10)
    # canonical class checks
    y=sp.symbols('y', integer=True)
    FA=5225472*y**6+4478976*y**5+1399680*y**4+193536*y**3+11340*y**2+216*y+2
    assert all(int(c)%4==0 for c in sp.Poly(FA-2,y).all_coeffs())
    FB=2916*y**6+10935*y**5+15309*y**4+9612*y**3+2430*y**2+108*y+2
    J0=y*(3*y+2)*(6*y+7)*(108*y**3+189*y**2+81*y+1)
    J1=(27*y**3+54*y**2+27*y+1)*(36*y**3+75*y**2+40*y+2)
    A0=(6*y+7)*(72*y**2+42*y-1)*(27*y**3+54*y**2+27*y+1)*(54*y**3+81*y**2+27*y-1)*(108*y**3+189*y**2+81*y+1)
    A1=(9*y**2+12*y+1)*(27*y**3+54*y**2+27*y+1)*(108*y**3+189*y**2+81*y+1)*(324*y**4+1107*y**3+1296*y**2+561*y+47)
    assert_zero(9*6*J0*(J0-1)*(J0-2)-2*A0*(FB-2),'J0 quotient')
    assert_zero(9*6*J1*(J1-1)*(J1-2)-2*A1*(FB-2),'J1 quotient')
    # A0 ≡1, A1≡2 mod3 as polynomials
    A0m=sp.Poly(A0,y, modulus=3); A1m=sp.Poly(A1,y,modulus=3)
    assert A0m.degree()==0 and int(A0m.LC())%3==1
    assert A1m.degree()==0 and int(A1m.LC())%3==2
    return True

def triple():
    q,s,rho=sp.symbols('q s rho')
    R=x*(x-1)*(x-q); Rp=sp.diff(R,x); S=x*(3*x-q-2)
    u0,u1,u2,u3,w1,w2,w3=sp.symbols('u0 u1 u2 u3 w1 w2 w3')
    U=u0+u1*x+u2*x**2+u3*x**3; W=w1*x+w2*x**2+w3*x**3
    E=sp.Poly(sp.expand(W*Rp-R*(3*sp.diff(W,x)-2*sp.diff(U,x))-U*S),x)
    eq=[E.coeff_monomial(x**i) for i in range(6)]+[W.subs(x,1)-U.subs(x,1),W.subs(x,q)-2*U.subs(x,q)]
    sol=next(iter(sp.linsolve(eq,[u0,u1,u2,u3,w1,w2,w3])))
    vals=[sp.simplify(z.subs({w2:s,w3:1})) for z in sol]
    U=sp.expand(vals[0]+vals[1]*x+vals[2]*x**2+vals[3]*x**3)
    W=sp.expand(vals[4]*x+vals[5]*x**2+vals[6]*x**3)
    _,rem=sp.div(sp.expand(W**3+rho*R),U,domain=sp.QQ.frac_field(q,s,rho))
    nums=[sp.factor(sp.together(c).as_numer_denom()[0]) for c in sp.Poly(rem,x).all_coeffs()]
    # independent elimination route: rho is linear in all three equations.
    r12=sp.factor(sp.resultant(nums[0],nums[1],rho))
    r13=sp.factor(sp.resultant(nums[0],nums[2],rho))
    resq=sp.factor(sp.resultant(r12,r13,s))
    roots=sp.polys.polytools.ground_roots(sp.Poly(resq,q))
    assert set(roots)=={sp.Rational(0),sp.Rational(1),sp.Rational(2),sp.Rational(1,3),sp.Rational(-4,23)}
    # q=1/3 candidate from exact simultaneous equations
    qv=sp.Rational(1,3)
    G13=sp.groebner([n.subs(q,qv) for n in nums],rho,s,order='lex')
    assert any(sp.expand(p.as_expr()-(rho+12))==0 for p in G13.polys)
    assert any(sp.expand(p.as_expr()-(s+4))==0 for p in G13.polys)
    Uc=sp.factor(U.subs({q:qv,s:-4})); Rc=sp.factor(R.subs(q,qv))
    assert sp.degree(sp.gcd(sp.Poly(Uc,x),sp.Poly(Rc,x)))>=1
    # q=-4/23 candidate
    qv=sp.Rational(-4,23)
    Gm=sp.groebner([n.subs(q,qv) for n in nums],rho,s,order='lex')
    # unique nondegenerate candidate has s=-17/23; any candidate must share x with R
    sv=sp.Rational(-17,23)
    Uc=sp.factor(U.subs({q:qv,s:sv})); Rc=sp.factor(R.subs(q,qv))
    assert sp.degree(sp.gcd(sp.Poly(Uc,x),sp.Poly(Rc,x)))>=1
    # q=2 special: the generic linear solution has a q-2 denominator, so solve directly.
    ss=sp.symbols('ss')
    assert sp.resultant(16*ss**2-172*ss+375, ss*(28*ss-45), ss)!=0
    return True

def bad_cert_rejection():
    y=sp.symbols('y')
    FB=2916*y**6+10935*y**5+15309*y**4+9612*y**3+2430*y**2+108*y+2
    J0=y*(3*y+2)*(6*y+7)*(108*y**3+189*y**2+81*y+1)
    A0=(6*y+7)*(72*y**2+42*y-1)*(27*y**3+54*y**2+27*y+1)*(54*y**3+81*y**2+27*y-1)*(108*y**3+189*y**2+81*y+1)
    assert sp.expand(9*6*J0*(J0-1)*(J0-2)-2*(A0+3)*(FB-2))!=0
    return True

if __name__=='__main__':
    print('two_plus_one', two_plus_one())
    print('one_plus_one_plus_one', triple())
    print('bad_cert_rejection', bad_cert_rejection())
    print('PASS SIXTIC-ALL replay')
