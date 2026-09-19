#!/usr/bin/env python3
"""Exact symbolic identities + independently computed bounded regressions.
Requires SymPy for polynomial identities; no numerical root finding is used.
"""
import argparse
import json
import math
import platform
from functools import reduce
from pathlib import Path
import sympy as S


def ensure(x, message):
    if not x:
        raise ValueError(message)


def integer_cuberoot(x):
    lo, hi = 0, 1 << ((x.bit_length()+2)//3)
    while lo+1 < hi:
        mid = (lo+hi)//2
        if mid**3 <= x:
            lo = mid
        else:
            hi = mid
    return hi if hi**3 == x else lo


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--output', type=Path, required=True)
    ap.add_argument('--cube-hits', type=Path, required=True)
    args = ap.parse_args()
    n,j,l,h,Z,Y = S.symbols('n j ell h Z Y')
    k=n-j
    b=3*l*j/n
    cc=3*l*j*(j-1)/(n*(n-1))
    d=l*j*(j-1)*(j-2)/(n*(n-1)*(n-2))
    I=b*b-3*l*cc
    JB=2*b**3-9*l*b*cc+27*l*l*d
    aa,bb0,cc0,dd0=S.symbols('aa bb0 cc0 dd0')
    generic_disc=S.discriminant(aa*Z**3+bb0*Z**2+cc0*Z+dd0,Z)
    Delta=generic_disc.subs({aa:l,bb0:-b,cc0:cc,dd0:-d})
    I0=9*l*l*j*k/(n*n*(n-1))
    J0=54*l**3*j*k*(n-2*j)/(n**3*(n-1)*(n-2))
    D0=108*l**4*j*j*k*k*(j-1)*(k-1)/(n**4*(n-2)**2*(n-1)**3)
    checks={}
    def identity(name, expression):
        numerator=S.together(expression).as_numer_denom()[0]
        ensure(S.expand(numerator)==0, name)
        checks[name]='ZERO_EXACT_RATIONAL_FUNCTION'
    identity('I_raw',I-I0)
    identity('J_raw',JB-J0)
    identity('discriminant_raw',Delta-D0)
    identity('discriminant_IJ',4*I**3-JB**2-27*l*l*Delta)
    identity('original_n_recovery',n*I-3*l*(b-cc))
    identity('original_j_recovery',j*I-b*(b-cc))
    M=(n*j*k)**2*(n-2)*(j-1)*(k-1)
    identity('raw_cube_bridge', (2*Delta/l*(n*h)**3-M).subs(l,n*(n-1)*(n-2)/(6*h)))
    def choose3poly(x,r):
        return S.prod(x-i for i in range(r))*S.Rational(1,math.factorial(r))
    F=sum(choose3poly(j,r)*choose3poly(k,3-r)*Y**r for r in range(4))
    transform=S.expand(Z**3*F.subs(Y,1-1/Z))
    raw_coeff=n*(n-1)*(n-2)/6
    identity('integral_cubic_transform',transform-(l*Z**3-b*Z**2+cc*Z-d).subs(l,raw_coeff))
    mat=S.Matrix([[S.expand(Z**(3-r)*(Z-1)**r).coeff(Z,i) for r in range(4)] for i in range(4)])
    ensure(abs(mat.det())==1,'content transform is not unimodular')
    checks['content_transform_determinant']=int(mat.det())
    C,u,g,H,z,N,c,lam,mu,dd,a = S.symbols('C u g H z N c lambda mu d alpha')
    Ie=9*(1/(c*g))**2*(N*C*u*g*g)/(lam*N)
    Je=54*(1/(c*g))**3*(N*C*u*g*g)*(2*g*dd*H)/(lam*N*2*mu*C*H)
    De=108*(1/(c*g))**4*(N*C*u*g*g)**2*(N*z*H*H)/((2*mu*C*H)**2*(lam*N)**3)
    identity('BE_I',Ie-9*C*u/(lam*c*c))
    identity('BE_J',Je-54*u*dd/(c**3*lam*mu))
    identity('BE_Delta',De-27*u*u*z/(c**4*lam**3*mu**2))
    identity('BE_squareclass',De-(3*u/(c*c*lam*lam*mu))**2*(3*lam*z))
    identity('BE_cubeclass',2*De/(a/c)-(3/(c*lam*mu))**3*(2*mu*u*u*z/a))
    rho=(2*mu*C*H)*(N*z*H*H)/((a*g)*(g*g*N*C*u))
    identity('rho_E_bridge',rho-(H/(u*g))**3*(2*mu*u*u*z/a))
    # Numeric checks rebuild actual F and content, without the symbolic coefficient ratios.
    actual=0
    for nn in range(8,151):
        for jj in range(4,nn//2+1):
            kk=nn-jj
            ff=[math.comb(jj,r)*math.comb(kk,3-r) for r in range(4)]
            hh=reduce(math.gcd,ff)
            ll=sum(ff)//hh
            bb=(ff[1]+2*ff[2]+3*ff[3])//hh
            cv=(ff[2]+3*ff[3])//hh
            dv=ff[3]//hh
            iv=bb*bb-3*ll*cv
            jv=2*bb**3-9*ll*bb*cv+27*ll*ll*dv
            delt=bb*bb*cv*cv-4*ll*cv**3-4*bb**3*dv-27*ll*ll*dv*dv+18*ll*bb*cv*dv
            mm=(nn*jj*kk)**2*(nn-2)*(jj-1)*(kk-1)
            ensure(delt>0,'nonpositive actual discriminant')
            ensure(2*delt*(nn*hh)**3==ll*mm,'actual raw cube bridge')
            ensure(4*iv**3-jv*jv==27*ll*ll*delt,'actual discriminant identity')
            ensure(nn*iv==3*ll*(bb-cv) and jj*iv==bb*(bb-cv),'actual recovery')
            # Correct coefficient identity includes binom(3,r).
            for r in range(4):
                ensure(math.comb(nn,jj)*ff[r] == math.comb(nn,3)*math.comb(3,r)*math.comb(nn-3,jj-r), 'content divisibility identity')
            actual+=1
    hits=set()
    pairs=0
    for nn in range(8,301):
        for jj in range(4,nn//2+1):
            kk=nn-jj
            mm=(nn*jj*kk)**2*(nn-2)*(jj-1)*(kk-1)
            root=integer_cuberoot(mm)
            if root**3==mm:
                hits.add((nn,jj,root))
            pairs+=1
    recorded=set()
    for line in args.cube_hits.read_text().splitlines():
        row=tuple(map(int,line.split(',')))
        if row[0]<=300:
            recorded.add(row)
    ensure(hits==recorded, 'Python / C++ cube-search prefix mismatch')
    result={'status':'PASS_EXACT_IDENTITIES_AND_BOUNDED_REGRESSION',
            'symbolic_checks':checks,'actual_cubic_pairs_n_le_150':actual,
            'independent_cube_pairs_n_le_300':pairs,'independent_cube_hits_n_le_300':len(hits),
            'python':platform.python_version(),'sympy':S.__version__,
            'scope_note':'Exact identities are polynomial checks. Finite regressions do not prove the NC implication or nonempty new coverage.'}
    args.output.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({k:v for k,v in result.items() if k!='symbolic_checks'}))

if __name__=='__main__':
    main()
