#!/usr/bin/env python3
"""Exact i6/H025 consumers. A returned cofactor is not asserted to be prime.
The mathematical guarantee is established in PROOFS.md; this module performs
finite input arithmetic and returns a checkable original-source obstruction.
"""
from __future__ import annotations
import argparse,json,math,sys
sys.dont_write_bytecode=True
SUPPORT=(13,17,23,61)

def rough6(x: int) -> int:
    if not isinstance(x,int) or x<=0:raise ValueError('positive integer required')
    for p in (2,3,5):
        while x%p==0:x//=p
    return x

def some_power_divides(q: int, z: int) -> bool:
    """Decide whether q divides z**m for some integer m>=1, without factoring q."""
    if q<=0:raise ValueError('q must be positive')
    z=abs(z)
    while q>1:
        d=math.gcd(q,z)
        if d==1:return False
        q//=d
    return True

def support_contained(q: int) -> bool:
    for p in SUPPORT:
        while q%p==0:q//=p
    return q==1

def numerators(n: int,j: int) -> tuple[int,int]:
    N=n-1;J=j*(n-j)
    kc=(10*n*n-34*n+12)*N*N+(81-36*n)*N*J+27*J*J
    hc=16*N*N*(n-3)*(n-4)-36*N*(n-3)*J+27*J*J
    return kc,hc

def source_defects(n: int,j: int, rows=(0,1,2,3,5)) -> list[dict]:
    out=[]
    for r in rows:
        q=rough6(n-r);fall=math.prod(j-b for b in range(r+1))
        d=q//math.gcd(q,fall)
        if d>1:out.append({'source_row':r,'source_rough_part':str(q),'witness_cofactor':str(d)})
    return out

def consume(n: int,j: int) -> dict:
    if any(not isinstance(v,int) or isinstance(v,bool) for v in (n,j)):
        raise TypeError('n and j must be integers')
    if n%1800 not in (1280,1530) or not 7<=j<=n//2:
        raise ValueError('outside the stated native i6/H025 legal domain')
    q=rough6(n-5);kc,hc=numerators(n,j)
    if kc<=0 or hc<=0:raise AssertionError('unexpected legal zero/sign branch')
    row_ok=support_contained(q)
    product_ok=some_power_divides(q,kc*hc)
    if not(row_ok or product_ok):
        return {'accepted':False,'meaning':'neither sufficient condition applies; this is NOT an NC certificate'}
    ds=source_defects(n,j,(0,1,2,3) if row_ok else (0,1,2,3,5))
    if not ds:raise AssertionError('consumer violated: no source obstruction found')
    return {'accepted':True,'support_row_condition':row_ok,'joint_power_condition':product_ok,
            'n':str(n),'j':str(j),'q5':str(q),'source_obstruction':ds[0],
            'guarantee':'Every prime divisor of witness_cofactor is >=7 and divides both original binomial coefficients.',
            'cofactor_is_not_asserted_prime':True}

def main():
    parser=argparse.ArgumentParser();parser.add_argument('n',type=int);parser.add_argument('j',type=int)
    args=parser.parse_args()
    try:result=consume(args.n,args.j)
    except (TypeError,ValueError) as exc:parser.error(str(exc))
    print(json.dumps(result,ensure_ascii=False,indent=2))
if __name__=='__main__':main()
