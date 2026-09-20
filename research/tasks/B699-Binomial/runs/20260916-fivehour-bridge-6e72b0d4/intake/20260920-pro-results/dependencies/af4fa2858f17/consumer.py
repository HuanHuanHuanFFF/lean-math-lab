#!/usr/bin/env python3
"""Arithmetic-only SAT-SLOT sufficient consumer on an actual (n,j).
No factoring is needed. A non-trigger is not a counterexample.
"""
from __future__ import annotations
import argparse,json,math


def check_pair(n:int,j:int)->dict:
    if not isinstance(n,int) or not isinstance(j,int):raise TypeError('n,j must be integers')
    if n<=0 or n%2:raise ValueError('n must equal 2*X^2 for a positive even X')
    x=math.isqrt(n//2)
    if 2*x*x!=n or x<2 or x%2:raise ValueError('n must equal 2*X^2 for a positive even X')
    if not 4<=j<=n//2:raise ValueError('require 4 <= j <= floor(n/2)')
    for side in [-1,1]:
        y=x+side
        iso=3 if y%3==0 and y%9!=0 else 1
        source=y//iso
        r=j%source
        if r in (0,1,2):
            return {'status':'COMMON3_BY_SAT_SLOT','n':n,'j':j,'X':x,
                    'side':side,'complete_aggregate':y,'removed_isolated_3':iso,
                    'saturated_source':source,'slot':r,
                    'meaning':'existence of the same odd prime in both original binomials; not a computed prime witness'}
    return {'status':'NO_CONCLUSION','n':n,'j':j,'X':x,
            'meaning':'this sufficient consumer does not trigger; not an NC3 claim'}


def tests()->None:
    pos=[(8,4),(32,4),(2*44**2,43),(2*44**2,45),
         (2*14**2,5),(2*16**2,5),(2*20**2,7),(2*22**2,7),(128,9)]
    for n,j in pos:
        d=check_pair(n,j);assert d['status']=='COMMON3_BY_SAT_SLOT'
        g=math.gcd(math.comb(n,3),math.comb(n,j))
        while g%2==0:g//=2
        assert g>1
    assert check_pair(3872,1422)['status']=='NO_CONCLUSION'
    assert check_pair(128,4)['status']=='NO_CONCLUSION'
    for n,j in [(18,4),(7,4),(32,3),(32,17)]:
        try:check_pair(n,j)
        except ValueError:pass
        else:raise AssertionError(('invalid input accepted',n,j))
    print('PASS_CONSUMER_BOUNDARIES cases=15')

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--n',type=int);p.add_argument('--j',type=int)
    p.add_argument('--self-test',action='store_true');a=p.parse_args()
    if a.self_test:tests()
    elif a.n is None or a.j is None:p.error('supply --n and --j, or --self-test')
    else:
        try:print(json.dumps(check_pair(a.n,a.j),ensure_ascii=False,indent=2))
        except (TypeError,ValueError) as e:p.error(str(e))
