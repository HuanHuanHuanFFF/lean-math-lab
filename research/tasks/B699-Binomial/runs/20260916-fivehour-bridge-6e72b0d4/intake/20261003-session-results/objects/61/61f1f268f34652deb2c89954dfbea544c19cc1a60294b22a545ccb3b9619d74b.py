"""Small exact rational interval package (standard library only).
No floating-point decision is used. Log uses the positive atanh series and an
explicit geometric tail; square roots use integer-square-root enclosures.
"""
from __future__ import annotations
from dataclasses import dataclass
from fractions import Fraction as F
from functools import lru_cache
from math import isqrt
BITS=72
SERIES=40

def floorq(x:F)->int:return x.numerator//x.denominator
def ceilq(x:F)->int:return -((-x.numerator)//x.denominator)
def round_down(x:F,bits:int=BITS)->F:return F(floorq(x*(1<<bits)),1<<bits)
def round_up(x:F,bits:int=BITS)->F:return F(ceilq(x*(1<<bits)),1<<bits)

@dataclass(frozen=True)
class I:
    lo:F
    hi:F
    def __post_init__(self):
        object.__setattr__(self,'lo',F(self.lo));object.__setattr__(self,'hi',F(self.hi))
        if self.lo>self.hi:raise ValueError('Reversed interval')
    @staticmethod
    def point(x)->'I':return I(F(x),F(x))
    def __add__(self,y):
        y=asI(y);return I(self.lo+y.lo,self.hi+y.hi)
    __radd__=__add__
    def __neg__(self):return I(-self.hi,-self.lo)
    def __sub__(self,y):return self+-asI(y)
    def __rsub__(self,y):return asI(y)+-self
    def __mul__(self,y):
        y=asI(y);v=[self.lo*y.lo,self.lo*y.hi,self.hi*y.lo,self.hi*y.hi]
        return I(min(v),max(v))
    __rmul__=__mul__
    def inv(self):
        if self.lo<=0<=self.hi:raise ZeroDivisionError('Interval contains zero')
        return I(1/self.hi,1/self.lo)
    def __truediv__(self,y):return self*asI(y).inv()
    def __rtruediv__(self,y):return asI(y)*self.inv()
    def __pow__(self,k:int):
        if not isinstance(k,int) or k<0:raise ValueError('Use nonnegative integer powers')
        if self.lo<0:raise ValueError('This implementation only powers nonnegative intervals')
        return I(self.lo**k,self.hi**k)
    def rounded(self):return I(round_down(self.lo),round_up(self.hi))
    def json(self):return {'lo':str(self.lo),'hi':str(self.hi)}

def asI(x):return x if isinstance(x,I) else I.point(x)
def sqrtq(x:F,bits:int=88)->I:
    x=F(x)
    if x<0:raise ValueError('Negative radicand')
    v=isqrt((x.numerator<<(2*bits))//x.denominator)
    lo=F(v,1<<bits);hi=F(v+1,1<<bits)
    assert lo*lo<=x<hi*hi
    return I(lo,hi)

@lru_cache(maxsize=512)
def log_unit(x:F)->I:
    """Enclose log(x) for 1<=x<=2 by a rational series."""
    assert 1<=x<=2
    t=(x-1)/(x+1);t2=t*t;term=t;total=F(0)
    for k in range(SERIES):
        total+=2*term/(2*k+1);term*=t2
    tail=2*term/((2*SERIES+1)*(1-t2))
    return I(total,total+tail).rounded()

@lru_cache(maxsize=1024)
def logq(x:F)->I:
    x=F(x)
    if x<=0:raise ValueError('Log of nonpositive rational')
    if x==1:return I.point(0)
    k=x.numerator.bit_length()-x.denominator.bit_length()
    y=x/(1<<k) if k>=0 else x*(1<<(-k))
    while y<1:y*=2;k-=1
    while y>=2:y/=2;k+=1
    yl=round_down(y);yu=round_up(y)
    assert 1<=yl<=y<=yu<=2
    core=I(log_unit(yl).lo,log_unit(yu).hi)
    return (core+k*log_unit(F(2))).rounded()

def logI(x:I)->I:
    if x.lo<=0:raise ValueError('Log interval crosses zero')
    return I(logq(x.lo).lo,logq(x.hi).hi)

def lower_min(a:I,b:I)->F:return min(a.lo,b.lo)

def decimal_outer(x:I,places:int=9)->dict:
    """Readable outward decimal endpoints; never used for acceptance."""
    base=10**places
    def fmt(n):
        sign='-' if n<0 else '';n=abs(n)
        return f'{sign}{n//base}.{n%base:0{places}d}'
    return {'lo':fmt(floorq(x.lo*base)),'hi':fmt(ceilq(x.hi*base))}
