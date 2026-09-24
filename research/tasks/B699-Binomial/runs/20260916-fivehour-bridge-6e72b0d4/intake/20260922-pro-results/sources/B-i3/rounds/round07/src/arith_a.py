"""Exact sparse multivariate polynomial arithmetic, checker A only."""
from fractions import Fraction as Q
from math import gcd

class Poly:
    n = 3                    # variables x, a, ell
    def __init__(self, terms=None):
        self.t = {tuple(k): Q(v) for k,v in (terms or {}).items() if v}
    @classmethod
    def constant(cls,v): return cls({(0,)*cls.n:Q(v)})
    @classmethod
    def var(cls,i):
        e=[0]*cls.n;e[i]=1;return cls({tuple(e):Q(1)})
    def __add__(self,o):
        o=lift(o);r=dict(self.t)
        for e,c in o.t.items():r[e]=r.get(e,Q(0))+c
        return Poly(r)
    __radd__=__add__
    def __neg__(self):return Poly({e:-c for e,c in self.t.items()})
    def __sub__(self,o):return self+-lift(o)
    def __rsub__(self,o):return lift(o)+-self
    def __mul__(self,o):
        o=lift(o);r={}
        for e,c in self.t.items():
            for f,d in o.t.items():
                k=tuple(x+y for x,y in zip(e,f));r[k]=r.get(k,Q(0))+c*d
        return Poly(r)
    __rmul__=__mul__
    def __truediv__(self,o):
        if not isinstance(o,(int,Q)):raise TypeError('scalar denominator required')
        return self*Q(1,o)
    def __pow__(self,e):
        if e<0:raise ValueError('negative power')
        r=Poly.constant(1);p=self
        while e:
            if e&1:r=r*p
            p=p*p;e//=2
        return r
    def degree(self,i=0):return max((e[i] for e in self.t),default=-1)
    def coeff(self,i,power):
        r={}
        for e,c in self.t.items():
            if e[i]==power:
                k=list(e);k[i]=0;r[tuple(k)]=c
        return Poly(r)
    def diff(self,i=0):
        r={}
        for e,c in self.t.items():
            if e[i]:
                k=list(e);k[i]-=1;r[tuple(k)]=c*e[i]
        return Poly(r)
    def substitute(self,i,v):
        v=lift(v);r=Poly()
        for e,c in self.t.items():
            k=list(e);k[i]=0;r+=Poly({tuple(k):c})*v**e[i]
        return r
    def is_zero(self):return not self.t
    def __eq__(self,o):return self.t==lift(o).t

def lift(v):return v if isinstance(v,Poly) else Poly.constant(v)
def vector(v,var):
    r=Poly()
    for c in reversed(v):r=r*var+Q(c)
    return r

def divrem_x(a,b):
    """Polynomial division in x; leading coefficient must be a rational scalar."""
    a,b=lift(a),lift(b);q=Poly();r=a
    if b.is_zero():raise ZeroDivisionError
    d=b.degree(0);lead=b.coeff(0,d)
    if set(lead.t)!={(0,0,0)}:raise ValueError('nonconstant leading coefficient')
    lc=lead.t[(0,0,0)];x=Poly.var(0)
    while not r.is_zero() and r.degree(0)>=d:
        m=r.degree(0);c=r.coeff(0,m)/lc;t=c*x**(m-d)
        q+=t;r-=t*b
    return q,r

def prime(p):
    if type(p) is not int or p<2:return False
    if p%2==0:return p==2
    d=3
    while d*d<=p:
        if p%d==0:return False
        d+=2
    return True

def valuation(n,p):
    if n<=0 or p<2:raise ValueError('positive input and p>=2 required')
    v=0
    while n%p==0:n//=p;v+=1
    return v

def eval_int(co,n):
    r=0
    for a in reversed(co):r=r*n+a
    return r

def vp_binomial(n,j,p):
    if not 0<=j<=n:raise ValueError('illegal binomial')
    q=p;r=0
    while q<=n:r+=n//q-j//q-(n-j)//q;q*=p
    return r
