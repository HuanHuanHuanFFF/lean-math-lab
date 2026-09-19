"""Explicit diagnostics. None is a model of all remaining NC6 conditions."""
from __future__ import annotations
from fractions import Fraction
from arithmetic import crt,exponential_lift,sqrt_lift_unit,mod_fraction,vp
from recovery import polynomial_K

G=154190


def local_family(r: int,m: int) -> dict:
    if m<1 or r not in (3,4): raise ValueError('r=3/4 and m>=1 required')
    if r==3:
        p=7;e=2*m+1;w=e+1
        n=p**w+p**e+3;j=p**e+3
        E3=p**e;E4=1
    else:
        p=11;e=2*m;w=e
        n=3*p**e+4;j=p**e+4
        E3=1;E4=p**e
    k=n-j;u=Fraction(j*k,n-1)
    x=Fraction(n-3,3);q4=Fraction(n-4,2)
    I3=x/E3;C=Fraction(1);A4=q4/E4
    L3=(n-3*u)/(3*I3*C)
    L4=polynomial_K(n,u)/(24*x*A4*C*C)
    y=(u-1)/(I3*A4)
    B=polynomial_K(n,u)/(6*x)
    V4=2*n+4-9*u
    return dict(r=r,m=m,p=p,e=e,w=w,n=n,j=j,k=k,U=u,E3=E3,E4=E4,
                I3=I3,A4=A4,C=C,L3=L3,L4=L4,y=y,B=B,V4=V4,
                full_remaining_RES10_model=False,
                omitted='Global pure-3 alpha, global ten-square, full-source allocation, and global quotient integrality.')


def coupled_model(m3: int,m4: int,E: int,extra_precision: int=0) -> dict:
    """One symbolic integer pair with arbitrary simultaneous selected defects.

    n=G*3^a is deliberately not materialized. beta is an exact integer.
    First-source divisibility is deliberately false, and prime 17 is an
    actual common witness. Local agreement is not global NC6.
    """
    if min(m3,m4)<1 or E<3 or extra_precision<0:
        raise ValueError('m3,m4>=1, E>=3, extra_precision>=0')
    e7=2*m3+1;w7=e7+1;e11=2*m4;w11=e11
    H7=w7+4+extra_precision;H11=w11+4+extra_precision
    p7=7**H7;p11=11**H11
    n7=3+7**e7+7**w7;j7=3+7**e7
    n11=4+3*11**e11;j11=4+11**e11
    b=3**60;A=G*3**43
    t7,M7=exponential_lift(A,b,n7,7,1,H7)
    t11,M11=exponential_lift(A,b,n11,11,2,H11)
    t5,M5=exponential_lift((G//5)*3**43,b,1+5**(E-1),5,2,E)
    t,M=crt([(t7,M7),(t11,M11),(t5,M5)])
    beta,beta_modulus=crt([(j7*pow(G,-1,p7)%p7,p7),
                          (j11*pow(G,-1,p11)%p11,p11),
                          (1,3),(15,17),(5,25),(2,8)])
    # This deliberately forces n-1>j(j-1), certifying first-source failure.
    minimum_a=2*G*beta*beta+10
    a=43+60*t
    if a<minimum_a:
        t+=((minimum_a-a+60*M-1)//(60*M))*M
        a=43+60*t
    checks=[]
    roots=[]
    for p,H,nn,jj,w in [(7,H7,n7,j7,w7),(11,H11,n11,j11,w11)]:
        modulus=p**H
        assert G*pow(3,a,modulus)%modulus==nn%modulus
        assert G*beta%modulus==jj%modulus
        Umod=(jj*(nn-jj)*pow(nn-1,-1,modulus))%modulus
        assert vp(Umod,p)==w
        precision=H-w
        c=(Umod//p**w)*pow(10*G*G,-1,p**precision)%p**precision
        root=sqrt_lift_unit(c,p,precision)
        zmod=p**(w//2)*root
        assert (10*G*G*zmod*zmod-Umod)%modulus==0
        roots.append((zmod,modulus))
        checks.append({'p':p,'source_exponent':(e7 if p==7 else e11),
                       'vp_jk':w,'H':H,'z_residue':str(zmod),
                       'modulus':str(modulus),
                       'all_target_layers_through_H_have_no_carry':True})
    common_z,common_z_modulus=crt(roots)
    assert G*pow(3,a,9000)%9000==5130
    assert G*pow(3,a,5**(E+1))%(5**(E+1))==(5+5**E)%(5**(E+1))
    assert beta%3==1 and beta%17==15 and beta%25==5
    assert a>=minimum_a
    n17=G*pow(3,a,17**2)%(17**2)
    j17=G*beta%(17**2)
    assert n17<j17==272
    return {'schema':1,'model':'symbolic exact pair with coupled finite local data',
            'G':G,'a':str(a),'beta':str(beta),'E':E,'m3':m3,'m4':m4,
            'n':'154190*3^a','j':'154190*beta','actual_gcd':G,
            'row_mod_9000':5130,'actual_alpha':'3^a',
            'first_source_failure_bound':'a >= 2*G*beta^2+10 implies n-1>j(j-1)',
            'selected_local_data':checks,'common_local_z':str(common_z),
            'common_local_z_modulus':str(common_z_modulus),
            'true_common_prime':17,'source_vp_17':1,
            'carry_at_17_squared':{'n_mod_289':n17,'j_mod_289':j17},
            'global_ten_square':'not asserted',
            'global_L3_L4_integer':'not asserted; they are positive rational and local units at 7/11',
            'full_remaining_RES10_model':False}
