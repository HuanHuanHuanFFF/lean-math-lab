#!/usr/bin/env python3
"""Reproduce the two finite discovery probes; neither is an infinite proof."""
from __future__ import annotations
import json
from math import isqrt
from pathlib import Path

ROOT=Path(__file__).resolve().parents[1]


def main():
    power={}
    # Historical D=2 corresponds to a=2; historical D=4 corresponds to a=1.
    for D,a in ((2,2),(4,1)):
        rows=[]
        for v in range(2049):
            n=2**v;num=4*a*(n-1)*(n-2)+3
            if num%3:continue
            u=isqrt(num//3)
            if 3*u*u==num:rows.append({'v':v,'n':n,'u':u,'j':n-(u+1)//2})
        power[str(D)]=rows
    integer={}
    for a in (1,2):
        for multiplier in (1,2):
            rows=[]
            for X in range(1,200001):
                n=multiplier*X*X;num=4*a*(n-1)*(n-2)+3
                if num%3:continue
                u=isqrt(num//3)
                if 3*u*u==num:rows.append([X,n,u])
            integer[f'a{a}-n{multiplier}X2']=rows
    expected1=json.loads((ROOT/'evidence/quartic-power-probe.json').read_text(encoding='utf-8'))
    expected2=json.loads((ROOT/'evidence/quartic-integer-probe.json').read_text(encoding='utf-8'))
    if power!=expected1['solutions'] or integer!=expected2['solutions']:
        raise ValueError('discovery probe mismatch')
    print(json.dumps({'status':'PASS','power_exponents_inclusive':[0,2048],
                      'integer_X_range_inclusive':[1,200000],
                      'power_solutions':power,'integer_solutions':integer,
                      'scope':'reproduced finite discovery diagnostics only'},sort_keys=True))


if __name__=='__main__':main()
