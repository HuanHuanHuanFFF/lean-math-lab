#!/usr/bin/env python3
"""Conditional exponent consumer. Never constructs n=2^s or certifies NC3/branch membership."""
import argparse
import json


def classify(s: int, c_alpha: int = 1) -> dict:
    if type(s) is not int or s < 1:
        raise ValueError('s must be a positive integer')
    if c_alpha not in (1,3):
        raise ValueError('c_alpha must be 1 or 3')
    rules=[]
    if c_alpha==1 and s>1:
        if (s-1)%4==0: rules.append('VM4')
        if (s-1)%10==0: rules.append('VM10')
    return {'s':s,'c_alpha':c_alpha,'rules':rules,
      'status':'EXCLUDED_CONDITIONAL_ON_CANONICAL_MINIMAL_BRANCH' if rules else 'NO_NEW_EXCLUSION',
      'scope':'Only the same-input NC3 canonical minimal branch g=1, lambda=1, w=1, xi=2*mu, b=2r.',
      'warning':'No branch membership, counterexample, original j, or entire-row certificate is inferred.'}


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--s',type=int,required=True)
    p.add_argument('--c-alpha',type=int,default=1,choices=(1,3))
    a=p.parse_args()
    try: result=classify(a.s,a.c_alpha)
    except ValueError as e: p.error(str(e))
    print(json.dumps(result,sort_keys=True))

if __name__=='__main__': main()
