"""Configurable directed integer intervals; one precision context per process."""
from dataclasses import dataclass
from fractions import Fraction as F
from math import isqrt

BITS=0;S=0;ITER=0
def configure(bits):
    global BITS,S,ITER
    assert not BITS, 'Use a fresh process for a different precision.'
    BITS=bits;S=1<<bits;ITER=(bits+1)//2+128
def ceildiv(a,b):
    assert b>0
    return -((-a)//b)

@dataclass(frozen=True)
class I:
    lo:int
    hi:int
    def __post_init__(self):assert self.lo<=self.hi and S>0
    @staticmethod
    def co(v):
        if isinstance(v,I):return v
        v=F(v)
        return I(v.numerator*S//v.denominator,ceildiv(v.numerator*S,v.denominator))
    def __add__(self,v):
        v=I.co(v);return I(self.lo+v.lo,self.hi+v.hi)
    __radd__=__add__
    def __neg__(self):return I(-self.hi,-self.lo)
    def __sub__(self,v):return self+-I.co(v)
    def __rsub__(self,v):return I.co(v)+-self
    def __mul__(self,v):
        v=I.co(v);p=[a*b for a in (self.lo,self.hi) for b in (v.lo,v.hi)]
        return I(min(p)//S,ceildiv(max(p),S))
    __rmul__=__mul__
    def inv(self):
        assert not self.lo<=0<=self.hi
        if self.hi<0:return -((-self).inv())
        return I(S*S//self.hi,ceildiv(S*S,self.lo))
    def __truediv__(self,v):return self*I.co(v).inv()
    def __rtruediv__(self,v):return I.co(v)*self.inv()
    def __pow__(self,n):
        assert n>=0
        out=I.co(1)
        for _ in range(n):out=out*self
        return out
    def sqrt(self):
        assert self.lo>=0
        low=isqrt(self.lo*S);high=isqrt(self.hi*S)
        if high*high<self.hi*S:high+=1
        return I(low,high)
    def sign(self):
        assert self.lo>0 or self.hi<0
        return 1 if self.lo>0 else -1
    def rounded(self,C):
        low=(2*self.lo*C+S)//(2*S);high=(2*self.hi*C+S)//(2*S)
        assert low==high, 'Insufficient precision for unique nearest integer.'
        return low
    def data(self):return [self.lo,self.hi]
    def display(self):return float(F(self.lo+self.hi,2*S))

def RF(x,y,z):
    x,y,z=I.co(x),I.co(y),I.co(z)
    assert min(x.lo,y.lo,z.lo)>=0
    for _ in range(ITER):
        a,b,c=x.sqrt(),y.sqrt(),z.sqrt()
        lam=a*b+b*c+c*a
        x,y,z=(x+lam)/4,(y+lam)/4,(z+lam)/4
    low=min(x.lo,y.lo,z.lo);high=max(x.hi,y.hi,z.hi)
    assert low>0
    return I(I(high,high).sqrt().inv().lo,I(low,low).sqrt().inv().hi)

def cubic_roots(c1,c0,low,high,expected):
    def integer_f(x):return x*x*x+c1*x+c0
    def fixed_f(x):return x*x*x+c1*x*S*S+c0*S*S*S
    roots=[]
    for a in range(low,high+1):
        fa=integer_f(a)
        if fa==0:roots.append(I.co(a))
        if a==high:continue
        fb=integer_f(a+1)
        if fa*fb>=0:continue
        lo=a*S;hi=(a+1)*S;direction=1 if fa<0 else -1
        while hi-lo>1:
            mid=(lo+hi)//2
            if direction*fixed_f(mid)<0:lo=mid
            else:hi=mid
        assert direction*fixed_f(lo)<=0<=direction*fixed_f(hi)
        roots.append(I(lo,hi))
    assert len(roots)==expected
    return roots

def evaluate(coeffs,theta):
    out=I.co(0)
    for c in reversed(coeffs):out=out*theta+I.co(c)
    return out
