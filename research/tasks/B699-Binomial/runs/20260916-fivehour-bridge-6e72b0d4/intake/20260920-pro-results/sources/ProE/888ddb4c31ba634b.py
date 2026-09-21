#!/usr/bin/env python3
"""Conditional SQ-HIGH consumer. Does not authenticate the original (n,j).
The caller must establish the registered complete two-prime-source interface.
"""
from __future__ import annotations
import argparse,json

def positive(text):
    value=int(text)
    if value<1:raise argparse.ArgumentTypeError('expected a positive integer')
    return value

def main():
    ap=argparse.ArgumentParser(description=__doc__)
    for name in ('x','ell','a','r','b'):ap.add_argument('--'+name,type=positive,required=True)
    args=ap.parse_args()
    if args.a<args.ell or args.b<args.r:ap.error('C|t3 requires a>=ell and b>=r')
    shape=args.x%2==0
    sides=[]
    if args.a>=2*args.ell:sides.append('p-side a>=2*ell')
    if args.b>=2*args.r:sides.append('q-side b>=2*r')
    verdict='CONDITIONAL_COMMON3' if shape and sides else 'NO_CONCLUSION_FROM_SQ_HIGH'
    print(json.dumps({
       'status':verdict,'theorem':'SQ-HIGH','row_shape_checked':'n=2*x^2 with x positive even' if shape else 'x is odd; this consumer does not use older exclusions',
       'matched_sides':sides,'g_and_w_bounds':'none',
       'not_authenticated':['original j and legal interval','actual gcd(n,j)','complete two-prime-source allocation and exponent identification','actual isolated-3 normalization'],
       'warning':'A conditional theorem application, not a claim that the submitted parameters form an NC3 input. No conclusion means only that this theorem does not fire.'
    },ensure_ascii=False,indent=2))
if __name__=='__main__':main()
