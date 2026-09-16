"""Small rational polynomials. Ascending coefficient order, exact arithmetic."""
from fractions import Fraction as Q
from math import gcd,lcm

def trim(p):
    p=list(map(Q,p))
    while len(p)>1 and not p[-1]: p.pop()
    return tuple(p or [Q(0)])
def add(p,q):
    z=[Q(0)]*max(len(p),len(q))
    for i,x in enumerate(p):z[i]+=x
    for i,x in enumerate(q):z[i]+=x
    return trim(z)
def neg(p):return tuple(-x for x in p)
def scale(p,t):return trim([Q(t)*x for x in p])
def mul(p,q):
    z=[Q(0)]*(len(p)+len(q)-1)
    for i,x in enumerate(p):
        for j,y in enumerate(q):z[i+j]+=x*y
    return trim(z)
def val(p,n):
    y=Q(0)
    for x in reversed(p): y=y*n+x
    return y
def lagrange(xs,ys):
    out=(Q(0),)
    for i,x in enumerate(xs):
        p=(Q(1),);d=Q(1)
        for j,t in enumerate(xs):
            if j!=i:p=mul(p,(-t,1));d*=x-t
        out=add(out,scale(p,Q(ys[i])/d))
    return trim(out)
def vandermonde(xs,ys):
    """Independent interpolation by exact Gaussian elimination."""
    n=len(xs);a=[[Q(x)**i for i in range(n)]+[Q(y)] for x,y in zip(xs,ys)]
    for c in range(n):
        r=next(r for r in range(c,n) if a[r][c]);a[c],a[r]=a[r],a[c]
        z=a[c][c];a[c]=[x/z for x in a[c]]
        for r in range(n):
            if r!=c:
                z=a[r][c]
                if z:a[r]=[x-z*y for x,y in zip(a[r],a[c])]
    return trim([a[i][-1] for i in range(n)])
def enc(p):return [str(x) for x in trim(p)]
def dec(p):return trim(map(Q,p))
def primitive_quadratic(b,c):
    """Returns the primitive integer a,b,c for X²+b(N)X+c(N)."""
    b,c=trim(b),trim(c);den=lcm(*(x.denominator for x in (Q(1),)+b+c))
    nums=[den]+[int(den*x) for x in b+c];g=0
    for x in nums:g=gcd(g,abs(x))
    return den//g,tuple(int(x*den)//g for x in b),tuple(int(x*den)//g for x in c)
