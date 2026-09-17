#!/usr/bin/env python3
"""Build the finite part of the B699 endpoint-seven proof.

Only Python's standard library is used. All acceptance calculations are rational
or integer; floating point was used only in a separate discovery probe.
"""
from __future__ import annotations
import argparse
import json
from fractions import Fraction as F
from functools import lru_cache
from math import gcd, isqrt
from pathlib import Path

M = 10**16
SCALE = 10**65
FAMILIES = [
    dict(name="D7-seed1", D=7, t=6, unit=[8,3], seed=[1,1], shift=3, divisor=2,
         p=1876842045899887043, q=469876424782486584, eps_den=13, base=15, cutoff=17),
    dict(name="D7-seed13", D=7, t=6, unit=[8,3], seed=[13,5], shift=3, divisor=2,
         p=1876842045899887043, q=469876424782486584, eps_den=13, base=15, cutoff=17),
    dict(name="D3", D=3, t=2, unit=[2,1], seed=[1,1], shift=3, divisor=2,
         p=1043570439386514912, q=549256669074638639, eps_den=3, base=3, cutoff=41),
    dict(name="D6", D=6, t=2, unit=[5,2], seed=[2,1], shift=6, divisor=4,
         p=321202785856910779, q=97119930927902412, eps_den=3, base=9, cutoff=20),
]


def floor(x: F) -> int:
    return x.numerator // x.denominator


def ceil(x: F) -> int:
    return -floor(-x)


def pack_bounds(lo: F, hi: F) -> list[int]:
    return [floor(lo * SCALE), ceil(hi * SCALE)]


@lru_cache(None)
def atanh_log(x: F, terms: int = 80) -> tuple[F, F]:
    """Certified log(x), for rational 1 <= x <= 2."""
    assert 1 <= x <= 2
    z = (x-1)/(x+1)
    zz = z*z
    v = z
    s = F(0)
    for r in range(terms):
        s += 2*v/(2*r+1)
        v *= zz
    tail = 2*v/((2*terms+1)*(1-zz))
    return s, s+tail


@lru_cache(None)
def log_rational(x: F) -> tuple[F, F]:
    assert x >= 1
    k = 0
    while x >= 2:
        x /= 2
        k += 1
    l, h = atanh_log(x)
    a, b = atanh_log(F(2))
    return l+k*a, h+k*b


def log_quadratic(D: int, a: int, b: int) -> tuple[F, F]:
    scale = 2**256
    root = isqrt(D*scale*scale)
    low, high = F(root,scale), F(root+1,scale)
    assert low*low < D < high*high
    return log_rational(a+b*low)[0], log_rational(a+b*high)[1]


def nearest(x: F) -> int:
    return floor(x+F(1,2))


def distance_lower(lo: F, hi: F) -> tuple[F, int]:
    z = nearest((lo+hi)/2)
    assert z-F(1,2) < lo <= hi < z+F(1,2)
    if lo <= z <= hi:
        return F(0), z
    return min(abs(lo-z),abs(hi-z)), z


def approximation_certificate(f: dict) -> dict:
    log2 = log_rational(F(2))
    la = log_quadratic(f['D'], *f['unit'])
    le = log_quadratic(f['D'], *f['seed'])
    tau = (la[0]/log2[1], la[1]/log2[0])
    mu = (le[0]/log2[1], le[1]/log2[0])
    p,q = f['p'], f['q']
    delta = max(abs(q*tau[0]-p), abs(q*tau[1]-p))
    dist, nmu = distance_lower(q*mu[0], q*mu[1])
    eps = dist-M*delta
    assert eps > F(1,f['eps_den'])
    assert 10*f['eps_den']*q < f['base']**f['cutoff']
    assert f['unit'][0]+f['unit'][1]*F(isqrt(f['D']*10**12),10**6)>f['base']
    return dict(**f, M=M, interval_scale=SCALE,
                log2=pack_bounds(*log2), log_unit=pack_bounds(*la), log_seed=pack_bounds(*le),
                tau=pack_bounds(*tau), mu=pack_bounds(*mu), nearest_mu_q=nmu,
                delta_upper=ceil(delta*SCALE), epsilon_lower=floor(eps*SCALE))


