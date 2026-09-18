#!/usr/bin/env python3
"""Exact identities used by the paper proof, not a formal proof of inequalities."""
from __future__ import annotations
from pathlib import Path
import json
import sympy as s

ROOT=Path(__file__).resolve().parents[1]

def main() -> None:
    d,k,a,t,W,E,V,m,v,q,r=s.symbols('d k a t W E V m v q r')
    M=d*d+2*k*d-2*k*k
    B=d*d+k*d-3*k*k
    Dp=3*d*d+4*k*d-12*k*k
    checks=[]
    def zero(name: str, x) -> None:
        z=s.cancel(s.together(x))
        assert z==0,(name,z)
        checks.append(name)
    Q=M*V**2-(d+2*k)*V*E+E**2
    zero('negative_root_factorization',
         (d*V+E)*Q-(d*M*V**3-2*k*k*V*V*E-2*k*V*E*E+E**3))
    zero('quadratic_positive_difference',
         k*k*Q.subs(V,W/k)-B*W*W-k*(W-E)*((d+k)*W-k*E))
    zero('completed_square_discriminant',4*M-(d+2*k)**2-Dp)
    # Here M=mv and E=am are imposed without assuming any other relation.
    X=2*v*V-(d+2*k)*a
    zero('complete_square_over_integer_blocks',
         X*X+(4*m*v-(d+2*k)**2)*a*a-4*m*m*v*q
         -4*v*(v*V*V-(d+2*k)*a*V+a*a*m-m*m*q))
    F=t**4-8*k*k*a*a*t*t+4*k**4*a**4
    R=t*t-2*k*a*a*(d+3*k)
    Rbar=t*t+2*k*a*a*(d-k)
    zero('full_valuation_norm_identity',F-R*Rbar-4*k*k*a**4*M)
    zero('tau_upper_bound_gap',4*M-2*k*d-4*k*k-Dp-(d*d+2*k*d))
    zero('M_upper_bound',3*d*d-2*M-(d-2*k)**2)
    zero('B_lower_bound',B-d*d-k*(d-3*k))
    z=s.symbols('z')
    zero('quartic_lower_margin',(z*z-8*z+4)+3-(z-1)*(z-7))
    zero('quartic_upper_margin',4-(z*z-8*z+4)-z*(8-z))
    zero('terminal_F_253',F.subs({k:3,a:1,t:1})-253)
    zero('terminal_M_shift',M.subs(k,3)-(d+3)**2+27)
    # Original j recovery: the square condition is not a discriminant of either cubic.
    n,J,g,H,lam,mu=s.symbols('n J g H lam mu',nonzero=True)
    D=(n-1)*(n-2)
    r1=J-n+1
    Sorig=r1*((n-1)*D**2+r1*(D-4*J)**2)
    zero('original_square_polynomial_two_forms',
         Sorig-J*r1*(D**2-8*D*r1+16*J*r1))
    zz=lam*r1/((n-1)*H**2)
    eps=lam*mu*H*(D-4*J)/D
    A=lam**3*mu**2
    zero('original_square_class_second_norm',
         zz*(zz*eps**2+A)/g**2-lam**4*mu**2*Sorig/(g*g*H*H*(n-1)**2*D**2))
    # Positivity certificates on the entire permitted d-intervals.
    x=s.symbols('x',nonnegative=True)
    positive=[]
    for kap,d0 in [(1,3),(3,5)]:
        for name,expr in [('Dplus',Dp),('kappa_times_X_lower',2*d*d+3*k*d-6*k*k)]:
            p=s.Poly(s.expand(expr.subs({k:kap,d:d0+x})),x)
            coeff=[int(y) for y in reversed(p.all_coeffs())]
            assert all(y>0 for y in coeff)
            positive.append({'kappa':kap,'d0':d0,'name':name,'ascending_coefficients':coeff})
    out={'identity_count':len(checks),'identities':checks,
         'positive_polynomial_certificates':positive,
         'status':'exact identities verified; infinite argument remains a paper proof'}
    (ROOT/'outputs/symbolic.json').write_text(json.dumps(out,indent=2,sort_keys=True)+'\n')
    print(f'Exact symbolic identities: {len(checks)}; positive coefficient certificates: {len(positive)}')

if __name__=='__main__': main()
