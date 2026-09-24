#!/usr/bin/env python3
"""Falsification probes for the finite-Q floor identity, using exact intervals.

These are REAL ALGEBRAIC shells, not integer (n,j), not NC3 candidates.
Their purpose is to catch a sign or normalization error in PHASE1024.
"""
from fractions import Fraction
from math import isqrt
import argparse,json
from pathlib import Path
from phase_a import cubic,classify

def run():
    results=[]
    for h in [1025,1027,1033,1051,1061,1071,4225,65537,67861,69961,1000001,10**40+9*10**20+21]:
        Q=h*h
        lo,hi=Fraction(isqrt(h)),Fraction(isqrt(h)+2)
        target=-Fraction(h,Q**3);eps=Fraction(2,Q**3)
        def vals(y):return (h*y-2*y*y+eps,h-y,(h+1)*y-2*y*y-h+eps)
        for step in range((1024*h**4).bit_length()+5):
            v0,v1=vals(lo),vals(hi)
            f0=tuple(v.numerator//v.denominator for v in v0)
            f1=tuple(v.numerator//v.denominator for v in v1)
            if f0==f1:
                c=f0[0]-f0[1]-f0[2]
                expected=classify(h)['chi']
                if c!=expected:raise ArithmeticError('finite-Q phase mismatch')
                if not h-2*hi>4 or not vals(hi)[0]<Q:raise ArithmeticError('shell outside scope')
                results.append({'h':h,'Q':Q,'exact_floor_triple':f0,'chi':c,
                                'lower':[lo.numerator,lo.denominator],
                                'upper':[hi.numerator,hi.denominator],
                                'original_integer_input':False,
                                'missing':'integer recovery, complete prime powers, alpha and source windows'})
                break
            mid=(lo+hi)/2
            if cubic(h,mid)<target:lo=mid
            else:hi=mid
        else:raise ArithmeticError('shell isolation limit reached')
    return {'status':'PASS','role':'exact falsification probes only; no original inputs','cases':results}
if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--output',type=Path,required=True);a=p.parse_args()
    if a.output.exists():raise SystemExit('refusing to overwrite')
    result=run();a.output.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({'status':result['status'],'cases':len(result['cases']),'original_inputs':0}))
