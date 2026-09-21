"""Small exact sparse polynomial implementation; used by primary checker only."""
from __future__ import annotations
NAMES = ('m','P','b','t','k','d','z')
DIM = len(NAMES)
ZERO = (0,)*DIM
class Poly:
    def __init__(self, data=0):
        if isinstance(data, Poly): self.c=dict(data.c)
        elif isinstance(data,int): self.c={ZERO:data} if data else {}
        else: self.c={tuple(k):int(v) for k,v in data.items() if v}
    @staticmethod
    def variable(i):
        e=[0]*DIM;e[i]=1
        return Poly({tuple(e):1})
    def __add__(self,other):
        q=Poly(other);r=dict(self.c)
        for e,c in q.c.items():r[e]=r.get(e,0)+c
        return Poly(r)
    __radd__=__add__
    def __neg__(self):return Poly({e:-c for e,c in self.c.items()})
    def __sub__(self,q):return self+-Poly(q)
    def __rsub__(self,q):return Poly(q)+-self
    def __mul__(self,other):
        q=Poly(other);r={}
        for a,c in self.c.items():
            for b,d in q.c.items():
                e=tuple(x+y for x,y in zip(a,b));r[e]=r.get(e,0)+c*d
        return Poly(r)
    __rmul__=__mul__
    def __pow__(self,n):
        if not isinstance(n,int) or n<0:raise ValueError('nonnegative integer exponent required')
        r=Poly(1);b=self
        while n:
            if n&1:r=r*b
            n//=2;b=b*b
        return r
    def terms(self):return [[list(e),c] for e,c in sorted(self.c.items())]
    def __eq__(self,q):return self.c==Poly(q).c

def expected():
    m,P,b,t,k,d,z=[Poly.variable(i) for i in range(DIM)]
    R=m*P-2;N=2*(m*P-1)**2-1
    f0=b*b+2*m*R*b-t*N
    f1=b*b-2*m*R*b+t*N
    f2=b*b-6*m*R*b+t*N-16*m**3*P+28*m*m
    S=(b*b-4*m*m)*P+3*b+8*m
    result={
        'R':R,'N':N,'f0':f0,'f1':f1,'f2':f2,
        'positive_f1':b*b-2*m*(m*P+2)*b+t*(2*(m*P+1)**2-1),
        'kappa_numerator':S,
        'kappa_gap':b*N-S,
        'zero_square0':(b+m*R)**2-m*m*(m*P-1)*(3*m*P-5),
        'zero_square2':(b-3*m*R)**2-m*m*(m*P-1)*(3*m*P-5),
        'cubic_threshold_gap':4*d*m**4+m*z-2,
        'linear_threshold_gap':3*d*m*m+m*z-2,
    }
    # Exact identities supporting the eliminations, not numerical tests.
    identities=[
        N-1-2*m*P*R,
        b*(b*P-1)-(P*t-b)*N-P*f0,
        b*(b*P+1)-(b-P*t)*N-P*f1,
        (b*P+2)*(b*P+1)-(P*k+2)*N-P*(S-k*N),
        S-(3*b+8*m-P*t)*N-P*f2,
        f0-(b*b-t)-2*m*R*(b-P*t),
        f1-(b*b+t)-2*m*R*(P*t-b),
        f2-(b*b+t-4*m*m)-R*(2*m*P*t-6*m*b-16*m*m),
        (b*N-S)-(P*(b*(b+2+2*(m*m*P-2*m-1-b))+4*m*m)-2*b-8*m),
        result['zero_square0']-(b*b+2*m*R*b-m*m*N),
        result['zero_square2']-(b*b-6*m*R*b+3*m*m*N-16*m**3*P+28*m*m),
        result['cubic_threshold_gap']-(m*(64*d*m**3+z)-2-60*d*m**4),
        result['linear_threshold_gap']-(m*(8*d*m+z)-2-5*d*m*m),
    ]
    if any(x.c for x in identities):raise AssertionError('symbolic identity failed')
    return {name:p.terms() for name,p in result.items()}
