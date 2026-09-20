#!/usr/bin/env python3
"""Independent degree-complete value checks, with no polynomial-kernel imports.
The stated per-variable degree bounds cover each difference polynomial.
Vanishing on degree+1 distinct values in each coordinate proves the identity.
"""
from itertools import product

# All signed recovery identities: degree <= (4,2,2,1) in (m,P,b,t).
for m,p,b,t in product(range(5),range(3),range(3),range(2)):
    for e in [-1,1]:
        n=2*(m*p+e)**2-1;r=m*p+2*e
        f=[b*b+(2*m*m*p+4*e*m)*b-t*n,
           b*b-(2*m*m*p+4*e*m)*b+t*n,
           b*b-(6*m*m*p+12*e*m)*b+t*n+16*e*m**3*p+28*m*m]
        assert b*(b*p-1)-(t*p-b)*n==p*f[0]
        assert b*(b*p+1)-(b-t*p)*n==p*f[1]
        assert (b*b-4*m*m)*p+3*b-8*e*m-(3*b-8*e*m-t*p)*n==p*f[2]
        assert f[0]==b*b-t+2*m*r*(b-p*t)
        assert f[1]==b*b+t+2*m*r*(p*t-b)
        assert f[2]==b*b+t-4*m*m+r*(2*m*p*t-6*m*b+16*e*m*m)
        assert (3*m*r)**2-t*n-16*e*m**3*p-28*m*m==(9*m**4-2*m*m*t)*p*p+e*(20*m**3-4*m*t)*p+8*m*m-t
# The preceding divided identities, after multiplication by P, have P-degree 3:
# repeat the polynomial relations on the additional P-coordinate needed.
for m,p,b,t in product(range(5),range(4),range(3),range(2)):
    for e in [-1,1]:
        n=2*(m*p+e)**2-1;r=m*p+2*e
        f0=b*b+2*m*r*b-t*n; f1=b*b-2*m*r*b+t*n
        f2=b*b-6*m*r*b+t*n+16*e*m**3*p+28*m*m
        assert b*(b*p-1)-(t*p-b)*n==p*f0
        assert b*(b*p+1)-(b-t*p)*n==p*f1
        assert (b*b-4*m*m)*p+3*b-8*e*m-(3*b-8*e*m-t*p)*n==p*f2
for m,p,b in product(range(5),range(3),range(3)):
    r=m*p-2;n=2*(m*p-1)**2-1;z=m*m*(m*p-1)*(3*m*p-5)
    assert b*b+2*m*r*b-m*m*n==(b+m*r)**2-z
    assert b*b-6*m*r*b+3*m*m*n-16*m**3*p+28*m*m==(b-3*m*r)**2-z
for p,b,t in product(range(4),range(4),range(3)):
    n=2*(p+1)**2-1;f=(b+p+2)**2-(p+1)*(3*p+5)
    assert b*(b*p-1)-(p-b)*n==p*f
    assert (p+1)*((p+1)*p-1)-(p-1)*n==-p*(p*p-3)
    assert (p+2)*((p+2)*p-1)-(p-2)*n==-p*(p*p-4*p-10)
    assert (p+1)*((p+1)*p+1)-n==p*(p*p-2)
    assert (p+2)*((p+2)*p+1)-2*n==p*(p*p-3)
    assert (p+2-3+3*p+6)**2-9*(p+1)*(3*p+5)==-(p+2)*(11*p+10)
    assert (2*(p+2)-3+3*p+6)**2-9*(p+1)*(3*p+5)==-2*(p-1)*(p+2)
    assert (b*b-4)*p+3*b-8-(3*b-8-t*p)*n==p*((3*p+6-b)**2-((9-2*t)*p*p+(20-4*t)*p+8-t))
    q=b-1+t;nn=2*(q+1)**2-1
    assert b*nn-((b*b-4)*q+3*b-8)==b**3+3*b*b*t+b*b+2*b*t*t+4*t+4
for p,b in product(range(3),repeat=2):
    assert (199*p+660*b)**2-11*(60*p+199*b)**2==p*p-11*b*b
# Four parity cases, not sampling an unbounded parameter.
for p in [1,3,5,7]:
    assert (7*p*p+16*p+7)%8==6
    assert (5*p*p+12*p+6)%8==7
print('PASS_INDEPENDENT_DEGREE_COMPLETE_VALUE_IDENTITIES')