def seed_classification() -> list[dict]:
    out=[]
    for D,t,a,b in [(7,6,8,3),(3,2,2,1),(6,2,5,2)]:
        assert a*a-D*b*b==1
        bound=isqrt(b*b*D*t)
        assert bound*bound < b*b*D*t
        seeds=[]
        for X in range(bound+1):
            if (X*X+t)%D: continue
            Y2=(X*X+t)//D
            Y=isqrt(Y2)
            if Y>0 and Y*Y==Y2: seeds.append([X,Y])
        out.append(dict(D=D,t=t,unit=[a,b],reduced_X_bound=bound,seeds=seeds))
    return out


def endpoints(f: dict) -> dict:
    X,Y=f['seed']
    a,b=f['unit'];D=f['D']
    rows=[]; solutions=[]
    for h in range(f['cutoff']):
        assert X*X-D*Y*Y==-f['t']
        assert (X+f['shift'])%f['divisor']==0
        assert Y%2==1
        n=(X+f['shift'])//f['divisor']; y=(Y+1)//2
        isp=n>0 and n&(n-1)==0
        row=dict(h=h,X=X,Y=Y,n=n,y=y,n_power_of_two=isp)
        rows.append(row)
        if isp: solutions.append([n,y])
        X,Y=a*X+D*b*Y,b*X+a*Y
    return dict(name=f['name'],rows=rows,solutions=solutions)


def canonical(n: int) -> tuple[int,int]:
    return (3 if n%9 in (4,7) else 1, 3 if n%9 in (5,8) else 1)


def prime(p: int) -> bool:
    return p>=2 and all(p%d for d in range(2,isqrt(p)+1))


def r7_parameters() -> list[list[int]]:
    ans=[]
    for lam,mu in [(1,1),(3,1),(1,3)]:
        A=7*lam*mu
        for r in range(1,A):
            if 4*r>=A: continue
            oddparts=set()
            for m in range(1,r+1,2):
                if r%m or gcd(m,A)>1: continue
                oddparts.add(m)
                if lam*mu==1 and m%3:
                    oddparts.add(3*m)
            for odd in sorted(oddparts):
                ans.append([lam,mu,r,odd])
    return sorted(ans)


def r7_reduction() -> dict:
    period=2520;rows=[];nonempty=0;cells=0
    primes=[p for p in range(5,434) if prime(p) and pow(2,period,p)==1]
    for pars in r7_parameters():
        lam,mu,r,odd=pars;A=7*lam*mu
        target=(2+7*((2*lam*mu*pow(r,-1,7))%7))%49
        pending=[v for v in range(period)
                 if canonical(odd*pow(2,v,9))==(lam,mu)
                 and odd*pow(2,v,49)%49==target]
        initial=len(pending);cells+=initial
        if initial: nonempty+=1
        steps=[]
        for p in primes:
            if A%p==0: continue
            squares={x*x%p for x in range(p)}
            new=[]
            for v in pending:
                n=odd*pow(2,v,p)%p
                dd=A*(4*r*(n*n-3*n+2)+A)%p
                if dd in squares: new.append(v)
            if len(new)<len(pending):
                steps.append(dict(prime=p,before=len(pending),after=len(new)))
            pending=new
            if not pending: break
        expected=[4] if pars==[3,1,3,1] else []
        assert pending==expected,(pars,pending)
        rows.append(dict(parameters=pars,initial_count=initial,steps=steps,residual=pending))
    return dict(period=period,parameter_count=len(rows),nonempty_parameter_count=nonempty,
                initial_exponent_cells=cells,rows=rows)


def build() -> dict:
    return dict(schema='B699-r7-pell-v1', M=M,
                matveev_coefficient_upper=30000000000000,
                seeds=seed_classification(),
                approximations=[approximation_certificate(f) for f in FAMILIES],
                terminals=[endpoints(f) for f in FAMILIES],
                endpoint7_reduction=r7_reduction())


def main() -> None:
    ap=argparse.ArgumentParser();ap.add_argument('--output',type=Path,required=True)
    ns=ap.parse_args();result=build()
    ns.output.parent.mkdir(parents=True,exist_ok=True)
    ns.output.write_text(json.dumps(result,ensure_ascii=False,indent=2,sort_keys=True)+'\n')
    print(json.dumps(dict(status='BUILT',families=len(result['approximations']),
          terminal_states=sum(len(x['rows']) for x in result['terminals']),
          solutions={x['name']:x['solutions'] for x in result['terminals']},
          endpoint7_parameters=result['endpoint7_reduction']['parameter_count']),ensure_ascii=False))

if __name__=='__main__': main()
