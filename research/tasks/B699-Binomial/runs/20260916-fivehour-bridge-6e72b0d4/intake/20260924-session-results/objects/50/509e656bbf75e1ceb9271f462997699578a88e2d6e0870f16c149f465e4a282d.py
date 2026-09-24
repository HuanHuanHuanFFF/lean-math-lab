"""Symbolic certificates and exact applications; not an infinite-quantifier checker."""
import sys, json, hashlib
from pathlib import Path
from math import gcd
import sympy as s
from gate import row_predicate, evaluate, delta_max, beta_bound

x=s.symbols('x')

def coeffs(f):
    P=s.Poly(f,x,domain=s.QQ)
    return [str(P.nth(i)) for i in range(P.degree()+1)]

def integer_coeffs(f):
    c=coeffs(f)
    assert all(s.Rational(a).q==1 for a in c)
    return [int(a) for a in c]

def val(a,p):
    assert a>0
    e=0
    while a%p==0:
        a//=p; e+=1
    return e

def vbin(n,j,p):
    total=0; q=p
    while q<=n:
        total+=n//q-j//q-(n-j)//q
        q*=p
    return total

def main(out):
    U,V,W,R,Up,Vp,Wp,Rp=s.symbols('U V W R Up Vp Wp Rp')
    F=W*(W-U)*(W-2*U)-(U*V-1)*R
    Fp=sum(s.diff(F,z)*zp for z,zp in [(U,Up),(V,Vp),(W,Wp),(R,Rp)])
    G=V*W-1
    D=W*Rp-R*(3*Wp-2*Up)
    tail=s.cancel((D-(W*Fp-3*(Wp-Up)*F+Up*G*R))/U)
    assert s.denom(tail)==1
    assert s.expand(D-(W*Fp-3*(Wp-Up)*F+Up*G*R+U*tail))==0
    d,r,t=s.symbols('d r t')
    assert s.expand((3*r-d)*t-r*(3*t-2)-(2*r-d*t))==0
    a,b,c,ap,bp,cp=s.symbols('a b c ap bp cp')
    Sp=a*bp*c+2*a*b*cp
    RRp=ap*b*c+a*bp*c+a*b*cp
    identities=[s.expand(Sp-a*(bp*c+2*b*cp)),
                s.expand(Sp-RRp-b*(-ap*c+a*cp)),
                s.expand(Sp-2*RRp-c*(-2*ap*b-a*bp))]
    assert identities==[0,0,0]
    symbolic={'DIFF_exact_tail':str(s.expand(tail)),
              'DIFF_identity':'D=W*Fprime-3*(Wprime-Uprime)*F+Uprime*(V*W-1)*R+U*tail',
              'SLOT_three_identities':'PASS','general_leading_weight':'2*r-d*t',
              'pseudo_remainder_bound_ratio':'3/4', 'status':'PASS'}

    models=[]
    for kind in ('quadratic','quintic'):
        for g in (1,2,3,5,7):
            y=10*x**g
            if kind=='quadratic':
                u=1+2*x**g; v=1+6*x**g; w=x**g
            else:
                u=4*y*y+6*y+1
                v=12*y**3+32*y*y+19*y+1
                w=s.expand(4*y*(4*y+5)/5)
            f=s.expand(1+u*v); j=s.expand(v*w)
            wb, rem=s.div(f-j,u,x,domain=s.QQ); assert rem==0
            assert all(a>=0 for a in integer_coeffs(j))
            assert all(a>=0 for a in integer_coeffs(f-j))
            assert all(s.Rational(a).q==1 for a in coeffs(wb))
            assert s.rem(v*w-1,u,x)==0
            rr,rem=s.div(w*(w-u)*(w-2*u),f-2,x,domain=s.QQ); assert rem==0
            dif=s.expand(w*s.diff(rr,x)-rr*(3*s.diff(w,x)-2*s.diff(u,x)))
            assert s.rem(dif,u,x)==0
            assert s.rem(w**3+rr-2*u*w*w,u*u,x)==0
            first_q,first_rem=s.div(j*(j-1),f-1,x,domain=s.QQ)
            assert first_rem==0 and all(s.Rational(a).q==1 for a in coeffs(first_q))
            deg=s.degree(f,x); A=s.LC(s.Poly(f,x)); B=s.LC(s.Poly(j,x))
            assert B**2 % A == 0 and deg*B % A == 0
            slope=s.Rational(B,A); delta=int(slope.q)
            assert 0<slope<1 and int(deg)%delta==0 and int(A)%(delta*delta)==0
            models.append({'kind':kind,'composition_degree':g,'f':integer_coeffs(f),
                           'j':integer_coeffs(j),'U':integer_coeffs(u),'V':integer_coeffs(v),
                           'W':integer_coeffs(w),'Wbar':integer_coeffs(wb),
                           'R':coeffs(rr),'slope':str(slope),'delta':delta,
                           'D':delta_max(int(A),int(deg))})

    applications=[]
    definitions=[('degree15_prime_leading',s.expand(1+(1+x+x**7)*(1+x+5*x**8)),3,121),
                 ('degree10_monic',s.expand(1+sum(x**i for i in range(5))*sum(x**i for i in range(7))),5,65)]
    for name,f,p,e in definitions:
        cc=integer_coeffs(f); pred=row_predicate(cc,p,e)
        assert pred['status']=='SUFFICIENT_PREDICATE_PASS' and pred['n_mod4']==0
        nn=evaluate(cc,p**e); E=val(nn-2,p)
        applications.append({'name':name,'coefficients':cc,'prime':p,'exponent':e,
          'predicate':pred,'n_sha256':hashlib.sha256(str(nn).encode()).hexdigest(),
          'source_exponent':E,'v_p_choose_n_3':E-(p==3)})
    assert s.gcd(1+x+x**7,1+x+5*x**8)==1

    # A squareful-leading application, using an explicitly checked complete factor.
    u=1+2*x+2*x**5; vv=1+2*x**9; ff=s.expand(1+u*vv)
    cf=integer_coeffs(ff); cu=integer_coeffs(u); cv=integer_coeffs(vv)
    assert s.gcd(u,vv)==1
    for block in (cu,cv):
        rev=block[::-1]
        assert rev[-1]==1 and rev[0]%4==2 and all(z%2==0 for z in rev[:-1])
    pred=row_predicate(cf,3,105)
    assert pred['D']==2 and pred['gate_met'] and pred['n_mod4']==0
    beta=beta_bound(2)
    assert s.Rational(9,14)>1-s.Rational(beta.numerator,beta.denominator)
    nn=evaluate(cf,3**105)
    block_apps=[{'name':'degree14_leading4_primary9', 'coefficients':cf,
          'U':cu,'V':cv,'prime':3,'exponent':105,'numeric_predicate':pred,
          'beta':str(beta),'primary_degree':9,'irreducibility_certificate':'reciprocal Eisenstein at 2, both blocks',
          'status':'LC_BLOCK_SUFFICIENT_PREDICATE_PASS',
          'source_exponent':val(nn-2,3),'v_p_choose_n_3':val(nn*(nn-1)*(nn-2)//6,3),
          'n_sha256':hashlib.sha256(str(nn).encode()).hexdigest()}]

    T=103**101; y=10*T
    nn=48*y**5+200*y**4+280*y**3+150*y*y+25*y+2
    jj=(y+2)*(4*y*y+6*y+1)*(12*y*y+20*y+5)//5
    cc=integer_coeffs(48*(10*x)**5+200*(10*x)**4+280*(10*x)**3+150*(10*x)**2+25*(10*x)+2)
    pred=row_predicate(cc,103,101)
    assert pred['gate_met'] and pred['D']==5 and nn%4==0
    assert (jj*(jj-1))%(nn-1)==0
    assert (jj*(jj-1)*(jj-2))%((nn-2)//2)==0
    vc3=val(nn*(nn-1)*(nn-2)//6,5); vcj=vbin(nn,jj,5)
    assert vc3>0 and vcj>0 and 4<=jj<=nn//2
    failure={'description':'Exact original pair, not NC3; full weak windows hold, common prime 5',
             'T':'103^101','degree':5,'A':cc[-1],'D':pred['D'],'gate_met':True,
             'n':str(nn),'j':str(jj),'n_mod4':nn%4,'gcd_n_j':gcd(nn,jj),
             'full_first_window':True,'full_second_window':True,
             'v5_choose_n_3':vc3,'v5_choose_n_j':vcj,
             'leading_digit_denominator':5,'no_NC3_claim':True}
    result={'symbolic':symbolic,'formal_models':models,'applications':applications,
            'block_applications':block_apps,'failure_model':failure,'sympy_version':s.__version__,
            'infinite_proof_status':'author paper, not machine formalization'}
    out.write_text(json.dumps(result,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print('EXACT_IDENTITIES=PASS; FORMAL_MODELS=',len(models))
    print('ORIGINAL_ROW_APPLICATIONS=PASS;',[(a['name'],a['predicate']['degree'],a['source_exponent']) for a in applications])
    print('LC_BLOCK_APPLICATION=PASS; d=14 A=4 primary=9, source exponent',block_apps[0]['source_exponent'])
    print('FAILURE_MODEL=PASS; common 5 valuations',vc3,vcj,'g=',gcd(nn,jj))

if __name__=='__main__':
    main(Path(sys.argv[1]))
