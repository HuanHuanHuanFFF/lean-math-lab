"""Second implementation for the mixed d*2^A*3^B certificate.

No import from the generator. It rebuilds horizontal roots with base 4, vertical
roots with direct binary lift tests, scans every small exponent at each valuation
level, reconstructs all non-QIG rows, and validates each compact interval as an
entire original binomial-carry proof. Same author; independent parent review separate.
"""
from datetime import datetime,timezone
from hashlib import sha256
from math import isqrt
from pathlib import Path
import json
import time

DS=(5,7,11,13,17,19,23,25,29,31)


def ordp(n,p):
    value=0
    while n%p==0:
        value+=1
        n//=p
    return value


def binomial_order(n,j,p):
    # Independent floor-by-power form, not repeated division of n.
    value=0
    power=p
    while power<=n:
        term=n//power-j//power-(n-j)//power
        assert term in (0,1)
        value+=term
        power*=p
    return value


def is_prime(p):
    if p<2:
        return False
    if p%2==0:
        return p==2
    return all(p%v for v in range(3,isqrt(p)+1,2))


def qig(n):
    if n<10:
        return True
    terms=[]
    for r in range(4):
        x=n-r
        factor=1
        for p in (2,3):
            while x%p==0:
                factor*=p
                x//=p
        if x%5==0 and x%25!=0:
            factor*=5
        terms.append(factor)
    t=terms[0]*terms[1]*terms[2]*terms[3]
    return t**6*(3*n*n-12*n+8)<(1<<20)*(n-1)**6*(n-3)**3


def exponent_key(z):
    return (z['d'],z['A'],z['B'])


def horizontal(case):
    d,b=case['d'],case['fixed_B']
    bits=d.bit_length()
    cap=5360*bits*(bits.bit_length()+11)**2
    assert cap==case['cap_A']
    rs=(1,2) if b==0 else (1,)
    parity={r:0 if d%3==r else 1 for r in rs}
    roots={r:0 for r in rs}
    level,mod,period=1,3,1
    candidate={(d,2,b)}
    for record in case['levels']:
        aa={r:2*roots[r]+parity[r] for r in rs}
        assert record['v']==level and record['modulus']==mod and record['period']==2*period
        assert aa=={int(k):v for k,v in record['roots'].items()}
        if min(aa.values())>=cap:
            assert record is case['levels'][-1]
            break
        for a in range(3,min(cap,10*level)):
            for r in rs:
                if d*pow(2,a,mod)%mod!=r:
                    continue
                if ordp(d*(1<<a)-r,3)==level:
                    candidate.add((d,a,b))
        for r in rs:
            c=d*(1<<parity[r])
            proposed=[roots[r]+z*period for z in range(3)
                      if c*pow(4,roots[r]+z*period,mod*3)%(mod*3)==r]
            assert len(proposed)==1
            roots[r]=proposed[0]
        level,mod,period=level+1,mod*3,period*3
    else:
        raise AssertionError('horizontal source ended without cap-certified termination')
    assert candidate=={exponent_key(z) for z in case['rows']}
    return candidate


def vertical(case):
    d,a,eps,r=case['d'],case['fixed_A'],case['epsilon'],case['r']
    e=d*(1<<a)
    c=e*3**eps//(1<<a)
    r0=r//(1<<a)
    assert c==case['c'] and r0==case['r0'] and a==case['delta']
    bits=(3*e).bit_length()
    cap=3240*bits*(bits.bit_length()+11)**2
    assert cap==case['cap_u']
    if c%8!=r0%8:
        assert case['excluded_by_mod8'] and not case['levels'] and not case['rows']
        return set()
    assert not case['excluded_by_mod8']
    t,mod,period,least=3,8,1,0
    candidate=set()
    for record in case['levels']:
        assert record=={'t':t,'modulus':mod,'period':period,'least_u':least}
        if least>=cap:
            assert record is case['levels'][-1]
            break
        # Exhaust all B permitted by the linear inequality at this exact valuation.
        for b in range(12,4*(t+a)):
            if b%2!=eps:
                continue
            u=b//2
            if u>=cap or c*pow(9,u,mod)%mod!=r0%mod:
                continue
            if ordp(e*3**b-r,2)==t+a:
                candidate.add((d,a,b))
        first_ok=c*pow(9,least,2*mod)%(2*mod)==r0%(2*mod)
        second_ok=c*pow(9,least+period,2*mod)%(2*mod)==r0%(2*mod)
        assert first_ok!=second_ok
        if second_ok:
            least+=period
        t,mod,period=t+1,mod*2,period*2
    else:
        raise AssertionError('vertical source ended without cap-certified termination')
    assert candidate=={exponent_key(z) for z in case['rows']}
    return candidate


