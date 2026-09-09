"""Exact elementary counting bridge for B699. No third-party dependencies.
The sieve count is an upper bound, not an assumption that all survivors are prime.
"""
from __future__ import annotations
from functools import lru_cache
from math import gcd, isqrt
from pathlib import Path
from fractions import Fraction as F
import json, time, argparse
ROOT=Path(__file__).resolve().parents[1]
P=(2,3,5,7,11,13,17,19,23,29,31)
REST=P[3:]

def is_prime(n:int)->bool:
    return n>=2 and all(n%d for d in range(2,isqrt(n)+1))

def divisors_signed(ps):
    out=[(1,1)]
    for p in ps:
        out+= [(d*p,-s) for d,s in out[:]]
    return tuple(out)
REST_DIVISORS=divisors_signed(REST)
R30_PREFIX=tuple(sum(gcd(a,30)==1 for a in range(1,r+1)) for r in range(30))
def rough30(n):
    return 8*(n//30)+R30_PREFIX[n%30]
@lru_cache(None)
def count_upper(n:int)->int:
    assert n>=31
    # 1 is a coprime survivor but is not a prime. All primes in P count separately.
    return len(P)-1+sum(s*rough30(n//d) for d,s in REST_DIVISORS)

def certificate_lhs(T,k):return 100*(3*(14+k)*T+70+9*k)
def make():
    out=[]; a=1000; last=32767
    while a<=last:
        k=a.bit_length()  # Allows b <= 2^k-1, including when a is itself a power of 2.
        cap=min(last,(1<<k)-1)
        lo=a-1;hi=cap+1
        while hi-lo>1:
            mid=(lo+hi)//2
            if certificate_lhs(count_upper(mid),k)<=1399*a:lo=mid
            else:hi=mid
        assert lo>=a,(a,k,count_upper(a))
        T=count_upper(lo)
        out.append(dict(a=a,b=lo,k=k,T=T,integer_slack=1399*a-certificate_lhs(T,k)))
        a=lo+1
    obj=dict(status='PASS',i_min=1000,i_max=last,rows=len(out),sieving_primes=list(P),
             wheel=30,wheel_prefix=list(R30_PREFIX),remaining_subset_terms=len(REST_DIVISORS),
             theorem='100*(3*(14+k)*T+70+9*k)<=1399*a',certificates=out)
    return obj

def verify(data):
    assert data['i_min']==1000 and data['i_max']==32767
    assert data['rows']==len(data['certificates'])
    assert data['sieving_primes']==list(P)
    assert len(set(P))==len(P) and all(is_prime(p) for p in P)
    # Independent exhaustive division on a bounded input interval. This reconstructs
    # EVERY rough-number count and does not use inclusion-exclusion or wheel30.
    M=data['i_max']; rough=[0]*(M+1)
    for n in range(1,M+1):
        rough[n]=rough[n-1]+int(all(n%p for p in P))
    all_divs=divisors_signed(P)
    next_a=1000
    for row in data['certificates']:
        a,b,k,T=[row[z] for z in ('a','b','k','T')]
        assert a==next_a and a<=b<M+1 and b<2**k
        count_direct=len(P)-1+rough[b]
        count_full_ie=len(P)-1+sum(s*(b//d) for d,s in all_divs)
        assert T==count_direct==count_full_ie
        assert certificate_lhs(T,k)<=1399*a
        assert row['integer_slack']==1399*a-certificate_lhs(T,k)
        next_a=b+1
    assert next_a==32768
    # Exact arithmetic in the common contradiction; log2>56/81.
    residual=F(56,81*300)-F(1,16383)
    assert residual>0
    # Infinite tail with elementary pi bound log4*x/(log x-3/2).
    rho=F(75,479)
    rho_log=F(7000,4311)
    alpha=F(1,3)-F(5,3*32768)-rho
    lhs=alpha*F(784,81)
    rhs=rho_log+F(125,131072)+F(1,16383)
    assert alpha>0 and lhs>rhs
    # Small base for the elementary counting theorem.
    base_primes=[n for n in range(2,129) if is_prime(n)]
    weights=[p.bit_length()-1 for p in base_primes]
    assert len(base_primes)==31 and sum(weights)==145
    deficit=F(31)-F(145,7)
    # G(128)=384/(7*(7 log2-3/2)) > using log2<25/36.
    g_base_lower=F(384)/(7*(7*F(25,36)-F(3,2)))
    assert deficit<g_base_lower
    return dict(status='PASS',method='independent bounded division and full inclusion-exclusion',
                rows=len(data['certificates']),covered_indices=32768-1000,
                smallest_integer_slack=min(r['integer_slack'] for r in data['certificates']),
                largest_sieve_endpoint=max(r['b'] for r in data['certificates']),
                wheel_terms_per_generated_row=len(REST_DIVISORS),
                full_inclusion_exclusion_terms_per_checked_row=len(all_divs),
                finite_contradiction_margin_per_i=str(residual),
                infinite_tail_alpha_lower=str(alpha),
                infinite_tail_margin=str(lhs-rhs),
                base_primes_128=base_primes,base_dyadic_log_weight=sum(weights),
                base_counting_deficit_upper=str(deficit),base_G_lower=str(g_base_lower))

def mutation_checks(data):
    import copy
    tests=[]
    mods=[('count_understated',lambda d:d['certificates'][0].__setitem__('T',0)),
          ('coverage_gap',lambda d:d['certificates'][1].__setitem__('a',d['certificates'][1]['a']+1)),
          ('bad_endpoint',lambda d:d['certificates'][-1].__setitem__('b',32766))]
    for name,fn in mods:
        d=copy.deepcopy(data);fn(d)
        try:verify(d)
        except (AssertionError,ValueError,IndexError):tests.append({'test':name,'result':'REJECTED'})
        else:raise AssertionError('malformed certificate accepted: '+name)
    return tests

if __name__=='__main__':
    if not __debug__: raise RuntimeError('Run without -O: this checker uses assertions.')
    ap=argparse.ArgumentParser();ap.add_argument('--generate',action='store_true');args=ap.parse_args()
    start=time.perf_counter()
    path=ROOT/'outputs/count_bridge_certificates.json'
    if args.generate:
        data=make();path.write_text(json.dumps(data,indent=2)+'\n')
    else:data=json.loads(path.read_text())
    result=verify(data);result['mutation_tests']=mutation_checks(data)
    result['elapsed_seconds_diagnostic']=time.perf_counter()-start
    print(json.dumps(result,indent=2))
