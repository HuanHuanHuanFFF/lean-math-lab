#!/usr/bin/env python3
"""Exact uniform q^(3r)-phase certificates for a fixed h; Q is NOT enumerated.

A result concerns the explicitly frozen canonical same-input core. NO_CARRY_THIS_LAYER
is never an assertion of NC3. No primality or existence of original inputs is inferred.
"""
from __future__ import annotations
import argparse
from fractions import Fraction as F
from math import isqrt
import json


def core_f(h: int, z: F) -> F:
    return (z*z-h)*(h-2*z-1)-h


def derivative(h: int, z: F) -> F:
    return 2*h*(z+1)-6*z*z-2*z


def isolate(h: int, target: F, lo: F, hi: F, steps: int=112) -> tuple[F,F]:
    if not core_f(h,lo)<target<core_f(h,hi):
        raise ValueError('Root not strictly bracketed.')
    # The derivative is a concave quadratic, hence positive throughout this interval.
    if min(derivative(h,lo),derivative(h,hi))<=0:
        raise ValueError('Monotonicity is not certified on this bracket.')
    for _ in range(steps):
        mid=(lo+hi)/2
        val=core_f(h,mid)
        if val<target:
            lo=mid
        elif val>target:
            hi=mid
        else:
            return mid,mid
    return lo,hi


def floor_fraction(x: F) -> int:
    return x.numerator//x.denominator


def fractional_interval(a: F,b: F) -> tuple[F,F] | None:
    if a>b:
        raise ValueError('Reversed interval.')
    fa,fb=floor_fraction(a),floor_fraction(b)
    if fa!=fb:
        return None
    return a-fa,b-fa


def certify(h: int, steps: int=112) -> dict:
    if not isinstance(h,int) or isinstance(h,bool) or h<15 or h%2!=1:
        raise ValueError('h must be an odd integer at least 15.')
    if not 16<=steps<=2048:
        raise ValueError('Use 16 through 2048 bisection steps.')
    # h*Delta^2 < 9Q^2 and Delta>=17, so every actual integer Q is at least Qmin.
    Qmin=isqrt((289*h)//9)+1
    lo=F(isqrt(h+1));hi=F(isqrt(h+3)+1)
    try:
        lower=isolate(h,-F(h,Qmin**3),lo,hi,steps)
        upper=isolate(h,F(0),lo,hi,steps)
    except ValueError as error:
        return {'h':h,'result':'INCONCLUSIVE','reason':str(error)}
    zl,zu=lower[0],upper[1]
    jj=(F(h)-zu,F(h)-zl)
    phi=lambda z:h*z-2*z*z
    vals=[phi(zl),phi(zu)]
    vertex=F(h,4)
    if zl<=vertex<=zu:
        vals.append(phi(vertex))
    nn=(min(vals),max(vals)+F(2,Qmin**3))
    jf=fractional_interval(*jj);nf=fractional_interval(*nn)
    result='INCONCLUSIVE'
    margin=F(0)
    if jf is not None and nf is not None:
        if jf[0]>nf[1]:
            result='CARRY';margin=jf[0]-nf[1]
        elif jf[1]<nf[0]:
            result='NO_CARRY_THIS_LAYER';margin=nf[0]-jf[1]
    pack=lambda pair:None if pair is None else [str(pair[0]),str(pair[1])]
    return {'h':h,'Qmin':Qmin,'bisection_steps':steps,'result':result,
            'logic':'Uniform over all Q>=Qmin in the adopted real core; not existence or NC3.',
            'lower_root_bracket':pack(lower),'upper_root_bracket':pack(upper),
            'z_interval':pack((zl,zu)),'j_phase_interval':pack(jj),'n_phase_interval':pack(nn),
            'j_fractional_interval':pack(jf),'n_fractional_interval':pack(nf),
            'strict_margin':str(margin)}


def verify(data: dict) -> None:
    """Verify a saved certificate by inequalities, rather than trusting its label."""
    h,Qmin=data['h'],data['Qmin']
    assert h>=15 and h%2==1
    assert Qmin==isqrt((289*h)//9)+1
    lower=list(map(F,data['lower_root_bracket']))
    upper=list(map(F,data['upper_root_bracket']))
    lo=F(isqrt(h+1));hi=F(isqrt(h+3)+1)
    assert min(derivative(h,lo),derivative(h,hi))>0
    assert lo<=lower[0]<=lower[1]<=hi and lo<=upper[0]<=upper[1]<=hi
    assert core_f(h,lower[0])<=-F(h,Qmin**3)<=core_f(h,lower[1])
    assert core_f(h,upper[0])<=0<=core_f(h,upper[1])
    zl,zu=lower[0],upper[1]
    assert list(map(F,data['z_interval']))==[zl,zu]
    jvals=(F(h)-zu,F(h)-zl)
    vals=[h*zl-2*zl*zl,h*zu-2*zu*zu]
    if zl<=F(h,4)<=zu:
        vals.append(F(h*h,8))
    nvals=(min(vals),max(vals)+F(2,Qmin**3))
    assert list(map(F,data['j_phase_interval']))==list(jvals)
    assert list(map(F,data['n_phase_interval']))==list(nvals)
    jf,nf=fractional_interval(*jvals),fractional_interval(*nvals)
    def check_pair(saved,pair):
        assert (saved is None)==(pair is None)
        if pair is not None:
            assert list(map(F,saved))==list(pair)
    check_pair(data['j_fractional_interval'],jf)
    check_pair(data['n_fractional_interval'],nf)
    if data['result']=='CARRY':
        assert jf is not None and nf is not None and jf[0]>nf[1]
        assert F(data['strict_margin'])==jf[0]-nf[1]
    elif data['result']=='NO_CARRY_THIS_LAYER':
        assert jf is not None and nf is not None and jf[1]<nf[0]
        assert F(data['strict_margin'])==nf[0]-jf[1]
    else:
        assert data['result']=='INCONCLUSIVE'
        assert jf is None or nf is None or not (jf[0]>nf[1] or jf[1]<nf[0])


def main() -> None:
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--h',type=int,required=True)
    parser.add_argument('--steps',type=int,default=112)
    args=parser.parse_args()
    data=certify(args.h,args.steps)
    if 'Qmin' in data:
        verify(data)
    print(json.dumps(data,indent=2))

if __name__=='__main__':
    main()
