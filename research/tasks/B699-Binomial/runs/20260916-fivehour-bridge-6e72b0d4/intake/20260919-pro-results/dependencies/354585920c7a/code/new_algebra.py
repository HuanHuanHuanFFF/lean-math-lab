"""Exact new polynomial recipes. No symbolic-algebra package is required."""
from fractions import Fraction
from math import comb
from poly_exact import const,add,sub,scale,mul,power

def R(n,j):
    return add(scale(power(n,4),4),scale(power(n,3),-36),scale(mul(power(n,2),j),-9),
               scale(power(n,2),108),scale(mul(n,j),9),scale(n,-124),scale(power(j,2),27),const(48))

def S(n,j):
    return add(scale(power(n,6),8),scale(power(n,5),-104),scale(mul(power(n,4),j),-16),
               scale(power(n,4),528),scale(mul(power(n,3),j),108),scale(power(n,3),-1328),
               scale(mul(power(n,2),power(j,2)),36),scale(mul(power(n,2),j),-252),
               scale(power(n,2),1736),scale(mul(n,power(j,2)),-117),scale(mul(n,j),244),
               scale(n,-1128),scale(power(j,3),-27),scale(power(j,2),81),scale(j,-84),const(288))

def S_normal(n,u):
    return add(scale(power(u,3),-27),scale(mul(power(u,2),n),36),scale(power(u,2),-81),
               scale(mul(u,power(n,2)),-16),scale(mul(u,n),76),scale(u,-84),
               scale(power(n,3),8),scale(power(n,2),-80),scale(n,264),const(-288))

def H_normal(n,u):
    return add(scale(mul(sub(n,const(3)),sub(n,const(4))),16),
               scale(mul(sub(n,const(3)),u),-36),scale(power(u,2),27))

def R_old(n,j):
    return add(power(n,4),scale(power(n,3),-9),scale(mul(power(n,2),j),-1),
               scale(power(n,2),27),mul(n,j),scale(n,-31),scale(power(j,2),3),const(12))

def substitute(p,x,y):
    xx={0:const(1)};yy={0:const(1)}
    for i in range(1,max((a for a,b in p),default=0)+1): xx[i]=mul(xx[i-1],x)
    for i in range(1,max((b for a,b in p),default=0)+1): yy[i]=mul(yy[i-1],y)
    return add(*(scale(mul(xx[a],yy[b]),c) for (a,b),c in p.items()))

def taylor(p,a,b):
    q={}
    for (i,j),c in p.items():
        for h in range(i+1):
            for k in range(j+1):
                v=c*comb(i,h)*comb(j,k)*a**(i-h)*b**(j-k)
                if v:q[h,k]=q.get((h,k),Fraction(0))+v
    return {e:c for e,c in q.items() if c}

def order(p,a,b):
    return min((sum(e) for e in taylor(p,a,b)),default=10**9)

def records(p):
    if any(c.denominator!=1 for c in p.values()):raise ValueError('nonintegral coefficient')
    return [[a,b,int(c)] for (a,b),c in sorted(p.items())]

def from_records(rows):
    q={}
    for a,b,c in rows:
        if (a,b) in q or not c or a<0 or b<0:raise ValueError('invalid sparse polynomial')
        q[a,b]=Fraction(c)
    return q
