"""Independent scalar endpoint RF implementation for the generic curve audit."""
from fractions import Fraction as F
from math import isqrt

S=0;BITS=0;ITER=0
def setup(bits):
    global S,BITS,ITER
    assert not S
    BITS=bits;S=1<<bits;ITER=(bits+1)//2+64
def cd(a,b):
    assert b>0
    return -((-a)//b)
def ceilsqrt(a):
    n=isqrt(a)
    return n if n*n==a else n+1
def number(v):
    v=F(v);return (v.numerator*S//v.denominator,cd(v.numerator*S,v.denominator))
def add(a,b):return (a[0]+b[0],a[1]+b[1])
def neg(a):return (-a[1],-a[0])
def sub(a,b):return add(a,neg(b))
def times(a,n):return (a[0]*n,a[1]*n) if n>=0 else (a[1]*n,a[0]*n)
def mul(a,b):
    vals=[x*y for x in a for y in b]
    return (min(vals)//S,cd(max(vals),S))
def square(a):
    vals=[x*x for x in a]
    return (0 if a[0]<=0<=a[1] else min(vals)//S,cd(max(vals),S))
def sqrt(a):
    assert a[0]>=0
    return (isqrt(a[0]*S),ceilsqrt(a[1]*S))
def div(a,b):
    assert b[0]>0
    vals=[F(x,y) for x in a for y in b]
    lo,hi=min(vals),max(vals)
    return (lo.numerator*S//lo.denominator,cd(hi.numerator*S,hi.denominator))
def rf(args):
    low=[a[0] for a in args];high=[a[1] for a in args]
    assert min(low)>=0
    for _ in range(ITER):
        ls=[isqrt(a*S) for a in low];hs=[ceilsqrt(a*S) for a in high]
        ll=sum(ls[i]*ls[j]//S for i,j in ((0,1),(0,2),(1,2)))
        hh=sum(cd(hs[i]*hs[j],S) for i,j in ((0,1),(0,2),(1,2)))
        low=[(a+ll)//4 for a in low];high=[cd(a+hh,4) for a in high]
    assert min(low)>0
    return (S*S//ceilsqrt(max(high)*S),cd(S*S,isqrt(min(low)*S)))
def rounded(iv,C):
    a=(2*iv[0]*C+S)//(2*S);b=(2*iv[1]*C+S)//(2*S)
    assert a==b
    return a
def polynomial(coefficients,theta):
    out=number(0)
    for c in reversed(coefficients):out=add(mul(out,theta),number(c))
    return out
def roots(A,B,lo,hi,count):
    # Initial intervals have half-integer endpoints, unlike the producer.
    def ff(v):return v*v*v+A*v*S*S+B*S*S*S
    def half(u):return u*u*u+4*A*u+8*B
    result=[]
    for u in range(2*lo,2*hi+1):
        fu=half(u)
        if fu==0:result.append(number(F(u,2)))
        if u==2*hi or fu*half(u+1)>=0:continue
        a=u*S//2;b=(u+1)*S//2;direction=1 if fu<0 else -1
        while b-a>1:
            m=(a+b)//2;fm=direction*ff(m)
            if fm==0:a=b=m;break
            if fm<0:a=m
            else:b=m
        assert direction*ff(a)<=0<=direction*ff(b)
        result.append((a,b))
    assert len(result)==count
    return result
