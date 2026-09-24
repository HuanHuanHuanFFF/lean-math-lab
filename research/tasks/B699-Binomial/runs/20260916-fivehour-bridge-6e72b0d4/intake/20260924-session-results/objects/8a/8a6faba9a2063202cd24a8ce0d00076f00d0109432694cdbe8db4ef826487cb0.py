#!/usr/bin/env python3
"""Exact identities and a failed highest-coefficient-only model. Standard library only."""
from fractions import Fraction
from exact_polynomial import Poly
from check_standard import ua, um, up, uc, square_resid

def main():
    M,S,Q = [Poly.variable(3, i) for i in range(3)]
    L = -4 + M*S
    rhs = M**2*S**3 - 8*M*S**2 + (16-5*M)*S + M + 20
    assert M*Q**2 - L**3 - 4*L**2 + 5*M*L - M**2 == M*(Q**2-rhs)
    one = Poly.constant(0, 1); zero=one*0
    mx=[zero, zero, one]
    H=[zero,zero,zero,one]
    V=ua(up(H,2),[zero,zero,-32*one])
    t=-32
    P=ua(ua(um(up(mx,2),up(V,3)),uc(um(mx,up(V,2)),-8*t)),
         ua(uc(um(ua([16*one],uc(mx,-5)),V),t*t),uc(ua(mx,[20*one]),t**3)))
    E,_=square_resid(P,11)
    assert E[10]==0 and E[9]==0 and E[8]==-5120
    print('FOUR_SLOT_TRANSFORMATION_IDENTITY=PASS')
    print('HIGHEST_RESIDUALS_ONLY_COUNTERMODEL=PASS')

if __name__=='__main__':main()
