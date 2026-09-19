"""Necessary-condition diagnostics on an actual RES10 integer pair.

No new Common6 consumer is asserted by this module. A failed complete
source window, when found, supplies an actual witness cofactor as usual.
"""
from __future__ import annotations
from fractions import Fraction
from math import gcd, isqrt


def polynomial_K(n: int | Fraction, u: int | Fraction) -> int | Fraction:
    return 10*n*n-36*n*u-34*n+27*u*u+81*u+12


def inspect(n: int, j: int) -> dict:
    if not isinstance(n,int) or not isinstance(j,int):
        raise TypeError('n and j must be integers')
    if n % 9000 != 5130 or not 7 <= j <= n//2:
        raise ValueError('outside the specified RES10 row and target range')
    g=gcd(n,j); alpha=n//g; aa=alpha; exponent=0
    while aa % 3 == 0:
        aa//=3; exponent+=1
    if aa!=1 or exponent<2:
        raise ValueError('alpha is not a pure 3-power with exponent at least 2')
    k=n-j; N=n-1; W=N*j*k
    if W%10 or isqrt(W//10)**2 != W//10:
        raise ValueError('the original ten-times-square condition fails')
    q={1:N,3:(n-3)//3,4:(n-4)//2}
    defects={}
    for r,qr in q.items():
        f=1
        for b in range(r+1): f*=j-b
        d=qr//gcd(qr,f)
        if d>1: defects[str(r)]=str(d)
    if defects:
        return {'status':'SOURCE_WINDOW_FAILURE','new_coverage':False,
                'witness_cofactors':defects,
                'meaning':'Every prime divisor of a listed cofactor is a common prime >=7.'}
    assert j*k%N==0
    U=j*k//N
    E3=gcd(q[3],j*k); E4=gcd(q[4],j*k)
    I3=q[3]//E3; C=gcd(q[4],j-2); A4=gcd(q[4],(j-1)*(k-1))
    assert q[4]==E4*A4*C
    L3=Fraction(n-3*U,3*g*I3*C)
    K=polynomial_K(n,U)
    L4=Fraction(K,24*q[3]*A4*C*C)
    B=Fraction(K,6*q[3]); V4=Fraction(2*n+4-9*U,C*C)
    assert all(x.denominator==1 for x in [L3,L4,B,V4])
    assert L3>0 and L4>0 and V4!=0
    B=int(B); L3=int(L3); L4=int(L4)
    assert B%4==0 and B!=13 and B!=18
    delta3=E3*E3//gcd(E3*E3,j*k)
    delta4=E4*E4//gcd(E4*E4,j*k)
    extracted3=E3//gcd(E3,B-13)
    D=5*n-2-B
    assert D>0
    J4=E4*E4//gcd(E4*E4,D)
    extracted4=J4*(7 if J4%7==0 else 1)
    assert delta3==extracted3 and delta4==extracted4
    assert isqrt(delta3)**2==delta3 and isqrt(delta4)**2==delta4
    assert gcd(L3,E3*E4)==1 and gcd(L4,E4)==1
    return {'status':'EXACT_DEFECT_IDENTITIES','new_coverage':False,
            'g':str(g),'a':exponent,'E3':str(E3),'E4':str(E4),
            'L3':str(L3),'L4':str(L4),'B':str(B),'V4':str(int(V4)),
            'Delta3':str(delta3),'Delta4':str(delta4),'J4':str(J4),
            'seven_correction':7 if J4%7==0 else 1,
            'meaning':'Exact restatement of the previous deficiencies; not a new NC equivalence.'}
