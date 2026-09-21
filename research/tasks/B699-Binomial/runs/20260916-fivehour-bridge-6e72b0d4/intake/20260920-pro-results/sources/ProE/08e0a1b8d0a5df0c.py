"""Exact sufficient-condition consumers. NOT_TRIGGERED never means NC3."""
from __future__ import annotations
import argparse
import json
import math

def is_prime(p: int) -> bool:
    if p<2:return False
    if p%2==0:return p==2
    return all(p%d for d in range(3,math.isqrt(p)+1,2))

def row(p: int,h: int) -> dict:
    if h<1 or p<3 or p%2==0 or not is_prime(p):
        raise ValueError('p must be an odd prime and h must be positive')
    P=p**h;n=2*(P-1)**2
    return {'status':'PROVED_BY_MINUS1','p':p,'h':h,'P':P,'n':n,
            'scope':{'j_min':4,'j_max':n//2},
            'claim':'For every j in scope, an odd prime divides both binomial(n,3) and binomial(n,j).'}

def slot(n: int,j: int) -> dict:
    result={'status':'NOT_TRIGGERED','n':n,'j':j}
    if n<8 or n%2:return result
    X=math.isqrt(n//2)
    if 2*X*X!=n or X%2 or not(4<=j<=n//2):return result
    P=X+1
    if j%P not in (0,1,2):return result
    return {'status':'PROVED_BY_MINUS_SLOT','n':n,'j':j,'X':X,'P':P,
            'slot':j%P,'witness_location':'some prime factor of n-1 (at least 5)'}

if __name__=='__main__':
    parser=argparse.ArgumentParser(description=__doc__)
    group=parser.add_mutually_exclusive_group(required=True)
    group.add_argument('--row',action='store_true')
    group.add_argument('--slot',action='store_true')
    parser.add_argument('--p',type=int);parser.add_argument('--h',type=int,default=1)
    parser.add_argument('--n',type=int);parser.add_argument('--j',type=int)
    args=parser.parse_args()
    try:
        if args.row:
            if args.p is None:raise ValueError('--row requires --p')
            answer=row(args.p,args.h)
        else:
            if args.n is None or args.j is None:raise ValueError('--slot requires --n and --j')
            answer=slot(args.n,args.j)
        print(json.dumps(answer,ensure_ascii=False,sort_keys=True))
    except ValueError as exc:
        parser.error(str(exc))
