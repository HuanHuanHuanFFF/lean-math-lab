"""Tiny exact Q[X,Y] implementation; independent of SymPy."""
from fractions import Fraction as F

def clean(a): return {k:F(v) for k,v in a.items() if v}
def const(x): return clean({(0,0):x})
def add(a,b):
    d=dict(a)
    for m,c in b.items():d[m]=d.get(m,F(0))+c
    return clean(d)
def neg(a):return {m:-c for m,c in a.items()}
def sub(a,b):return add(a,neg(b))
def scale(a,c):return clean({m:v*c for m,v in a.items()})
def mul(a,b):
    d={}
    for (u,v),c in a.items():
        for (s,t),e in b.items():
            m=(u+s,v+t);d[m]=d.get(m,F(0))+c*e
    return clean(d)
def powp(a,e):
    if not isinstance(e,int) or e<0:raise ValueError('nonnegative integer exponent required')
    z=const(1)
    while e:
        if e&1:z=mul(z,a)
        a=mul(a,a);e//=2
    return z
X={(1,0):F(1)};Y={(0,1):F(1)}
def falling(a,r):
    z=const(1)
    for h in range(r):z=mul(z,sub(a,const(h)))
    return z

def evaluate(a,x,y):return sum((c*F(x)**u*F(y)**v for (u,v),c in a.items()),F(0))
def degree(a):return max((sum(m) for m in a),default=-1)
def shifted(a,x,y):
    z={};xx=add(X,const(x));yy=add(Y,const(y))
    for (u,v),c in a.items():z=add(z,scale(mul(powp(xx,u),powp(yy,v)),c))
    return z
def multiplicity(a,x,y):return min((sum(m) for m,c in shifted(a,x,y).items() if c),default=None)