def verify_interval_row(row):
    d,a,b,i,n=row['d'],row['A'],row['B'],row['i'],row['n']
    assert d in DS and a>=0 and b>=0 and i in (4,5) and n==d*2**a*3**b
    low,high=i+1,n//2
    assert row['pairs']==max(0,high-low+1)
    if low>high:
        assert not row['intervals']
        return
    for shift,factors in enumerate(row['window_factorizations']):
        product=1
        for p_str,exponent in factors.items():
            p=int(p_str)
            assert is_prime(p) and exponent>=1
            product*=p**exponent
        assert product==n-shift
    assert len(row['window_factorizations'])==i
    for p_str,expected in row['source_valuations'].items():
        p=int(p_str)
        assert is_prime(p) and p>=i
        assert expected==binomial_order(n,i,p)>0
    position=low
    for seg in row['intervals']:
        first,last,p,power,q=(seg[k] for k in ('first','last','p','power','q'))
        assert first==position and first<=last<=high
        assert p>=i and is_prime(p) and power>=1 and q==p**power
        assert binomial_order(n,i,p)>0
        assert first//q==last//q
        assert first%q>n%q
        # These two checks certify every intermediate integer as a carry at q.
        # No sampling of j or assumption about other levels is needed.
        position=last+1
    assert position==high+1


def main():
    start=time.perf_counter()
    here=Path(__file__).resolve().parent
    reduction=json.loads((here/'mixed_powers_probe.json').read_text(encoding='utf-8'))
    certificate=json.loads((here/'mixed_powers_certificate.json').read_text(encoding='utf-8'))
    assert tuple(reduction['coefficients'])==DS
    expected_h={(d,b) for d in DS for b in (0,1)}
    assert {(z['d'],z['fixed_B']) for z in reduction['horizontal']}==expected_h
    assert len(reduction['horizontal'])==len(expected_h)
    expected_v={(d,a,eps,r) for d in DS for a in (0,1) for eps in (0,1)
                for r in ((1,3) if a==0 else (2,))}
    assert {(z['d'],z['fixed_A'],z['epsilon'],z['r']) for z in reduction['vertical']}==expected_v
    assert len(reduction['vertical'])==len(expected_v)
    candidates=set()
    for case in reduction['horizontal']:
        new=horizontal(case)
        assert not candidates&new
        candidates|=new
    for case in reduction['vertical']:
        new=vertical(case)
        assert not candidates&new
        candidates|=new
    bottom={(d,a,b) for d in DS for a in (0,1) for b in range(12)}
    assert bottom=={exponent_key(z) for z in reduction['vertical_bottom']}
    assert len(reduction['vertical_bottom'])==len(bottom)
    assert not candidates&bottom
    candidates|=bottom
    failed={key for key in candidates if not qig(key[0]*2**key[1]*3**key[2])}
    assert failed=={exponent_key(z) for z in reduction['non_QIG']}
    assert len(failed)==40
    expected={(d,a,b,i) for d,a,b in failed for i in (4,5)}
    observed={(z['d'],z['A'],z['B'],z['i']) for z in certificate['finite']}
    assert expected==observed and len(certificate['finite'])==len(expected)
    for row in certificate['finite']:
        verify_interval_row(row)
    total=sum(z['pairs'] for z in certificate['finite'])
    count_intervals=sum(len(z['intervals']) for z in certificate['finite'])
    assert total==certificate['pairs']==32248840180
    assert count_intervals==157
    out={'status':'all_exact_checks_passed','timestamp_utc':datetime.now(timezone.utc).isoformat(),
         'scope':'ten two-exponent row families for i=4 and i=5; paper/external inputs separately reviewed',
         'horizontal_cases':len(expected_h),'vertical_cases':len(expected_v),
         'active_vertical_high':sum(not z['excluded_by_mod8'] for z in reduction['vertical']),
         'candidate_rows':len(candidates),'non_QIG_rows':len(failed),
         'original_indexed_rows':len(expected),'original_pairs_covered':total,
         'prime_power_intervals':count_intervals,'maximum_original_n':max(z['n'] for z in certificate['finite']),
         'script_sha256':sha256(Path(__file__).read_bytes()).hexdigest(),
         'reduction_sha256':sha256((here/'mixed_powers_probe.json').read_bytes()).hexdigest(),
         'certificate_sha256':sha256((here/'mixed_powers_certificate.json').read_bytes()).hexdigest(),
         'elapsed_seconds':time.perf_counter()-start}
    path=here/'mixed_powers_verification.json'
    path.write_text(json.dumps(out,indent=2),encoding='utf-8')
    print(json.dumps(out))


if __name__=='__main__':
    main()
