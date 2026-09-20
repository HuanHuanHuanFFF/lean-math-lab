"""Small exact arithmetic kernel. No floating point and no external packages."""
from fractions import Fraction as F
from functools import lru_cache

class I:
    __slots__=('lo','hi')
    def __init__(self,lo,hi=None):
        self.lo=F(lo); self.hi=F(lo if hi is None else hi)
        if self.lo>self.hi: raise ValueError('reversed interval')
    def __add__(self,o):
        o=asI(o);return I(self.lo+o.lo,self.hi+o.hi)
    __radd__=__add__
    def __neg__(self):return I(-self.hi,-self.lo)
    def __sub__(self,o):return self+-asI(o)
    def __rsub__(self,o):return asI(o)+-self
    def __mul__(self,o):
        o=asI(o);s=[self.lo*o.lo,self.lo*o.hi,self.hi*o.lo,self.hi*o.hi];return I(min(s),max(s))
    __rmul__=__mul__
    def __truediv__(self,o):
        o=asI(o)
        if o.lo<=0<=o.hi:raise ValueError('division interval contains zero')
        return self*I(1/o.hi,1/o.lo)
    def __rtruediv__(self,o):return asI(o)/self
    def __abs__(self):
        if self.lo>=0:return self
        if self.hi<=0:return -self
        return I(0,max(-self.lo,self.hi))
    def __pow__(self,n):
        if not isinstance(n,int) or n<0:raise ValueError('nonnegative integer powers only')
        z=I(1)
        for _ in range(n):z=z*self
        return z

def asI(x):return x if isinstance(x,I) else I(x)
def poly(coeffs,x):
    z=0
    for c in reversed(coeffs):z=z*x+c
    return z

def ceildiv(a,b):return -((-a)//b)
S=10**150
NLOG=200

def _atanh_log_unit(x):
    """Enclose log(x), rational 1<=x<=2; integer endpoints scaled by S."""
    x=F(x)
    if not 1<=x<=2:raise ValueError('log reduction range')
    u=(x-1)/(x+1)
    lo=u.numerator*S//u.denominator
    hi=ceildiv(u.numerator*S,u.denominator)
    sqlo=lo*lo//S;sqhi=ceildiv(hi*hi,S)
    tlo,thi=lo,hi;L=U=0
    for m in range(NLOG):
        d=2*m+1
        L+=2*(tlo//d);U+=2*ceildiv(thi,d)
        tlo=tlo*sqlo//S;thi=ceildiv(thi*sqhi,S)
    # Tail <=9/[4*(2N+1)*3^(2N+1)] <1/S.
    if not 9*S<4*(2*NLOG+1)*3**(2*NLOG+1):raise AssertionError('tail bound')
    return L,U+1

@lru_cache(maxsize=256)
def log_rat(x):
    x=F(x)
    if x<=0:raise ValueError('positive logarithm required')
    k=0
    while x<1:x*=2;k-=1
    while x>2:x/=2;k+=1
    lo,hi=_atanh_log_unit(x);l2,u2=_atanh_log_unit(F(2))
    if k>=0:lo+=k*l2;hi+=k*u2
    else:lo+=k*u2;hi+=k*l2
    return I(F(lo,S),F(hi,S))

def logI(x):
    x=asI(x);return I(log_rat(x.lo).lo,log_rat(x.hi).hi)

def mul(u,v):
    r=[0]*5
    for i in range(3):
        for j in range(3):r[i+j]+=u[i]*v[j]
    for k in (4,3):r[k-2]+=10*r[k];r[k-3]-=10*r[k]
    return tuple(r[:3])

def norm(u):
    a,b,c=u
    return a**3+20*a*a*c-10*a*b*b+30*a*b*c+100*a*c*c-10*b**3+100*b*c*c+100*c**3

U1=(1,-1,0); U1I=(-9,1,1); U2=(1,2,-1); U2I=(21,-12,-5)

def powers(u,inv,bound):
    if mul(u,inv)!=(1,0,0):raise AssertionError('wrong unit inverse')
    d={0:(1,0,0)}
    for a in range(1,bound+1):
        d[a]=mul(d[a-1],u);d[-a]=mul(d[-a+1],inv)
    return d
