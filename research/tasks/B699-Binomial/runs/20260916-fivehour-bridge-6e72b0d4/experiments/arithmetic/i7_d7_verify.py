"""Second implementation: new i7 d7 strips and original finite boundary only.

No discovery/generator import, no SymPy, no old position or minQ consumer. The
infinite two-high-exponent part of the full family is a separate historical input.
"""
from datetime import datetime,timezone
from functools import lru_cache
from hashlib import sha256
from math import isqrt
from pathlib import Path
import json
import time

BASES=(2,3,5)


def valuation(n,p):
    out=0
    while n%p==0:
        out+=1
        n//=p
    return out


def exact_source_valuation(e,p,a,r,q,v):
    # Check an exact valuation by one modular exponentiation at the next level.
    mod=q**(v+1)
    residue=(e*pow(p,a,mod)-r)%mod
    return residue!=0 and residue%(mod//q)==0


@lru_cache(None)
def prime(p):
    if p<2:
        return False
    if p%2==0:
        return p==2
    return all(p%r for r in range(3,isqrt(p)+1,2))


def factorial_v(n,p):
    out=0
    while n:
        n//=p
        out+=n
    return out


def binomial_v(n,j,p):
    return factorial_v(n,p)-factorial_v(j,p)-factorial_v(n-j,p)


def n_from(key):
    a,b,c=key
    return 7*2**a*3**b*5**c


def key(row):
    return tuple(row[z] for z in ('A','B','C'))


def qig(n):
    if n<16:
        return True
    t=1
    for r in range(4):
        x=n-r
        sm=1
        for p in BASES:
            while x%p==0:
                sm*=p
                x//=p
        if x%7==0 and x%49!=0:
            sm*=7
        t*=sm
    return t**6*(3*n*n-12*n+8)<2**20*(n-1)**6*(n-3)**3


def edge_key(strip,a):
    return tuple(a if x is None else x for x in strip['fixed'])


def odd_branch(strip,br):
    p,e,q,r=strip['p'],strip['e'],br['q'],br['r']
    delta=valuation(e,q)
    assert delta==valuation(r,q)==br['delta']
    coeff=e//q**delta
    rhs=r//q**delta
    cap=300000000*(5*e).bit_length()
    assert (coeff,rhs,cap)==(br['coefficient'],br['rhs'],br['cap_a'])
    small_order=q-1
    parity=next(a for a in range(small_order) if coeff*pow(p,a,q)%q==rhs%q)
    u,period,v,mod=0,1,1,q
    got=set()
    for rec in br['levels']:
        least=parity+small_order*u
        assert rec=={'v':v,'modulus':mod,'period':small_order*period,'least_a':least}
        if least>=cap:
            assert rec is br['levels'][-1]
            break
        for a in range(108,min(cap,36*(v+delta))):
            if exact_source_valuation(e,p,a,r,q,v+delta):
                got.add(edge_key(strip,a))
        nxt=[u+z*period for z in range(q)
             if coeff*pow(p,parity,mod*q)*pow(p**small_order,u+z*period,mod*q)%(mod*q)==rhs%(mod*q)]
        assert len(nxt)==1
        u=nxt[0]
        period,v,mod=period*q,v+1,mod*q
    else:
        raise AssertionError('odd-prime branch lacks cap termination')
    assert got=={key(row) for row in br['rows']}
    return got


def even_branch(strip,br):
    p,e,r,eps=strip['p'],strip['e'],br['r'],br['epsilon']
    delta=valuation(e,2)
    assert delta==valuation(r,2)
    coeff=(e//2**delta)*p**eps
    rhs=r//2**delta
    if coeff%8!=rhs%8:
        assert br['excluded_by_mod8'] and not br['rows'] and not br['levels']
        return set()
    assert not br['excluded_by_mod8']
    cap=100000000*(5*e).bit_length()
    assert (delta,coeff,rhs,cap)==(br['delta'],br['coefficient'],br['rhs'],br['cap_u'])
    u,v,mod,period=0,3,8,1
    got=set()
    for rec in br['levels']:
        assert rec=={'v':v,'modulus':mod,'period':period,'least_u':u}
        if u>=cap:
            assert rec is br['levels'][-1]
            break
        for a in range(108,36*(v+delta)):
            if a%2!=eps or a//2>=cap:
                continue
            if exact_source_valuation(e,p,a,r,2,v+delta):
                got.add(edge_key(strip,a))
        first=coeff*pow(p*p,u,2*mod)%(2*mod)==rhs%(2*mod)
        second=coeff*pow(p*p,u+period,2*mod)%(2*mod)==rhs%(2*mod)
        assert first!=second
        if second:
            u+=period
        v,mod,period=v+1,mod*2,period*2
    else:
        raise AssertionError('2-adic branch lacks cap termination')
    assert got=={key(row) for row in br['rows']}
    return got


def verify_original(row):
    n=row['n']
    assert row['i']==7 and n==n_from(key(row))
    assert len(row['factorizations'])==7
    for r,f in enumerate(row['factorizations']):
        product=1
        for ps,exponent in f.items():
            p=int(ps)
            assert prime(p) and exponent>=1
            product*=p**exponent
        assert product==n-r
    for ps,expected in row['source_valuations'].items():
        p=int(ps)
        assert prime(p) and p>=7 and binomial_v(n,7,p)==expected>0
    start=8
    high=n//2
    assert row['pairs']==max(0,high-7)
    for seg in row['intervals']:
        left,right,p,power,q=(seg[z] for z in ('first','last','p','power','q'))
        assert left==start and left<=right<=high
        assert prime(p) and p>=7 and q==p**power and power>=1
        assert binomial_v(n,7,p)>0
        assert left//q==right//q and left%q>n%q
        start=right+1
    assert start==high+1


def main():
    started=time.perf_counter()
    here=Path(__file__).resolve().parent
    data=json.loads((here/'i7_d7_probe.json').read_text(encoding='utf-8'))
    cert=json.loads((here/'i7_d7_certificate.json').read_text(encoding='utf-8'))
    expected=set()
    for p in BASES:
        idx=BASES.index(p)
        for a in (range(3) if idx!=0 else (None,)):
            for b in ((0,1) if idx!=1 else (None,)):
                for c in ((0,1) if idx!=2 else (None,)):
                    fixed=(a,b,c)
                    e=7
                    for q,x in zip(BASES,fixed):
                        if x is not None:
                            e*=q**x
                    expected.add((p,e,fixed,3 if p==2 else 2))
    assert len(expected)==16
    observed={(s['p'],s['e'],tuple(s['fixed']),s['minimum']) for s in data['strips']}
    assert observed==expected and len(data['strips'])==16
    all_keys=set()
    branch_count=0
    for strip in data['strips']:
        p,e=strip['p'],strip['e']
        needed={(q,r,eps) for q in BASES if q!=p for r in (1,2,3)
                if valuation(e,q)==valuation(r,q) for eps in ((0,1) if q==2 else (None,))}
        found={(br['q'],br['r'],br.get('epsilon')) for br in strip['branches']}
        assert found==needed and len(strip['branches'])==len(needed)
        branch_count+=len(needed)
        current={edge_key(strip,a) for a in range(strip['minimum'],108)}
        for br in strip['branches']:
            current|=even_branch(strip,br) if br['q']==2 else odd_branch(strip,br)
        assert current=={key(z) for z in strip['rows']}
        assert len(current)==len(strip['rows']) and not current&all_keys
        for row in strip['rows']:
            assert int(row['n'])==n_from(key(row))
        all_keys|=current
    bottom={(a,b,c) for a in range(3) for b in (0,1) for c in (0,1)}
    assert bottom=={key(z) for z in data['bottom']} and len(data['bottom'])==12
    assert not bottom&all_keys
    all_keys|=bottom
    failed={k for k in all_keys if not qig(n_from(k))}
    assert len(all_keys)==1878 and len(failed)==80
    assert {key(z) for z in cert['rows']}==failed and len(cert['rows'])==len(failed)
    for row in cert['rows']:
        verify_original(row)
    pairs=sum(z['pairs'] for z in cert['rows'])
    intervals=sum(len(z['intervals']) for z in cert['rows'])
    assert pairs==cert['pairs']==600819838919757 and intervals==cert['intervals']==184
    result={'status':'all_new_strip_and_original_checks_passed',
            'scope':'16 single-power i7 strips plus low box; old two-position theorem not checked or used here',
            'timestamp_utc':datetime.now(timezone.utc).isoformat(),'strips':16,'branches':branch_count,
            'finite_exponent_triples':len(all_keys),'non_QIG_original_rows':len(failed),
            'original_pairs_covered':pairs,'prime_power_intervals':intervals,
            'largest_n':max(z['n'] for z in cert['rows']),
            'largest_prime':max(int(p) for z in cert['rows'] for p in z['source_valuations']),
            'script_sha256':sha256(Path(__file__).read_bytes()).hexdigest(),
            'reduction_sha256':sha256((here/'i7_d7_probe.json').read_bytes()).hexdigest(),
            'certificate_sha256':sha256((here/'i7_d7_certificate.json').read_bytes()).hexdigest(),
            'elapsed_seconds':time.perf_counter()-started}
    out=here/'i7_d7_verification.json'
    out.write_text(json.dumps(result,indent=2),encoding='utf-8')
    print(json.dumps(result))


if __name__=='__main__':
    main()
