#!/usr/bin/env python3
"""Sufficient B699 pair consumers; only gcds and integer arithmetic are needed.

True certifies the input using the theorem in PROOFS.md. False means that this
consumer makes no decision, never that the original assertion is false.
Mathematical dependency: the frozen QIG theorem and the accepted finite base.
"""
from __future__ import annotations
import argparse
import json
from math import gcd


def small_part(x: int, i: int) -> int:
    if x <= 0 or i not in (5, 6):
        raise ValueError('x must be positive and i must be 5 or 6')
    y=x
    for p in ((2,3) if i==5 else (2,3,5)):
        while y%p==0:
            y//=p
    if i==5 and y%5==0 and y%25!=0:
        y//=5
    return x//y


def certify_pair(n: int, j: int, i: int=5) -> dict:
    if any(type(x) is not int for x in (n,j,i)):
        raise TypeError('n, j, i must be integers')
    legal = i in (5,6) and i < j <= n//2
    in_rows = n%72 in (18,56) if i==5 else n%1800 in (1280,1530)
    if not legal or not in_rows:
        return {'certified':False,'reason':'outside this theorem domain'}
    q4=(n-4)//small_part(n-4,i)
    blocks=[gcd(q4,j-b) for b in range(5)]
    tests=[((0,3),10 if i==5 else 9),((1,4),10 if i==5 else 9),
           ((0,1),12 if i==5 else 11),((3,4),12 if i==5 else 11)]
    passed=[{'slots':list(pair),'power':power,'product':blocks[pair[0]]*blocks[pair[1]]}
            for pair,power in tests if (blocks[pair[0]]*blocks[pair[1]])**power<=n]
    return {'certified':bool(passed),'n':n,'j':j,'i':i,'q4':q4,'blocks':blocks,
            'accepted_conditions':passed,
            'reason':'common prime exists by the proved consumer' if passed else 'no decision'}


def main():
    ap=argparse.ArgumentParser();ap.add_argument('n',type=int);ap.add_argument('j',type=int)
    ap.add_argument('--i',type=int,choices=[5,6],default=5);a=ap.parse_args()
    print(json.dumps(certify_pair(a.n,a.j,a.i),ensure_ascii=False,indent=2))

if __name__=='__main__':main()
