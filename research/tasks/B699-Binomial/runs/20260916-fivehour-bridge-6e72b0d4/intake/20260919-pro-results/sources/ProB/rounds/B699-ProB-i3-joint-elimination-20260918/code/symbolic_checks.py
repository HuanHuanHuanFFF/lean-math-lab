#!/usr/bin/env python3
"""Exact identities, not an unrestricted NC3 search or finite closure proof."""
from __future__ import annotations
import json
from pathlib import Path
import sympy as s

BASE = Path(__file__).resolve().parents[1]

def main() -> None:
    y, sig = s.symbols('y sigma')
    n,j,h=s.symbols('n j h')
    P=sig*y**3-2*y**2-2*y+1
    G=2*sig**2*y**3-8*sig*y**2+(8-5*sig)*y+sig+10
    f=sig*y**2-2*y-2
    checks={}
    def zero(name,expr):
        value=s.cancel(expr)
        assert value==0,(name,value)
        checks[name]=True
    zero('recovery_discriminant_elimination',f*f-(sig*(y-1)-2)*(2*P-1)/2-G/2)
    zero('recovery_discriminant',s.discriminant(P,y)-(-27*sig**2+104*sig+48))
    zero('gap_cubic_discriminant',s.discriminant(G,y)+4*sig**4*(27*sig**2-70*sig-36))
    zero('P_G_formal_resultant',s.resultant(P,G,y)+sig**5*(sig-3))
    d,k=s.symbols('d kappa')
    M=d*d+2*k*d-2*k*k; B=d*d+k*d-3*k*k
    zero('negative_family_rho_minus_3',d*M-3*k**3-(d+k)*B)
    zero('negative_family_rho_minus_4',d*M-4*k**3-(d+2*k)*(d*d-2*k*k))
    zero('negative_factorization',P.subs(sig,d*M/k**3)-
         (d*y/k+1)*(M*y*y/k**2-(d+2*k)*y/k+1))
    M1=M.subs(k,1);B1=B.subs(k,1)
    zero('missing_B_formal_resultant',s.resultant(G.subs(sig,d*M1),B1,d)-
         (y-1)**2*(18*y*y-6*y-13)**2)
    zero('sigma3_P',P.subs(sig,3)-(y-1)*(3*y*y+y-1))
    zero('sigma3_G',G.subs(sig,3)-(y-1)*(18*y*y-6*y-13))
    ell=n*(n-1)*(n-2)/(6*h)
    b=j*(n-1)*(n-2)/(2*h)
    c=j*(j-1)*(n-2)/(2*h)
    d0=j*(j-1)*(j-2)/(6*h)
    I=b*b-3*ell*c
    JB=2*b**3-9*ell*b*c+27*ell**2*d0
    Disc=(4*I**3-JB**2)/(27*ell**2)
    zero('raw_I',I-j*(n-j)*(n-1)*(n-2)**2/(4*h*h))
    zero('raw_J',JB-j*(n-j)*(n-2*j)*(n-1)**2*(n-2)**2/(4*h**3))
    zero('raw_Disc',Disc-j*j*(n-j)**2*(j-1)*(n-j-1)*(n-1)*(n-2)**2/(12*h**4))
    zero('actual_n_recovery',n*I-3*ell*(b-c))
    zero('actual_j_recovery',j*I-b*(b-c))
    al,bt,g,H=s.symbols('alpha beta g H')
    nv=al*g;jv=bt*g;kv=(al-bt)*g
    N=nv-1;C=(nv-2)/(2*H)
    u=bt*(al-bt)/(N*C)
    z=(jv-1)*(kv-1)/(N*H*H)
    x=u*g*g;e=H-2*x;T=(z*e*e+1)/x;r=e*T
    yy=H/e
    zero('formal_first_norm',x*C-z*H*H-1)
    zero('formal_second_norm',x*T-z*e*e-1)
    zero('formal_P_recovery',nv/2-P.subs({sig:r,y:yy}))
    delta=(al-2*bt)/(2*H)
    zero('formal_gap_recovery',G.subs({sig:r,y:yy})-2*(g*e*delta)**2)
    np=jv*kv
    denominator=(nv-1)*(nv-2)
    y_raw=denominator/(denominator-4*np)
    zero('y_is_same_original_input',yy-y_raw)
    r_raw=(nv/2+2*y_raw*y_raw+2*y_raw-1)/y_raw**3
    zero('rho_is_same_original_input',r-r_raw)
    # These moment coefficients have no arbitrary independent coefficient freedom.
    el=al;bb=3*bt
    cc=bb*(jv-1)/(nv-1)
    dd=bt*(jv-1)*(jv-2)/((nv-1)*(nv-2))
    ii=bb**2-3*el*cc
    jj=2*bb**3-9*el*bb*cc+27*el**2*dd
    dl=(4*ii**3-jj**2)/(27*el**2)
    zero('normalized_I_A1_c1',ii-9*C*u)
    zero('normalized_J_A1_c1',jj-54*u*delta)
    zero('normalized_Disc_A1_c1',dl-27*u*u*z)
    zero('normalized_coupling_A1_c1',delta**2+z*(al/2)**2-u*C**3)
    # General lambda/mu/c scaling, with the E identities explicitly substituted.
    ca,la,mu,Cu,uu,zz,de,alpha=s.symbols('c lam mu C u z delta alpha',nonzero=True)
    ii=9*Cu*uu/(ca**2*la);jj=54*uu*de/(ca**3*la*mu)
    dl=27*uu**2*zz/(ca**4*la**3*mu**2)
    zero('general_invariant_coupling',
         (4*ii**3-jj**2-27*(alpha/ca)**2*dl)-
         2916*uu**2/(ca**6*la**3*mu**2)*(mu**2*uu*Cu**3-la*de**2-zz*alpha**2/4))
    xx,eps,AA,TT,CC,zz=s.symbols('x eps A T C z')
    zero('shifted_support_identity',
         (eps*(4*zz*xx+4*zz*eps+TT)-4*xx*(zz*eps+TT))-
         (eps*TT-4*(xx*TT-zz*eps**2)))
    output={'kind':'exact_symbolic_identities_only','sympy_version':s.__version__,
            'count':len(checks),'checks':checks,
            'warning':'Resultants here are formal identities; P_sigma(y)=n/2 is not P_sigma(y)=0. No NC3 closure is inferred.'}
    (BASE/'outputs'/'symbolic.json').write_text(json.dumps(output,ensure_ascii=False,indent=2)+'\n')
    print(f'SYMBOLIC_IDENTITIES: {len(checks)} exact identities passed')

if __name__=='__main__': main()
