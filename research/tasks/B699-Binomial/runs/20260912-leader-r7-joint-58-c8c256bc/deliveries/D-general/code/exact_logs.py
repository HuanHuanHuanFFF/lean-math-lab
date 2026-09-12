"""Outward-rounded fixed-point log intervals. No floating point is used here.

Log(y) = 2 sum t^(2r+1)/(2r+1), t=(y-1)/(y+1), after 1<=y<2.
All stored endpoints are integer multiples of 2^-640. The tail is bounded
using t<=1/3; every division/multiplication is rounded outward.
"""
from functools import lru_cache
from fractions import Fraction
from math import isqrt
BITS=640
S=1<<BITS
TERMS=256

def ceildiv(a:int,b:int)->int:
    assert b>0
    return -((-a)//b)

def _core(num:int,den:int):
    assert den>0 and den<=num<=2*den
    a,b=num-den,num+den
    tl,th=S*a//b,ceildiv(S*a,b)
    t2l,t2h=tl*tl//S,ceildiv(th*th,S)
    pl,ph=tl,th
    sl=sh=0
    for r in range(TERMS):
        v=2*r+1
        sl+=pl//v
        sh+=ceildiv(ph,v)
        pl=pl*t2l//S
        ph=ceildiv(ph*t2h,S)
    tail=ceildiv(9*S,4*(2*TERMS+1)*3**(2*TERMS+1))
    return 2*sl,2*sh+tail

@lru_cache(None)
def log2(): return _core(2,1)

@lru_cache(None)
def log_rational(num:int,den:int=1):
    assert num>0 and den>0
    k=num.bit_length()-den.bit_length()
    if k>=0: a,b=num,den<<k
    else: a,b=num<<(-k),den
    if a<b:
        k-=1;a*=2
    elif a>=2*b:
        k+=1;b*=2
    assert b<=a<2*b
    lo,hi=_core(a,b)
    l2,h2=log2()
    if k>=0:return lo+k*l2,hi+k*h2
    return lo+k*h2,hi+k*l2

@lru_cache(None)
def log_quadratic(x:int,y:int,D:int):
    assert x>=0 and y>=0 and D>0 and (x or y)
    r=isqrt(D*S*S)
    assert r*r<=D*S*S<(r+1)*(r+1)
    low=x*S+y*r; high=x*S+y*(r+1)
    return log_rational(low,S)[0],log_rational(high,S)[1]

def divide_intervals(n,d):
    assert d[0]>0
    vals=[Fraction(x,y) for x in n for y in d]
    return min(vals),max(vals)

def tau_mu(D,unit,seed,A):
    lu=log_quadratic(*unit,D)
    lr=log_quadratic(*seed,D)
    la=log_rational(2*A)
    return divide_intervals(lu,log2()),divide_intervals((lr[0]-la[1],lr[1]-la[0]),log2())

def nearest(frac):
    return (2*frac.numerator+frac.denominator)//(2*frac.denominator)

def check_log_certificate(D,unit,seed,A,p,q,b,M,V):
    assert isinstance(q,int) and q>0
    tau,mu=tau_mu(D,tuple(unit),tuple(seed),A)
    err=max(abs(q*tau[0]-p),abs(q*tau[1]-p))
    left,right=q*mu[0]-b,q*mu[1]-b
    assert Fraction(-1,2)<left<=right<Fraction(1,2), 'nearest-integer interval'
    assert left>0 or right<0, 'mu interval crosses an integer'
    dist=min(abs(left),abs(right))
    delta=dist-M*err
    assert delta>Fraction(1,100), 'positive separation margin'
    assert (1<<V)*delta>128*q, 'terminal exponent not bounded'
    # Do not serialize giant interval endpoints. These small rational bounds are
    # recomputed, not trusted input. Proof uses the exact Fractions above.
    return {'delta_lower_1e6':int(delta*10**6),'q_error_upper_1e90':ceildiv(err.numerator*10**90,err.denominator),'terminal_V':V}
