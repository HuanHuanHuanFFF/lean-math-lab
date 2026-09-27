"""Exact Q(sqrt(3))[eta, eta^-1, Z, Z^-1] arithmetic, Python standard library.
The symbol eta is NEW; it is not the original prime-power exponent r.
"""
from fractions import Fraction as F
from dataclasses import dataclass
from typing import Dict, Tuple

@dataclass(frozen=True)
class K:
    a: F = F(0)
    b: F = F(0)
    def __post_init__(self):
        object.__setattr__(self, 'a', F(self.a))
        object.__setattr__(self, 'b', F(self.b))
    def __add__(self, other):
        if not isinstance(other, K): other = K(other)
        return K(self.a + other.a, self.b + other.b)
    __radd__ = __add__
    def __neg__(self): return K(-self.a, -self.b)
    def __sub__(self, other): return self + (-other if isinstance(other,K) else K(-other))
    def __mul__(self, other):
        if not isinstance(other,K): other=K(other)
        return K(self.a*other.a+3*self.b*other.b, self.a*other.b+self.b*other.a)
    __rmul__=__mul__
    def conj(self): return K(self.a,-self.b)
    def norm_bound(self): return abs(self.a)+2*abs(self.b)
    def pair(self): return [str(self.a),str(self.b)]
    def zero(self): return self.a==0 and self.b==0

Poly = Dict[Tuple[int,int],K]
def term(er=0,ez=0,a=0,b=0):
    c=K(a,b)
    return {} if c.zero() else {(er,ez):c}
def add(*polys):
    out={}
    for p in polys:
        for k,v in p.items(): out[k]=out.get(k,K())+v
    return {k:v for k,v in out.items() if not v.zero()}
def scale(p,c): return {k:v*c for k,v in p.items() if not (v*c).zero()}
def mul(p,q):
    out={}
    for (r,z),c in p.items():
        for (rr,zz),cc in q.items():
            k=(r+rr,z+zz);out[k]=out.get(k,K())+c*cc
    return {k:v for k,v in out.items() if not v.zero()}
def power(p,n):
    assert isinstance(n,int) and n>=0
    out=term(a=1)
    while n:
        if n&1:out=mul(out,p)
        p=mul(p,p);n//=2
    return out
def conjugate_full(p): return {(r,-z):c.conj() for (r,z),c in p.items()}
def norm_sum(p):return sum((c.norm_bound() for c in p.values()),F(0))
def serialize(p):
    return [{'eta_power':r,'Z_power':z,'coefficient':c.pair()} for (r,z),c in sorted(p.items())]

def source_polynomials():
    # lambda=2+sqrt(3), conjugate lambda=2-sqrt(3).
    X=add(term(ez=1,b=F(1,6)),term(ez=-1,b=-F(1,6)))
    U=add(term(ez=1,a=1,b=F(1,2)),term(ez=-1,a=1,b=-F(1,2)))
    V=add(term(ez=1,a=F(1,2)),term(ez=-1,a=F(1,2)))
    y=add(term(ez=2,a=F(1,2),b=F(1,4)),term(ez=-2,a=F(1,2),b=-F(1,4)))
    d=add(term(ez=2,a=F(3,4),b=F(1,2)),term(ez=-2,a=F(3,4),b=-F(1,2)),term(a=-F(1,2)))
    v=mul(term(er=1,a=1),mul(X,y))
    W=mul(term(er=-1,a=9),mul(U,y))
    S=add(power(v,4),scale(mul(d,power(v,3)),5),scale(mul(power(d,2),power(v,2)),10),scale(mul(power(d,3),v),10),scale(power(d,4),5),mul(power(d,2),W))
    return dict(X=X,U=U,V=V,y=y,d=d,v=v,W=W,S=S)

def sqrt_polynomial():
    # P=sum(c_i Z^i, i=0..6); c_i=a_i(eta)+b_i(eta)*sqrt(3).
    rows={
      6:{2:K(F(7,192),F(1,48))},
      5:{1:K(F(35,64),F(5,16))},
      4:{2:K(-F(7,96),-F(1,24)),0:K(F(315,128),F(45,32))},
      3:{1:K(-F(45,64),-F(5,12)),-1:K(F(315,128),F(45,32))},
      2:{2:K(F(3,64),F(1,48)),0:K(-F(45,32),-F(15,16)),-2:K(-F(945,512),-F(135,128))},
      1:{1:K(F(5,32),F(5,48)),-1:K(F(45,128),0),-3:K(F(1701,512),F(243,128))},
      0:{2:K(-F(1,48),0),0:K(-F(15,64),0),-2:K(-F(405,256),-F(45,64)),-4:K(-F(8505,1024),-F(1215,256))},
    }
    return {(r,z):c for z,items in rows.items() for r,c in items.items()}

def pell(index):
    """(U_t,X_t) for (2+sqrt(3))^t, using exact integer powering."""
    if not isinstance(index,int) or index<0: raise ValueError('nonnegative index required')
    a,b,c,d=1,0,2,1
    while index:
        if index&1: a,b=a*c+3*b*d,a*d+b*c
        c,d=c*c+3*d*d,2*c*d
        index//=2
    return a,b

def evaluate(p,eta,Z):
    """Exact field evaluation; Z is K and a nonzero unit for negative powers."""
    eta=F(eta)
    def kp(x,n):
        if n<0:
            norm=x.a*x.a-3*x.b*x.b
            if not norm:raise ZeroDivisionError
            return kp(K(x.a/norm,-x.b/norm),-n)
        out=K(1)
        while n:
            if n&1:out=out*x
            x=x*x;n//=2
        return out
    out=K()
    for (r,z),c in p.items():out=out+c*(eta**r)*kp(Z,z)
    return out
