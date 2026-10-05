"""Exact interval arithmetic for the new Round 6 certificates (standard library).
No prime enumeration, repository access, old replay or Lean execution occurs.
"""
from __future__ import annotations
from fractions import Fraction as F
from functools import lru_cache


def floor_log2(x: F) -> int:
    x=F(x)
    if x<=0: raise ValueError('positive argument required')
    k=x.numerator.bit_length()-x.denominator.bit_length()
    if x < F(2)**k: k-=1
    assert F(2)**k <= x < F(2)**(k+1)
    return k


def atanh_unit(y:F,terms:int=40)->tuple[F,F]:
    if not 1<=y<=2: raise ValueError('unit logarithm requires 1<=y<=2')
    z=(y-1)/(y+1)
    low=sum((2*z**(2*j+1)/(2*j+1) for j in range(terms)),F(0))
    high=low+2*z**(2*terms+1)/((2*terms+1)*(1-z*z))
    return low,high


@lru_cache(maxsize=None)
def log_atanh(x:F|int)->tuple[F,F]:
    x=F(x);k=floor_log2(x);y=x/(F(2)**k)
    a,b=atanh_unit(y);l2,u2=atanh_unit(F(2))
    return (a+k*l2,b+k*u2) if k>=0 else (a+k*u2,b+k*l2)


def riemann_unit(y:F,cells:int=65536,scale:int=10**15)->tuple[F,F]:
    """Independent integral bounds: left/right rectangles for integral_1^y dt/t.
    Each rectangle is rounded outwards to the same integer scale.
    """
    if not 1<=y<=2: raise ValueError('unit logarithm requires 1<=y<=2')
    N,D=y.numerator,y.denominator;A=N-D;B=D*cells
    low=0;high=0
    for j in range(cells):
        v=scale*A
        dl=B+j*A;dr=B+(j+1)*A
        high+=(v+dl-1)//dl
        low+=v//dr
    return F(low,scale),F(high,scale)


@lru_cache(maxsize=None)
def log_riemann(x:F|int)->tuple[F,F]:
    x=F(x);k=floor_log2(x);y=x/(F(2)**k)
    a,b=riemann_unit(y);l2,u2=riemann_unit(F(2))
    return (a+k*l2,b+k*u2) if k>=0 else (a+k*u2,b+k*l2)


def root_certificate(n:int,e:int,scale:int)->dict:
    """Return exact certificate for (q-1)/scale < n^(1/e) <= q/scale."""
    if n<=0 or e<2 or scale<1: raise ValueError('invalid positive root input')
    target=n*scale**e
    low=0;high=1<<((target.bit_length()+e-1)//e)
    while low+1<high:
        mid=(low+high)//2
        if mid**e>=target: high=mid
        else: low=mid
    assert (high-1)**e<target<=high**e
    return {'n':n,'exponent':e,'scale':scale,'ceiling':high}


def read_root(cert:dict)->tuple[F,F]:
    n,e,S,q=(cert[k] for k in ('n','exponent','scale','ceiling'))
    assert (q-1)**e<n*S**e<=q**e
    return F(q-1,S),F(q,S)


def decimal_interval(low:F,high:F,scale:int=10**15)->dict:
    assert low<=high
    return {'scale':scale,'lower_floor':low.numerator*scale//low.denominator,
            'upper_ceil':-((-high.numerator*scale)//high.denominator)}


def linear_logs(const:F,terms:list[tuple[F,F]],log_fn)->tuple[F,F]:
    low=high=const
    for a,x in terms:
        l,u=log_fn(F(x))
        low+=a*(l if a>=0 else u)
        high+=a*(u if a>=0 else l)
    return low,high


def vp_choose(n:int,k:int,p:int)->int:
    if not 0<=k<=n or p<2: raise ValueError('invalid valuation input')
    q=p;v=0
    while q<=n:
        carry=n//q-k//q-(n-k)//q
        assert carry in (0,1)
        v+=carry;q*=p
    return v
