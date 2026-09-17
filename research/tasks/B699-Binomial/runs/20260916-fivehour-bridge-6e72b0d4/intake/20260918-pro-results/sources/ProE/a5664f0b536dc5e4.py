#!/usr/bin/env python3
"""Test the sufficient predicate only. A miss means UNKNOWN, not false.
Mathematical proof status: author paper argument + exact endpoint certificate.
"""
import argparse
import json


def integer_cuberoot(value: int) -> int:
    if type(value) is not int or value < 0:
        raise ValueError('value must be a nonnegative integer')
    lo,hi=0,1 << ((value.bit_length()+2)//3)
    while lo+1<hi:
        m=(lo+hi)//2
        if m**3<=value:
            lo=m
        else:
            hi=m
    return hi if hi**3==value else lo


def cube_consumer(n: int,j: int) -> dict:
    if type(n) is not int or type(j) is not int or not 4<=j<=n//2:
        raise ValueError('require integer n,j with 4<=j<=floor(n/2)')
    k=n-j
    M=(n*j*k)**2*(n-2)*(j-1)*(k-1)
    root=integer_cuberoot(M)
    hit=(root**3==M)
    return {'n':n,'j':j,'predicate_hit':hit,
            'cube_root':root if hit else None,
            'conclusion':'COMMON_ODD_PRIME_EXISTS_BY_CUBE' if hit else 'UNKNOWN_BY_THIS_CONSUMER'}


if __name__=='__main__':
    a=argparse.ArgumentParser()
    a.add_argument('n',type=int);a.add_argument('j',type=int)
    p=a.parse_args()
    print(json.dumps(cube_consumer(p.n,p.j)))
