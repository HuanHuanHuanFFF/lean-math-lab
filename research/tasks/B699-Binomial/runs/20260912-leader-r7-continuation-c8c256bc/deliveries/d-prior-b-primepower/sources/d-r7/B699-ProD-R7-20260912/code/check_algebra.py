#!/usr/bin/env python3
"""Sparse-integer-polynomial and exact congruence regressions (standard library)."""
from __future__ import annotations
import json
from math import isqrt

DIM = 6
ZERO = (0,)*DIM


class Poly:
    def __init__(self, value=0):
        self.d = ({ZERO:value} if value else {}) if isinstance(value, int) else {k:v for k,v in value.items() if v}
    def __add__(self, other):
        other = other if isinstance(other, Poly) else Poly(other)
        d = self.d.copy()
        for k,v in other.d.items(): d[k] = d.get(k,0)+v
        return Poly(d)
    __radd__ = __add__
    def __neg__(self): return Poly({k:-v for k,v in self.d.items()})
    def __sub__(self, other): return self + (-other if isinstance(other,Poly) else -Poly(other))
    def __rsub__(self, other): return -self + other
    def __mul__(self, other):
        other = other if isinstance(other,Poly) else Poly(other)
        d={}
        for a,x in self.d.items():
            for b,y in other.d.items():
                k=tuple(i+j for i,j in zip(a,b)); d[k]=d.get(k,0)+x*y
        return Poly(d)
    __rmul__=__mul__
    def __pow__(self,n):
        if not isinstance(n,int) or n<0: raise ValueError('nonnegative integer exponent required')
        r=Poly(1)
        for _ in range(n): r=r*self
        return r


def var(i):
    ex=[0]*DIM; ex[i]=1
    return Poly({tuple(ex):1})


def main():
    identities=[]
    def check(name, expression):
        if expression.d: raise ValueError(f'nonzero polynomial: {name}')
        identities.append(name)
    M,j,g,u,x,a=[var(i) for i in range(DIM)]
    check('C1 quotient numerator',2*M*j*(j-1)-(2*M+1)*j*(j-2)-j*(2*M+2-j))
    w=M+1-j
    check('C1 conic conversion',3*w*w-(M*M+5*M+3)+(3*j*(2*M+2-j)-M*(2*M+1)))
    check('C1 beta=1',(4*g-1)**2+5*(4*g-1)+3-3*(3*g)**2+(11*g-1)*(g-1))
    check('C1 beta=3',(4*g-1)**2+5*(4*g-1)+3-3*g*g-(13*g*g+12*g-1))
    n=M; k=j
    check('C0 conic conversion',3*(2*k-1)**2-(4*a*(n-1)*(n-2)+3)-4*(3*k*(k-1)-a*(n-1)*(n-2)))
    check('Pell3 conversion',(2*n-3)**2-3*u*u+2-(4*n*n-12*n+11-3*u*u))
    check('Pell6 conversion',2*(2*n-3)**2-3*u*u+1-(8*n*n-24*n+19-3*u*u))
    check('Pell3 forward invariant',(2*x+3*u)**2-3*(x+2*u)**2-(x*x-3*u*u))
    check('Pell3 reverse invariant',(2*x-3*u)**2-3*(2*u-x)**2-(x*x-3*u*u))
    check('Pell6 forward invariant',2*(5*x+6*u)**2-3*(4*x+5*u)**2-(2*x*x-3*u*u))
    check('Pell6 reverse invariant',2*(5*x-6*u)**2-3*(5*u-4*x)**2-(2*x*x-3*u*u))
    aa,b,q,s=var(0),var(1),var(2),var(3)
    nn=q*b+2; jj=q*aa+s; E=(b*s-aa)*(b*(s-1)-aa)
    check('sqrt divisibility identity',b*b*jj*(jj-1)-E-(nn-1)*(aa*aa*(nn-1)+aa*(2*b*s-b-2*aa)))
    for ss in (0,1,2):
        jj=q*aa+ss; EE=(b*ss-aa)*(b*(ss-1)-aa)
        target=[jj*(nn+jj-2),-(jj-1)*(nn-jj-1),(nn-jj)*(2*nn-jj-2)][ss]
        check(f'sqrt product s={ss}',q*q*EE-target)
    allowed=[(m,w) for m in (1,3,5,7) for w in range(8) if (3*w*w-m*m-5*m-3)%8==0]
    if allowed != [(3,1),(3,3),(3,5),(3,7)]: raise ValueError('mod8 alternatives')
    for bound in (48,60):
        survivors=[d for d in range(1,bound+1) if bound%d==0 and d%4==2 and d%3==2]
        if survivors != [2]: raise ValueError('small divisor elimination')
    pell_counts={}
    # This tests the all-positive-solutions claim only up to x=50000;
    # the proof of completeness for all x is the descent in PROOFS.md.
    for D in (3,6):
        actual=[]
        for xx in range(1,50001):
            num=xx*xx+2 if D==3 else 2*xx*xx+1
            if num%3: continue
            yy=isqrt(num//3)
            if 3*yy*yy==num: actual.append((xx,yy))
        orbit=[]; xx=yy=1
        while xx<=50000:
            orbit.append((xx,yy))
            xx,yy=(2*xx+3*yy,xx+2*yy) if D==3 else (5*xx+6*yy,4*xx+5*yy)
        if actual!=orbit: raise ValueError('Pell orbit prefix mismatch')
        pell_counts[str(D)]=len(actual)
    if 3*7953**2 != 4*83**4-12*83**2+11: raise ValueError('quartic boundary witness')
    print(json.dumps({'status':'PASS','symbolic_identities':len(identities),'identity_names':identities,
                      'mod8_survivors':allowed,'Pell_prefix_x_max':50000,'Pell_prefix_counts':pell_counts,
                      'false_general_quartic_claim_witness':[83,7953]},sort_keys=True))


if __name__=='__main__':main()
