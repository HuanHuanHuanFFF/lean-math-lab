"""Outward dyadic rational intervals. No floating-point acceptance decisions."""
from fractions import Fraction as F
from math import isqrt
BITS=80
SCALE=1<<BITS

def floor(x): return x.numerator//x.denominator
def ceil(x): return -((-x.numerator)//x.denominator)
class I:
    def __init__(self,lo,hi=None,rounded=True):
        lo=F(lo);hi=lo if hi is None else F(hi)
        assert lo<=hi
        if rounded:
            lo=F(floor(lo*SCALE),SCALE);hi=F(ceil(hi*SCALE),SCALE)
        self.lo,self.hi=lo,hi
    @staticmethod
    def get(x): return x if isinstance(x,I) else I(x)
    def __add__(self,x):
        x=I.get(x);return I(self.lo+x.lo,self.hi+x.hi)
    __radd__=__add__
    def __neg__(self): return I(-self.hi,-self.lo)
    def __sub__(self,x):return self+-I.get(x)
    def __rsub__(self,x):return I.get(x)+-self
    def __mul__(self,x):
        x=I.get(x);v=[a*b for a in (self.lo,self.hi) for b in (x.lo,x.hi)];return I(min(v),max(v))
    __rmul__=__mul__
    def inv(self):
        assert self.lo*self.hi>0
        return I(1/self.hi,1/self.lo)
    def __truediv__(self,x):return self*I.get(x).inv()
    def __rtruediv__(self,x):return I.get(x)*self.inv()
    def __pow__(self,n):
        assert isinstance(n,int)
        if n<0:return self.inv()**(-n)
        if n==0:return I(1)
        if n==1:return self
        t=self**(n//2);t=t*t
        return t*self if n%2 else t
    def sqrt(self):
        assert self.lo>=0
        low=isqrt(floor(self.lo*SCALE*SCALE))
        high=isqrt(floor(self.hi*SCALE*SCALE))+1
        return I(F(low,SCALE),F(high,SCALE),rounded=False)
    def log(self):
        assert self.lo>0
        a=log_fraction(self.lo);b=log_fraction(self.hi)
        return I(a.lo,b.hi)
    def out(self):return [str(self.lo),str(self.hi)]
    def __repr__(self):return f'I({self.lo},{self.hi})'

def _unitlog(x):
    # 1<=x<=2; exact atanh series and geometric positive tail.
    assert 1<=x<=2
    z=(x-1)/(x+1);z2=z*z
    v=z;total=F(0);N=90
    for h in range(N):
        total+=v/F(2*h+1);v*=z2
    err=2*v/F(2*N+1)/(1-z2)
    return I(2*total,2*total+err)
LOG2=None

def log_fraction(x):
    global LOG2
    x=F(x);assert x>0
    if LOG2 is None:LOG2=_unitlog(F(2))
    e=x.numerator.bit_length()-x.denominator.bit_length()
    y=x/(F(2)**e)
    if y<1:e-=1;y*=2
    if y>2:e+=1;y/=2
    return _unitlog(y)+e*LOG2

def min_interval(xs):return I(min(x.lo for x in xs),min(x.hi for x in xs))
def max_interval(xs):return I(max(x.lo for x in xs),max(x.hi for x in xs))
