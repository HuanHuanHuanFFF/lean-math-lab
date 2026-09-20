#!/usr/bin/env python3
"""Coefficient-exact algebra checks (standard library only)."""
from __future__ import annotations
from collections import defaultdict

class Poly:
    def __init__(self,x=0):
        self.d=x if isinstance(x,dict) else ({} if x==0 else {(0,0,0,0):x})
    @staticmethod
    def var(i):
        e=[0]*4;e[i]=1;return Poly({tuple(e):1})
    def __add__(self,o):
        o=o if isinstance(o,Poly) else Poly(o);d=defaultdict(int,self.d)
        for e,a in o.d.items():d[e]+=a
        return Poly({e:a for e,a in d.items() if a})
    __radd__=__add__
    def __neg__(self):return Poly({e:-a for e,a in self.d.items()})
    def __sub__(self,o):return self+-o if isinstance(o,Poly) else self+(-Poly(o))
    def __rsub__(self,o):return Poly(o)+-self
    def __mul__(self,o):
        o=o if isinstance(o,Poly) else Poly(o);d=defaultdict(int)
        for e,a in self.d.items():
            for f,b in o.d.items():d[tuple(x+y for x,y in zip(e,f))]+=a*b
        return Poly({e:a for e,a in d.items() if a})
    __rmul__=__mul__
    def __pow__(self,k):
        assert isinstance(k,int) and k>=0
        z=Poly(1)
        for _ in range(k):z=z*self
        return z


def eq(a,b):
    assert not (a-b).d


def run():
    m,p,b,t=[Poly.var(i) for i in range(4)]
    count=0
    for e in [-1,1]:
        N=2*(m*p+e)**2-1;R=m*p+2*e
        f0=b*b+2*m*R*b-t*N
        f1=b*b-2*m*R*b+t*N
        f2=b*b-6*m*R*b+t*N+16*e*m**3*p+28*m*m
        eq(b*(b*p-1)-(t*p-b)*N,p*f0)
        eq(b*(b*p+1)-(b-t*p)*N,p*f1)
        eq((b*b-4*m*m)*p+3*b-8*e*m-(3*b-8*e*m-t*p)*N,p*f2)
        eq(f0,b*b-t+2*m*R*(b-p*t))
        eq(f1,b*b+t+2*m*R*(p*t-b))
        eq(f2,b*b+t-4*m*m+R*(2*m*p*t-6*m*b+16*e*m*m))
        eq((3*m*R)**2-t*N-16*e*m**3*p-28*m*m,
           (9*m**4-2*m*m*t)*p*p+e*(20*m**3-4*m*t)*p+8*m*m-t)
        count+=7
    R=m*p-2;N=2*(m*p-1)**2-1
    target=m*m*(m*p-1)*(3*m*p-5)
    eq(b*b+2*m*R*b-m*m*N,(b+m*R)**2-target)
    eq(b*b-6*m*R*b+3*m*m*N-16*m**3*p+28*m*m,(b-3*m*R)**2-target)
    count+=2
    # Positive single-slot branch identities.
    N=2*(p+1)**2-1;F=(b+p+2)**2-(p+1)*(3*p+5)
    eq(b*(b*p-1)-(p-b)*N,p*F)
    eq((p+1)*((p+1)*p-1)-(p-1)*N,-p*(p*p-3))
    eq((p+2)*((p+2)*p-1)-(p-2)*N,-p*(p*p-4*p-10))
    eq((p+1)*((p+1)*p+1)-N,p*(p*p-2))
    eq((p+2)*((p+2)*p+1)-2*N,p*(p*p-3))
    eq((p+2-3+3*p+6)**2-9*(p+1)*(3*p+5),-(p+2)*(11*p+10))
    eq((2*(p+2)-3+3*p+6)**2-9*(p+1)*(3*p+5),-2*(p-1)*(p+2))
    eq((b*b-4)*p+3*b-8-(3*b-8-t*p)*N,
       p*((3*p+6-b)**2-((9-2*t)*p*p+(20-4*t)*p+8-t)))
    # Here t is the nonnegative gap P-b+1.
    q=b-1+t;nn=2*(q+1)**2-1
    eq(b*nn-((b*b-4)*q+3*b-8),b**3+3*b*b*t+b*b+2*b*t*t+4*t+4)
    count+=9
    # Weak Pell shell, not an NC3 family.
    eq((199*p+660*b)**2-11*(60*p+199*b)**2,p*p-11*b*b)
    count+=1
    print('PASS_EXACT_POLYNOMIAL_IDENTITIES count='+str(count))

if __name__=='__main__':run()
