"""Bounded adjacent-smooth input construction for B699, using exact Pell CF."""
from __future__ import annotations
from datetime import datetime, timezone
from math import isqrt, prod
from pathlib import Path
from collections import Counter
import argparse
import json
import time
from sympy import primerange, prevprime
from crt_probe import solve_pair


def is_smooth(n: int, ps: list[int]) -> bool:
    if n < 1:
        return False
    for p in ps:
        while n % p == 0:
            n //= p
    return n == 1


def squarefree_products(ps: list[int]) -> list[int]:
    ds = [1]
    for p in ps:
        ds += [d*p for d in ds]
    return sorted(ds[1:])


def pell_fundamental(d: int, x_cap: int):
    a0 = isqrt(d)
    if a0*a0 == d:
        return None
    m, den, a = 0, 1, a0
    h2, h1, k2, k1 = 0, 1, 1, 0
    while True:
        h, k = a*h1+h2, a*k1+k2
        if h > x_cap:
            return None
        if h*h-d*k*k == 1:
            return h, k
        h2, h1, k2, k1 = h1, h, k1, k
        m = den*a-m
        den = (d-m*m)//den
        a = (a0+m)//den


def candidates(ps: list[int], n_cap: int, n_min: int = 2) -> list[dict]:
    out = []
    for d in squarefree_products(ps):
        fundamental = pell_fundamental(d,2*n_cap-1)
        if fundamental is None:
            continue
        u,v = fundamental
        x,y,index = u,v,1
        while x <= 2*n_cap-1:
            assert x*x-d*y*y == 1
            if x % 2:
                n=(x+1)//2
                if n>=n_min and is_smooth(n,ps) and is_smooth(n-1,ps):
                    assert (n-1)*n*4 == d*y*y
                    out.append(dict(n=n,d=d,x=x,y=y,pell_index=index))
            x,y = u*x+d*v*y,v*x+u*y
            index += 1
    assert len({r['n'] for r in out})==len(out)
    return sorted(out,key=lambda r:r['n'])


def smooth_numbers(ps: list[int], cap: int) -> list[int]:
    out=[1]
    for p in ps:
        base=out[:]
        for b in base:
            v=b*p
            while v<=cap:
                out.append(v)
                v*=p
    assert len(set(out))==len(out)
    return out


def validate(y: int, cap: int) -> dict:
    t0=time.monotonic()
    ps=list(primerange(2,y+1))
    smooth=set(smooth_numbers(ps,cap))
    direct={n for n in smooth if n-1 in smooth}
    pell={r['n'] for r in candidates(ps,cap)}
    assert pell==direct,(sorted(pell-direct),sorted(direct-pell))
    return dict(status='passed',smoothness_bound=y,n_cap=cap,
                smooth_count=len(smooth),adjacent_pair_count=len(pell),
                elapsed=time.monotonic()-t0)


def main():
    ap=argparse.ArgumentParser()
    ap.add_argument('--y',type=int,default=31)
    ap.add_argument('--cap',type=int,default=10**18)
    ap.add_argument('--min',type=int,default=10**8)
    ap.add_argument('--max-i',type=int,default=1000)
    ap.add_argument('--validation-cap',type=int,default=1000000)
    args=ap.parse_args()
    here=Path(__file__).parent
    started=datetime.now(timezone.utc).isoformat()
    valid=validate(args.y,args.validation_cap)
    print(json.dumps(dict(event='validation',**valid)),flush=True)
    ps=list(primerange(2,args.y+1))
    rows=candidates(ps,args.cap,args.min)
    stem=f'smooth-pairs-y{args.y}'
    (here/f'{stem}-inputs.json').write_text(json.dumps(rows,indent=2)+'\n')
    print(json.dumps(dict(event='inputs',count=len(rows),max_n=max((r['n'] for r in rows),default=None))),flush=True)
    statuses=Counter()
    count=0
    near=[]
    with (here/f'{stem}-results.jsonl').open('w') as f:
        for idx,row in enumerate(rows):
            n=row['n']
            gap=n-int(prevprime(n+1))
            for i in range(3,min(args.max_i,gap,n//2-1)+1):
                result=solve_pair(n,i)
                result.update(family='adjacent-smooth',smoothness_bound=args.y,row_index=idx)
                f.write(json.dumps(result)+'\n')
                count+=1
                statuses[result['status']]+=1
                if result.get('survivors') or result['status'].startswith('unknown') or result.get('low_digit_survivors',0):
                    near.append(result)
                    print(json.dumps(result),flush=True)
            f.flush()
            if idx%50==0:
                print(json.dumps(dict(event='progress',completed=idx+1,total=len(rows),n=n)),flush=True)
    summary=dict(start_utc=started,end_utc=datetime.now(timezone.utc).isoformat(),
                 source_command='smooth_pair_probe.py',args=vars(args),validation=valid,
                 input_rows=len(rows),decisions=count,statuses=dict(statuses),near_count=len(near),
                 witness_count=sum(len(r.get('survivors',[])) for r in near))
    (here/f'{stem}-summary.json').write_text(json.dumps(summary,indent=2)+'\n')
    (here/f'{stem}-near-misses.json').write_text(json.dumps(near,indent=2)+'\n')
    print(json.dumps(dict(event='summary',**summary)),flush=True)

if __name__=='__main__':
    main()
