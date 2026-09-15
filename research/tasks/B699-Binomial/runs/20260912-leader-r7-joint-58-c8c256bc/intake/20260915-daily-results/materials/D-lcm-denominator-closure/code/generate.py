#!/usr/bin/env python3
"""Generate exact free-position/LCM certificates. Standard library; no old replay."""
from __future__ import annotations
import argparse, json, math, time
from collections import Counter
from functools import lru_cache
from pathlib import Path
PRIMES=(2,3,5,7)

def write(path:Path,data:object)->None:
    path.parent.mkdir(parents=True,exist_ok=True)
    path.write_text(json.dumps(data,sort_keys=True,indent=2)+'\n',encoding='utf-8')

@lru_cache(None)
def factor(x:int)->tuple[tuple[int,int],...]:
    if x<1: raise ValueError('factor argument must be positive')
    ans=[];p=2
    while p*p<=x:
        e=0
        while x%p==0: x//=p;e+=1
        if e: ans.append((p,e))
        p=3 if p==2 else p+2
    if x>1: ans.append((x,1))
    return tuple(ans)

def divisors(fs:tuple[tuple[int,int],...])->list[int]:
    out=[1]
    for p,e in fs:
        previous=out[:];q=1
        for _ in range(e):
            q*=p;out.extend(x*q for x in previous)
    return out

def small(m:int,x:int)->int:
    if x<=0: raise ValueError('positive window entry required')
    s=1
    for p in PRIMES:
        if p>=m: break
        while x%p==0: s*=p;x//=p
    if m in (5,7) and x%m==0 and x%(m*m)!=0: s*=m
    return s

@lru_cache(None)
def norm_factors(m:int,a:int,b:int,r:int)->tuple[tuple[int,int],...]:
    out=Counter()
    for h in range(r+1):
        v=abs(a*h-r*b)
        if v==0: raise ValueError('zero linear factor is not a size bound')
        for p,e in factor(v):
            if p>=m: out[p]+=e
    return tuple(sorted(out.items()))

def value(fs)->int: return math.prod(p**e for p,e in fs)

def free_parameters(m:int,a:int)->tuple[list[int],int]:
    ps=[p for p in PRIMES if p<m and a%p!=0]
    rows=[1]+ps;R=max(rows);D=1
    for p in ps:
        q=1
        while q*p<=R: q*=p
        D*=q
    if m in (5,7) and a%m!=0: D*=m
    return rows,D

def generate_target(m:int)->dict:
    L=math.lcm(*range(1,m+1))
    specs=[];candidates=set();stats=Counter();largest=0;upper=0
    for a in sorted(divisors(factor(L))):
        if a==1: continue
        rows,D=free_parameters(m,a)
        stats['denominators']+=1
        for b in range(1,a//2+1):
            if math.gcd(a,b)!=1: continue
            stats['reduced_fractions']+=1
            for r in rows:
                fs=Counter(dict(factor(D)));fs.update(dict(norm_factors(m,a,b,r)))
                fs=tuple(sorted(fs.items()));W=value(fs)
                upper=max(upper,W+r)
                largest=max(largest,max((p for p,e in fs),default=1))
                specs.append([a,b,r,D,[list(z) for z in fs]])
                stats['free_templates']+=1
                for d in divisors(fs):
                    stats['positive_divisors']+=1;n=d+r
                    if n%a!=0: continue
                    j=(n//a)*b
                    if not(m<j<=n//2): continue
                    # If this holds, the endpoint prime itself is already a witness.
                    if m in (5,7) and a%m==0 and n%(m*m)==0: continue
                    # Only the free position whose full small part divides D is needed.
                    if D%small(m,n-r)!=0: continue
                    stats['eligible_occurrences']+=1
                    candidates.add((n,a,b))
    rejections=[];hist=Counter()
    for n,a,b in sorted(candidates):
        for r in range(1,m):
            if r%a==0: continue
            B=value(norm_factors(m,a,b,r));q=(n-r)//small(m,n-r)
            stats['norm_divisions']+=1
            if B%q!=0:
                rejections.append([n,a,b,r]);hist[str(r)]+=1;break
        else:
            raise ArithmeticError(('unexcluded necessary-system candidate',m,n,a,b))
    stats['unique_candidates']=len(candidates)
    stats['max_candidate_n']=max((n for n,a,b in candidates),default=0)
    stats['absolute_divisor_height']=upper
    stats['largest_factor_prime']=largest
    stats['remaining']=0
    return {'m':m,'L':L,'templates':specs,'rejections':rejections,
            'statistics':dict(stats),'rejection_row_histogram':dict(hist)}

def main(out:Path)->None:
    t=time.perf_counter();targets=[generate_target(m) for m in range(4,9)]
    cert={'schema':1,'theorem':'LCM_DENOMINATOR_CLOSURE_I4_I8',
          'small_part':'remove all p<m powers; remove a single m only when m is prime',
          'targets':targets}
    summary={'status':'GENERATED_EXACT_LCM_DOMAIN','targets':[
        {'m':x['m'],'L':x['L'],**x['statistics'],'rejection_row_histogram':x['rejection_row_histogram']}
        for x in targets]}
    write(out/'certificate.json',cert);write(out/'generation.json',summary)
    print(json.dumps({'status':summary['status'],'seconds':time.perf_counter()-t,
                      'templates':sum(x['statistics']['free_templates'] for x in targets),
                      'divisors':sum(x['statistics']['positive_divisors'] for x in targets),
                      'candidates':sum(x['statistics']['unique_candidates'] for x in targets)},sort_keys=True))
if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True)
    main(ap.parse_args().out)
