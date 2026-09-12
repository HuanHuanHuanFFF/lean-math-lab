#!/usr/bin/env python3
"""Emit a complete finite ENVELOPE for a fixed double-high exponent.

No giant powers are materialized. No search over n or the unbounded outer
exponent is started. The bounds apply only to putative i9 noCommon points
with alpha=m*2**a*5**b, m in {1,3}, a>=4, b>=2, on the frozen paper interfaces.
"""
from __future__ import annotations
import argparse
import json

A_MIN=1960001
B_MIN=422064
HEIGHT_BITS=14000001

def bounds(*, a: int | None=None, b: int | None=None, seed: int | None=None) -> dict:
    if (a is None)==(b is None):
        raise ValueError('Supply exactly one of a or b.')
    if seed not in (None,1,3):
        raise ValueError('The seed must be 1 or 3.')
    if a is not None and (isinstance(a,bool) or not isinstance(a,int) or a<4):
        raise ValueError('This double-high interface requires an integer a>=4.')
    if b is not None and (isinstance(b,bool) or not isinstance(b,int) or b<2):
        raise ValueError('This double-high interface requires an integer b>=2.')
    output={'scope':'necessary finite envelope for full noCommon9 in one fixed-exponent fibre',
            'evidence_level':'paper + new exact finite obligations, frozen dependencies; not Lean',
            'fixed':{'a':a} if a is not None else {'b':b},'seeds':[seed] if seed else [1,3],
            'R7':[3,4,5,6,7,8,9],'global_family_closure':False,'outer_exponent_still_unbounded':True,
            'n_search_executed':False}
    if a is not None and a<A_MIN:
        output.update(status='FIBRE_CLOSED_BY_NECESSARY_EXPONENT_LOWER_BOUND',reason=f'a<{A_MIN}; all b>=2 and all legal beta,g are covered')
        return output
    if b is not None and b<B_MIN:
        output.update(status='FIBRE_CLOSED_BY_NECESSARY_EXPONENT_LOWER_BOUND',reason=f'b<{B_MIN}; all a>=4 and all legal beta,g are covered')
        return output
    if a is not None:
        lo=max(B_MIN,a//31+1);hi=3*a-1
        variable='b';base=2;exponent=50*a
    else:
        assert b is not None
        lo=max(A_MIN,b//3+1);hi=31*b-1
        variable='a';base=5;exponent=100*b
    output.update(status='FINITE_ENVELOPE_NOT_ENUMERATED',
                  other_exponent={'variable':variable,'inclusive_min':lo,'inclusive_max':hi,'count':max(0,hi-lo+1)},
                  alpha_definition='alpha=m*2^a*5^b',
                  n_lower={'expression':f'2^{HEIGHT_BITS}'},
                  n_upper={'strict_inequality':f'n^7 < {base}^{exponent}',
                           'exact_integer_max':f'floor_root_7({base}^{exponent}-1)',
                           'looser_symbolic_upper':f'n < {base}^{(exponent+6)//7}'},
                  g_constraints=['g is a positive integer','n=alpha*g','g^3 < 2^200*alpha'],
                  beta_constraints=['1<=beta<=floor(alpha/2)','gcd(alpha,beta)=1','j=beta*g>=10','n<2^203*beta^2'],
                  optional_strengthening='Use position-sensitive height (6) in notes/PROOFS.md, and frozen location/congruence conditions.',
                  cost_warning='The envelope is finite after fixing this exponent, but its n range is astronomical. This command only emits bounds; it is not an exhaustive search or a solution of the outer quantifier.')
    return output

def main() -> None:
    ap=argparse.ArgumentParser(description=__doc__)
    group=ap.add_mutually_exclusive_group(required=True)
    group.add_argument('--a',type=int);group.add_argument('--b',type=int)
    ap.add_argument('--m',type=int,choices=(1,3),default=None)
    args=ap.parse_args()
    try: result=bounds(a=args.a,b=args.b,seed=args.m)
    except ValueError as exc: ap.error(str(exc))
    print(json.dumps(result,ensure_ascii=False,indent=2))

if __name__=='__main__': main()
