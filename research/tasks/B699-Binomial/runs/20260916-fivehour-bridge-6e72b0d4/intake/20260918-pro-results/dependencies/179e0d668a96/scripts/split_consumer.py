#!/usr/bin/env python3
"""A sufficient i=3 consumer, NOT a complete decision procedure.

The theorem is proved in PROOFS.md. It covers legal pairs with 4|n and the
specified integer-square predicate. Misses return UNKNOWN, never 'counterexample'.
No factorization, floating point, or huge binomial construction is needed.
"""
from __future__ import annotations
import argparse
import json
from math import isqrt


def consume(n: int,j: int) -> dict:
    if isinstance(n,bool) or isinstance(j,bool) or not isinstance(n,int) or not isinstance(j,int):
        raise TypeError('n and j must be integers')
    if n<8 or not 4<=j<=n//2:
        raise ValueError('require 4 <= j <= floor(n/2)')
    if n%4:
        return {'n':n,'j':j,'status':'UNKNOWN','reason':'outside this standalone consumer: 4 does not divide n'}
    radicand=(n-1)*(n-2)*((n-2*j)**2-3*n+2)
    root=isqrt(radicand) if radicand>=0 else None
    if root is None or root*root!=radicand:
        return {'n':n,'j':j,'status':'UNKNOWN','reason':'split-square predicate does not hold'}
    la=3 if n%9 in (4,7) else 1
    mu=3 if n%9 in (5,8) else 1
    N=(n-1)//la; K=(n-2)//(2*mu)
    failures=[]
    if j*(j-1)%N:
        failures.append({'window':1,'complete_odd_source':N})
    if j*(j-1)*(j-2)%K:
        failures.append({'window':2,'complete_odd_source':K})
    if not failures:
        raise ArithmeticError('both windows passed a square predicate; audit the implementation/proof before any conclusion')
    return {'n':n,'j':j,'status':'PROVED_BY_SPLIT_THEOREM','square_root':root,
            'conclusion':'there exists an odd prime dividing both binom(n,3) and binom(n,j)',
            'failed_windows':failures,'prime_witness_factored':False}


def main() -> None:
    ap=argparse.ArgumentParser(); ap.add_argument('n',type=int); ap.add_argument('j',type=int)
    args=ap.parse_args()
    try:
        obj=consume(args.n,args.j)
    except (TypeError,ValueError) as exc:
        ap.error(str(exc))
    print(json.dumps(obj,ensure_ascii=False,sort_keys=True,indent=2))

if __name__=='__main__':
    main()
