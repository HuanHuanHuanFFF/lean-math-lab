"""Independent stdlib rational-polynomial verification of the adopted SIXG identity.

The source's coefficients are reconstructed directly from falling factorials.
No source program or CAS is imported. Positivity and NC implications are paper steps.
"""
from fractions import Fraction as F
from math import factorial
from pathlib import Path
import json
import time


def clean(a):
    return {k:v for k,v in a.items() if v}


def add(*args):
    out={}
    for a in args:
        for k,v in a.items():
            out[k]=out.get(k,F(0))+v
    return clean(out)


def scale(a,c):
    return clean({k:v*c for k,v in a.items()})


def mul(a,b):
    out={}
    for (i,j),x in a.items():
        for (k,l),y in b.items():
            ij=(i+k,j+l)
            out[ij]=out.get(ij,F(0))+x*y
    return clean(out)


def product(*args):
    out={(0,0):F(1)}
    for a in args:
        out=mul(out,a)
    return out


def power(a,n):
    return product(*([a]*n))


ONE={(0,0):F(1)}
J={(1,0):F(1)}
K={(0,1):F(1)}


def minus_const(a,c):
    return add(a,scale(ONE,-c))


def choose(a,t):
    return scale(product(*(minus_const(a,r) for r in range(t))),F(1,factorial(t)))


def serialize(poly):
    return [[i,j,c.numerator,c.denominator] for (i,j),c in sorted(poly.items())]


def main():
    started=time.perf_counter()
    a=[mul(choose(J,t),choose(K,6-t)) for t in range(7)]
    aa=add(scale(power(a[3],2),3),scale(mul(a[2],a[4]),-8),
           scale(mul(a[1],a[5]),20),scale(mul(a[0],a[6]),-120))
    q0=add(scale(mul(a[0],a[4]),10),scale(mul(a[1],a[3]),-5),scale(power(a[2],2),2))
    q1=add(scale(mul(a[0],a[5]),50),scale(mul(a[1],a[4]),-10),scale(mul(a[2],a[3]),2))
    q2=add(scale(mul(a[0],a[6]),150),scale(mul(a[2],a[4]),-6),scale(power(a[3],2),3))
    q3=add(scale(mul(a[1],a[6]),50),scale(mul(a[2],a[5]),-10),scale(mul(a[3],a[4]),2))
    q4=add(scale(mul(a[2],a[6]),10),scale(mul(a[3],a[5]),-5),scale(power(a[4],2),2))
    bb=add(scale(mul(q0,q4),12),scale(mul(q1,q3),-3),power(q2,2))
    dd=add(scale(power(aa,2),11),scale(bb,-8))
    n=add(J,K)
    x=mul(J,K)
    b1=add(x,scale(n,-1),ONE)
    b2=add(x,scale(n,-2),scale(ONE,4))
    tail=add(mul(minus_const(n,2),minus_const(n,3)),scale(x,-1))
    expected_a=scale(product(x,b1,b2,minus_const(n,3),minus_const(n,4),minus_const(n,5)),F(1,72))
    expected_d=scale(product(power(x,2),power(b1,2),b2,power(minus_const(n,5),2),
                             power(minus_const(n,4),2),minus_const(n,3),tail),F(1,1728))
    assert aa==expected_a and dd==expected_d
    assert max(sum(ij) for ij in dd)==17
    # Center j=k=t. The exact cancellation yielding the published upper bound.
    central={}
    for (i,j),c in dd.items():
        ij=(i+j,0)
        central[ij]=central.get(ij,F(0))+c
    central=clean(central)
    nn=scale(J,2)
    prod6=product(*(minus_const(nn,r) for r in range(6)))
    quad=add(scale(power(nn,2),3),scale(nn,-20),scale(ONE,24))
    denominator=scale(product(power(minus_const(nn,1),4),power(minus_const(nn,3),3),
                              power(minus_const(nn,5),2)),2**18*27)
    assert mul(central,denominator)==mul(power(prod6,4),quad)
    # n=16+s lower bounds used for positivity and monotonicity in X.
    nn=add(J,scale(ONE,16))
    pos=add(product(minus_const(nn,2),minus_const(nn,3)),scale(power(nn,2),F(-1,4)))
    derivative=add(scale(product(minus_const(nn,2),minus_const(nn,3)),2),scale(power(nn,2),F(-3,4)))
    assert all(c>0 for c in pos.values()) and all(c>0 for c in derivative.values())
    out={'status':'all_rational_coefficient_identities_passed','A_terms':len(aa),'D6_terms':len(dd),
         'D6_degree':17,'A_coefficients':serialize(aa),'D6_coefficients':serialize(dd),
         'last_factor_at_n16':serialize(pos),'derivative_factor_at_n16':serialize(derivative),
         'center_cancellation':True,'seconds':time.perf_counter()-started}
    path=Path(__file__).with_suffix('.json')
    path.write_text(json.dumps(out,indent=2),encoding='utf-8')
    print(json.dumps({k:out[k] for k in ('status','A_terms','D6_terms','D6_degree','center_cancellation','seconds')}))


if __name__=='__main__':
    main()
