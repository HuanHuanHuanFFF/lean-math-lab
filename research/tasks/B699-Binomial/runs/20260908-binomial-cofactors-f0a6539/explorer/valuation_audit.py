"""Independent factorial-valuation audit and direct checks of cofactor covers."""
from __future__ import annotations
from collections import Counter
from datetime import datetime, timezone
from math import comb,gcd,prod
from pathlib import Path
import json,random,sys
import sympy
from crt_probe import factors,lucas_nonzero


def vf(n,p):
    out=0
    while n:
        n//=p
        out+=n
    return out


def vc(n,k,p):
    return vf(n,p)-vf(k,p)-vf(n-k,p)


def factor_choose(n,k):
    fs=Counter()
    for a in range(k):
        for p,e in factors(n-a):
            fs[p]+=e
    fs={p:e-vf(k,p) for p,e in fs.items() if e-vf(k,p)>0}
    assert prod(p**e for p,e in fs.items())==comb(n,k)
    return fs


def gcd_audit(n,i,j,direct=False):
    first=factor_choose(n,i)
    common={p:min(e,vc(n,j,p)) for p,e in first.items() if vc(n,j,p)>0}
    for p in first:
        assert (vc(n,j,p)==0)==lucas_nonzero(n,j,p)
    value=prod(p**e for p,e in common.items())
    if direct:
        assert value==gcd(comb(n,i),comb(n,j))
    return dict(n=n,i=i,j=j,gcd=value,gcd_factorization=common,
                target_primes=[p for p in sorted(common) if p>=i],
                strong_primes=[p for p in sorted(common) if p>i],
                compared_with_direct_binomial_gcd=direct)


def boundary_checks():
    rows=[dict(label='coprimality-required',n=28,i=3,j=14,a=0,b=2,p=7,q=13,u=4,v=2),
          dict(label='size-bound-required',n=16,i=2,j=6,a=1,b=1,p=3,q=5,u=5,v=3),
          dict(label='p-strictly-greater-i-required',n=39,i=3,j=19,a=0,b=1,p=3,q=19,u=13,v=2)]
    for r in rows:
        n,i,j,a,b,p,q,u,v=[r[k] for k in ['n','i','j','a','b','p','q','u','v']]
        assert n-a==u*p and n-b==v*q
        x,y=comb(n,i),comb(n,j)
        assert not(x%p==y%p==0 or x%q==y%q==0)
        r.update(first_binomial=x,second_binomial=y,cofactors_coprime=gcd(u,v)==1,
                 size_condition=n>u*v*(a+b))
    return rows


def random_covers():
    rng=random.Random(699)
    certs=[]
    checks=0
    for trial in range(4000):
        n=rng.randrange(8,501)
        i=rng.randrange(2,min(25,n//2))
        a,b=rng.randrange(i),rng.randrange(i)
        aa=[(p,p**e,(n-a)//p**e) for p,e in factors(n-a) if p>i]
        bb=[(p,p**e,(n-b)//p**e) for p,e in factors(n-b) if p>i]
        if not aa or not bb:
            continue
        p,P,u=rng.choice(aa)
        q,Q,v=rng.choice(bb)
        if gcd(u,v)!=1 or n<=u*v*(a+b):
            continue
        first=comb(n,i)
        for j in range(i+1,n//2+1):
            assert not(j%P<=a and j%Q<=b)
            second=comb(n,j)
            assert (first%p==second%p==0 or first%q==second%q==0)
            checks+=1
        certs.append(dict(n=n,i=i,a=a,b=b,p=p,P=P,u=u,q=q,Q=Q,v=v))
    assert certs
    return dict(seed=699,construction_trials=4000,qualifying_certificates=len(certs),
                direct_binomial_pair_checks=checks,certificate_examples=certs[:20])


def main():
    here=Path(__file__).parent
    start=datetime.now(timezone.utc).isoformat()
    small=[gcd_audit(n,i,j,True) for n,i,j in
           [(10,3,5),(16,2,6),(28,3,14),(28,5,14),(244,3,122),(2188,3,1094)]]
    large=[]
    near=json.loads((here/'family-all-near-misses.json').read_text())
    for r in near:
        n,i=r['n'],r['i']
        j=n//2
        assert r['low_digit_survivors']==1
        assert all(j%q<=a for q,a,p in r['used_constraints'])
        row=gcd_audit(n,i,j)
        assert row['target_primes']
        large.append(row)
    result=dict(status='passed',start_utc=start,end_utc=datetime.now(timezone.utc).isoformat(),
                python=sys.version,sympy=sympy.__version__,known_small_examples=small,
                large_near_miss_audits=large,boundary_checks=boundary_checks(),
                cofactor_direct_checks=random_covers(),
                note='Finite independent computations and paper proof; no Lean acceptance claimed.')
    result['end_utc']=datetime.now(timezone.utc).isoformat()
    (here/'valuation-audit.json').write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(dict(status=result['status'],large_near_misses=len(large),
                         cofactor_direct_checks=result['cofactor_direct_checks'],
                         end_utc=result['end_utc'])))

if __name__=='__main__':
    main()
