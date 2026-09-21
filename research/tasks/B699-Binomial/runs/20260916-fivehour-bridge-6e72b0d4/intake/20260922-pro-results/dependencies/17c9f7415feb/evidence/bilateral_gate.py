#!/usr/bin/env python3
"""Conditional necessary-core gates. A successful exclusion is not a claim that
an NC3 input exists at the supplied parameters; a surviving shell is NOT NC3.
"""
from __future__ import annotations
import argparse,json
from math import gcd

def evaluate(delta:int,W:int,h:int|None=None)->dict:
    if any(not isinstance(x,int) or isinstance(x,bool) for x in [delta,W]):
        raise TypeError('Integer Delta and W are required.')
    if delta<17 or delta%16!=1 or W<1:
        raise ValueError('Requires Delta>=17, Delta=1 mod16, W>=1.')
    if (delta**3-1)%W:
        raise ValueError('W must divide Delta^3-1.')
    v=(delta**3-1)//W;Q=v+delta
    if v%2 or v<=0 or 3*v<=Q:
        raise ValueError('The frozen corridor requires positive even v and 3v>Q.')
    D=v//gcd(v,3*(delta-1));B=W//gcd(W,3*(delta-1));G=gcd(v,W)
    exits=[]
    if B==1:exits.append('EXCLUDED_DUAL_CYC1')
    if G%3==0:exits.append('EXCLUDED_SHARED_3')
    if G%8==0:exits.append('EXCLUDED_SHARED_2_POWER_GE_3')
    if G%25==0:exits.append('EXCLUDED_SHARED_5_POWER_GE_2')
    if h is not None:
        if h<15 or h%2!=1:raise ValueError('The supplied h must be odd and >=15.')
        if (h*h-6*h-11)%G:exits.append('EXCLUDED_OVERLAP_DIVISIBILITY')
    return dict(Delta=delta,W_Delta=W,v=v,Q=Q,D_v=D,D_W=B,shared=G,
       result=exits or ['NOT_EXCLUDED_BY_THESE_GATES'],
       logic='Conditional gate in the frozen minimal branch. Surviving parameters are not NC3 and are not original counterexamples.')

def main():
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--delta',type=int,required=True)
    ap.add_argument('--cofactor',type=int,required=True)
    ap.add_argument('--h',type=int)
    args=ap.parse_args()
    try:out=evaluate(args.delta,args.cofactor,args.h)
    except (ValueError,TypeError) as exc:ap.error(str(exc))
    print(json.dumps(out,ensure_ascii=False,indent=2))
if __name__=='__main__':main()
