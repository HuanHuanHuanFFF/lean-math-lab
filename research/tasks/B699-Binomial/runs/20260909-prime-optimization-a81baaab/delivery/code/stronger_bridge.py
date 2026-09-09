"""Optional C=4096 variant: exact finite counting bridge to 2^17.
Python stdlib only. Signed squarefree products exceeding the entire finite
range are omitted because every corresponding floor is identically zero.
"""
from __future__ import annotations
from pathlib import Path
from fractions import Fraction as F
from math import gcd,isqrt
from functools import lru_cache
import json,time,copy
ROOT=Path(__file__).resolve().parents[1]
Q=12; K=17; LAST=2**K-1
P=(2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53)
PREFIX=tuple(sum(gcd(a,30)==1 for a in range(1,r+1)) for r in range(30))
def signed_products(ps,limit):
    ds=[(1,1)]
    for p in ps: ds += [(d*p,-s) for d,s in ds[:] if d*p<=limit]
    return ds
DS=signed_products(P[3:],LAST)
def rough30(n):return 8*(n//30)+PREFIX[n%30]
@lru_cache(None)
def upper(n):return len(P)-1+sum(s*rough30(n//d) for d,s in DS)
def lhs(T,k):return 100*(3*(Q+k)*T+5*Q+9*k)
def make():
    out=[];a=1000
    while a<=LAST:
        k=a.bit_length();cap=min(LAST,2**k-1);lo=a-1;hi=cap+1
        while hi-lo>1:
            mid=(hi+lo)//2
            if lhs(upper(mid),k)<=(100*Q-1)*a:lo=mid
            else:hi=mid
        assert lo>=a,(a,k,upper(a))
        T=upper(lo)
        out.append(dict(a=a,b=lo,k=k,T=T,integer_slack=(100*Q-1)*a-lhs(T,k)))
        a=lo+1
    return dict(q=Q,tail_power=K,sieving_primes=P,first_i=1000,last_i=LAST,rows=len(out),certificates=out)
def verify(data):
    assert data['rows']==len(data['certificates'])
    assert data['q']==Q and data['tail_power']==K
    assert data['first_i']==1000 and data['last_i']==LAST
    assert tuple(data['sieving_primes'])==P
    assert all(p>=2 and all(p%d for d in range(2,isqrt(p)+1)) for p in P)
    # Independent direct division, not any inclusion-exclusion implementation.
    cnt=[0]*(LAST+1)
    for n in range(1,LAST+1):cnt[n]=cnt[n-1]+int(all(n%p for p in P))
    # Second independent reconstruction: ungrouped, truncated full IE.
    full=signed_products(P,LAST)
    next_a=1000
    for row in data['certificates']:
        a,b,k,T=[row[z] for z in ('a','b','k','T')]
        assert a==next_a and a<=b<=LAST and b<2**k
        assert T==len(P)-1+cnt[b]==len(P)-1+sum(s*(b//d) for d,s in full)
        assert lhs(T,k)<=(100*Q-1)*a
        assert row['integer_slack']==(100*Q-1)*a-lhs(T,k)
        next_a=b+1
    assert next_a==2**K
    low_log=K*F(56,81); c=F(25,18)
    rho=c/(low_log-F(3,2));rho_log=rho*low_log
    alpha=F(1,3)-F(5,3*2**K)-rho
    margin=alpha*Q*F(56,81)-rho_log-F(25*K,12*2**K)-F(1,2**Q-1)
    residual=F(56,81*300)-F(1,2**Q-1)
    assert margin>0 and residual>0
    return dict(status='PASS',rows=len(data['certificates']),covered_indices=LAST-999,
                smallest_integer_slack=min(r['integer_slack'] for r in data['certificates']),
                sieving_prime_count=len(P),bounded_wheel_terms=len(DS),full_IE_nonzero_terms=len(full),
                naive_wheel_terms=2**len(P[3:]),finite_contradiction_margin_per_i=str(residual),
                tail_rho_upper=str(rho),tail_rho_log_upper=str(rho_log),
                tail_alpha_lower=str(alpha),tail_margin=str(margin))
def mutations(data):
    out=[]
    for name,edit in [
        ('count_understated',lambda d:d['certificates'][0].update(T=0)),
        ('coverage_gap',lambda d:d['certificates'][1].update(a=d['certificates'][1]['a']+1)),
        ('endpoint_missing',lambda d:d['certificates'][-1].update(b=LAST-1))]:
        bad=copy.deepcopy(data);edit(bad)
        try: verify(bad)
        except (AssertionError,ValueError,IndexError):out.append(dict(test=name,result='REJECTED'))
        else:raise AssertionError(name+' accepted')
    return out
if __name__=='__main__':
    if not __debug__: raise RuntimeError('Run without -O: this checker uses assertions.')
    import argparse
    pa=argparse.ArgumentParser();pa.add_argument('--generate',action='store_true');args=pa.parse_args()
    start=time.perf_counter();path=ROOT/'outputs/stronger_bridge_certificates.json'
    if args.generate:
        data=make();path.write_text(json.dumps(data,indent=2)+'\n')
    else:data=json.loads(path.read_text())
    res=verify(data);res['mutation_tests']=mutations(data);res['elapsed_seconds_diagnostic']=time.perf_counter()-start
    print(json.dumps(res,indent=2))
