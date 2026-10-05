#!/usr/bin/env python3
"""Audit supplied source prime powers at one unchanged legal original (n,j).
This is a guard, not NC3 certification and not an auxiliary-chart reconstruction.
Only explicitly supplied sources are covered. Trial primality is exact; primes
above --prime-limit are reported UNVERIFIED, never accepted probabilistically.
"""
from math import isqrt
import argparse,json

def vp(x,p):
    if x<=0 or p<2:raise ValueError('positive x and p>=2 required')
    e=0
    while x%p==0:x//=p;e+=1
    return e

def fact_vp(n,p):
    v=0
    while n:n//=p;v+=n
    return v

def choose_vp(n,j,p):return fact_vp(n,p)-fact_vp(j,p)-fact_vp(n-j,p)

def is_prime_exact(p,limit):
    if p>limit:return None
    return p>=2 and all(p%d for d in range(2,isqrt(p)+1))

def audit(n,j,sources,prime_limit=1000000):
    if not all(isinstance(v,int) and not isinstance(v,bool) for v in [n,j]) or not 4<=j<=n//2:
        raise ValueError('Require one unchanged original pair 4<=j<=floor(n/2).')
    out={'unchanged_original_pair':{'n':str(n),'j':str(j)},'i':3,
         'p_equals_i_retained':True,'sources':[],'common_prime_witnesses':[],
         'complete_source_coverage':False,'NC3_certified':False,
         'chart_and_unsquared_Q_link_verified':False}
    for item in sources:
        if not isinstance(item,(list,tuple)) or len(item)!=3:raise ValueError('Each source must be [slot,prime,full_exponent].')
        slot,p,e=item
        if not all(isinstance(v,int) and not isinstance(v,bool) for v in item) or slot not in range(3) or p<3 or e<1:
            raise ValueError('Require slot in 0..2, prime>=3, full exponent>=1.')
        row={'slot':slot,'prime':p,'claimed_exponent':e};out['sources'].append(row)
        prime=is_prime_exact(p,prime_limit)
        if prime is None:row['status']='UNVERIFIED_PRIME_LIMIT';continue
        if not prime:row['status']='REJECT_NONPRIME';continue
        x=n-slot;q=x//(2**vp(x,2))
        if vp(q,3)==1:q//=3   # isolated 3 only; all higher powers retained
        actual=vp(q,p)
        row.update(actual_full_exponent=actual,window_ok=j%pow(p,e)<=slot,
                   v_choose_n3=choose_vp(n,3,p),v_choose_nj=choose_vp(n,j,p))
        if row['v_choose_n3']>0 and row['v_choose_nj']>0:out['common_prime_witnesses'].append(p)
        row['status']='FULL_SOURCE_POWER_VERIFIED' if e==actual else 'REJECT_NOT_ACTUAL_COMPLETE_SOURCE_POWER'
    out['common_prime_witnesses']=sorted(set(out['common_prime_witnesses']))
    out['status']='COMMON3_VERIFIED_FOR_SAME_PAIR' if out['common_prime_witnesses'] else 'NO_CONCLUSION_FROM_SUPPLIED_SOURCES'
    return out

if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--n',type=int,required=True);p.add_argument('--j',type=int,required=True)
    p.add_argument('--sources',required=True,help='JSON list [[slot,prime,full_exponent],...]')
    p.add_argument('--prime-limit',type=int,default=1000000);args=p.parse_args()
    try:res=audit(args.n,args.j,json.loads(args.sources),args.prime_limit)
    except (ValueError,TypeError) as e:p.error(str(e))
    print(json.dumps(res,ensure_ascii=False,indent=2))
