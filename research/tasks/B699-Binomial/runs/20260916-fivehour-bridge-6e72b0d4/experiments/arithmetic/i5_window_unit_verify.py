"""Independent finite verifier for the canonical i5 window family, i4/i5 separately.

Reuses only frozen signed one-power checker functions. No generator, SymPy,
sixth-source-window inequality, or historical position result is imported.
"""
from datetime import datetime,timezone
from functools import lru_cache
from hashlib import sha256
from math import isqrt
from pathlib import Path
import json
import time
import i7_window_unit_verify as arithmetic


def key(z):
    return tuple(z[k] for k in ('d','A','B','h'))


def number(k):
    d,a,b,h=k
    return d*2**a*3**b+h


def small5(n):
    out=1
    for p in (2,3):
        while n%p==0:
            out*=p;n//=p
    if n%5==0 and n%25!=0:
        out*=5
    return out


def qig(n):
    if n<12:
        return True
    values=[small5(n-r) for r in range(4)]
    t=values[0]*values[1]*values[2]*values[3]
    return t**6*(3*n*n-12*n+8)<2**20*(n-1)**6*(n-3)**3


@lru_cache(None)
def prime(p):
    return p>=2 and (p==2 or (p%2 and all(p%d for d in range(3,isqrt(p)+1,2))))


def factorial_v(n,p):
    total=0
    while n:
        n//=p;total+=n
    return total


def binomial_v(n,j,p):
    return factorial_v(n,p)-factorial_v(j,p)-factorial_v(n-j,p)


def original(row,candidates):
    n,i=row['n'],row['i']
    rep=key(row['representative'])
    assert rep in candidates and n==number(rep) and i in (4,5)
    assert small5(n-rep[-1])==n-rep[-1]
    assert len(row['factorizations'])==i
    for r,fs in enumerate(row['factorizations']):
        product=1
        for ps,e in fs.items():
            p=int(ps)
            assert prime(p) and e>=1
            product*=p**e
        assert product==n-r
    for ps,v in row['source_valuations'].items():
        p=int(ps)
        assert p>=i and prime(p) and binomial_v(n,i,p)==v>0
    cursor=i+1;high=n//2
    assert row['pairs']==max(0,high-i)
    for seg in row['intervals']:
        a,b,p,e,q=(seg[k] for k in ('first','last','p','power','q'))
        assert a==cursor and a<=b<=high
        assert p>=i and prime(p) and e>=1 and q==p**e
        assert binomial_v(n,i,p)>0
        assert a//q==b//q and a%q>n%q
        cursor=b+1
    assert cursor==max(i+1,high+1)


def main():
    start=time.perf_counter()
    resources=arithmetic.resources()
    here=Path(__file__).resolve().parent
    data=json.loads((here/'i5_window_unit_probe.json').read_text(encoding='utf-8'))
    cert=json.loads((here/'i5_window_unit_certificate.json').read_text(encoding='utf-8'))
    assert data['ds']==[1,5] and data['shifts']==list(range(5)) and data['low_cut']==192 and data['both_high_n_cap']==11125
    expected=set()
    for d in (1,5):
        for h in range(5):
            for b in (0,1):
                expected.add((d,h,2,d*3**b,(None,b,0),3))
            for a in range(3):
                expected.add((d,h,3,d*2**a,(a,None,0),2))
    observed={(s['d'],s['h'],s['p'],s['e'],tuple(s['fixed']),s['minimum']) for s in data['single_cases']}
    assert observed==expected and len(data['single_cases'])==50
    candidates=set();branches=0;identities=0
    for st in data['single_cases']:
        p,e,h=st['p'],st['e'],st['h']
        q=3 if p==2 else 2
        needed={(q,r,eps) for r in range(-h,4-h) if r and arithmetic.valuation(e,q)==arithmetic.valuation(r,q)
                for eps in ((0,1) if q==2 else (None,))}
        found={(z['q'],z['rho'],z.get('epsilon')) for z in st['branches']}
        assert found==needed and len(st['branches'])==len(needed)
        branches+=len(needed)
        exponents=set(range(st['minimum'],192))
        for br in st['branches']:
            got,ident=arithmetic.even_branch(st,br) if q==2 else arithmetic.odd_branch(st,br)
            exponents|=got;identities+=ident
        assert sorted(exponents)==st['candidate_exponents']
        new=set()
        for exponent in exponents:
            a,b,c=(exponent if x is None else x for x in st['fixed'])
            assert c==0
            new.add((st['d'],a,b,h))
        assert not candidates&new
        candidates|=new
    box={(d,a,b,h) for d in (1,5) for a in range(3) for b in (0,1) for h in range(5)}
    assert box=={key(z) for z in data['bottom']} and len(data['bottom'])==60
    both=set();a=3
    while 2**a*9<11125:
        b=2
        while 2**a*3**b<11125:
            for h in range(5):
                if 2**a*3**b+h<11125:
                    both.add((1,a,b,h))
            b+=1
        a+=1
    assert both=={key(z) for z in data['both_high_finite']} and len(data['both_high_finite'])==115
    assert not candidates&(box|both) and not box&both
    candidates|=box|both
    assert len(candidates)==9850
    failed={k for k in candidates if not qig(number(k))}
    assert failed=={key(z) for z in data['non_QIG_representations']} and len(failed)==217
    for z in data['non_QIG_representations']:
        assert int(z['n'])==number(key(z))
    needed_ns={number(k) for k in failed}|{10,11,28}
    assert len(needed_ns)==192
    assert {(z['n'],z['i']) for z in cert['rows']}=={(n,i) for n in needed_ns for i in (4,5)}
    assert len(cert['rows'])==384
    for row in cert['rows']:
        original(row,candidates)
    endpoint=next(z for z in cert['rows'] if z['n']==28 and z['i']==5)
    assert endpoint['factorizations'][3]=={'5':2}
    assert small5(25)==1 and binomial_v(28,5,5)==1
    last=next(z for z in endpoint['intervals'] if z['first']<=14<=z['last'])
    assert last['p']==5 and last['q']==25
    pairs=sum(z['pairs'] for z in cert['rows'])
    intervals=sum(len(z['intervals']) for z in cert['rows'])
    assert pairs==cert['pairs']==11120608020979064 and intervals==cert['intervals']==1262
    result={'status':'all_independent_i4_i5_window_checks_passed',
            'scope':'canonical i5 q_r=1 family with separate i4/i5 original checks; no old position or sixth window used',
            'timestamp_utc':datetime.now(timezone.utc).isoformat(),'resources':resources,
            'single_cases':50,'branches':branches,'identity_stops':identities,'bottom':60,'both_high_finite':115,
            'finite_representations':len(candidates),'non_QIG_representations':len(failed),
            'unique_original_n':len(needed_ns),'indexed_rows':384,'pairs_covered':pairs,'prime_power_intervals':intervals,
            'endpoint_28_14_prime':5,'endpoint_28_14_power':25,
            'script_sha256':sha256(Path(__file__).read_bytes()).hexdigest(),
            'reduction_sha256':sha256((here/'i5_window_unit_probe.json').read_bytes()).hexdigest(),
            'certificate_sha256':sha256((here/'i5_window_unit_certificate.json').read_bytes()).hexdigest(),
            'frozen_checker_sha256':sha256((here/'i7_window_unit_verify.py').read_bytes()).hexdigest(),
            'elapsed_seconds':time.perf_counter()-start}
    (here/'i5_window_unit_verification.json').write_text(json.dumps(result,indent=2),encoding='utf-8')
    print(json.dumps(result))


if __name__=='__main__':
    main()
