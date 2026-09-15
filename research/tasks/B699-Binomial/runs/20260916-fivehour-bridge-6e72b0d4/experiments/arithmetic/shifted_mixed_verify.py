"""Second implementation of shifted exponent reductions and all interval proofs.

No import from any discovery or certificate generator. Frozen scalar checker
utilities provide the deterministic prime and source-valuation routines.
"""
from datetime import datetime,timezone
from functools import lru_cache
from hashlib import sha256
from pathlib import Path
import json
import time
import mixed_powers_verify as previous

DS=(5,7,11,13,17,19,23,25,29,31)
prime=lru_cache(None)(previous.is_prime)


def key(row):
    return tuple(row[z] for z in ('d','A','B','h'))


def target(k):
    d,a,b,h=k
    return d*2**a*3**b+h


def check_horizontal(case):
    d,b,h=case['d'],case['fixed_B'],case['h']
    k=d.bit_length()
    cap=5360*k*(k.bit_length()+11)**2
    assert cap==case['cap_A']
    if b==1 and h in (1,2):
        assert case['uniform'] and not case['rows'] and not case['levels']
        return set()
    assert not case['uniform']
    rhos=tuple(r for r in range(-h,4-h) if r%3) if b==0 else ((1,) if h==0 else (-1,))
    assert tuple(case['rs'])==rhos
    parity={r:0 if d%3==r%3 else 1 for r in rhos}
    root={r:0 for r in rhos}
    v,mod,period4=1,3,1
    result={(d,2,b,h)}
    for record in case['levels']:
        expected_roots={r:2*root[r]+parity[r] for r in rhos}
        assert record['v']==v and record['modulus']==mod and record['period']==2*period4
        assert expected_roots=={int(r):a for r,a in record['roots'].items()}
        if min(expected_roots.values())>=cap:
            assert record is case['levels'][-1]
            break
        for a in range(3,min(cap,10*v)):
            for rho in rhos:
                if d*pow(2,a,mod)%mod!=rho%mod:
                    continue
                if previous.ordp(d*(1<<a)-rho,3)==v:
                    result.add((d,a,b,h))
        for rho in rhos:
            coeff=d*(1<<parity[rho])
            candidates=[root[rho]+z*period4 for z in range(3)
                        if coeff*pow(4,root[rho]+z*period4,3*mod)%(3*mod)==rho%(3*mod)]
            assert len(candidates)==1
            root[rho]=candidates[0]
        v,mod,period4=v+1,mod*3,period4*3
    else:
        raise AssertionError('missing horizontal cap stop')
    assert result=={key(z) for z in case['rows']}
    for row in case['rows']:
        assert int(row['n'])==target(key(row)) and row['QIG']==previous.qig(target(key(row)))
        if row['A']>=3:
            assert row['rho'] in rhos and row['A']<10*row['v']
            assert previous.ordp(d*(1<<row['A'])-row['rho'],3)==row['v']
    return result


def check_vertical(case):
    d,a,h,eps,r=case['d'],case['fixed_A'],case['h'],case['epsilon'],case['r']
    e=d*(1<<a)
    c=d*3**eps
    r0=r//(1<<a)
    bits=(3*e).bit_length()
    cap=3240*bits*(bits.bit_length()+11)**2
    assert (case['c'],case['r0'],case['delta'],case['cap_u'])==(c,r0,a,cap)
    if c%8!=r0%8:
        assert case['excluded_by_mod8'] and not case['rows'] and not case['levels']
        return set()
    assert not case['excluded_by_mod8']
    t,mod,period,least=3,8,1,0
    result=set()
    for record in case['levels']:
        assert record=={'t':t,'modulus':mod,'period':period,'least_u':least}
        if least>=cap:
            assert record is case['levels'][-1]
            break
        for b in range(12,4*(t+a)):
            if b%2!=eps:
                continue
            v=b//2
            if v>=cap or c*pow(9,v,mod)%mod!=r0%mod:
                continue
            if previous.ordp(e*3**b-r,2)==t+a:
                result.add((d,a,b,h))
        f=c*pow(9,least,mod*2)%(mod*2)==r0%(mod*2)
        s=c*pow(9,least+period,mod*2)%(mod*2)==r0%(mod*2)
        assert f!=s
        if s:
            least+=period
        t,mod,period=t+1,mod*2,period*2
    else:
        raise AssertionError('missing vertical cap stop')
    assert result=={key(z) for z in case['rows']}
    for row in case['rows']:
        assert int(row['n'])==target(key(row)) and row['QIG']==previous.qig(target(key(row)))
        assert previous.ordp(e*3**row['B']-r,2)==row['t']+a
    return result


def check_original(row,failed):
    assert key(row) in failed
    n,i=row['n'],row['i']
    assert n==target(key(row)) and i in (4,5)
    low,high=i+1,n//2
    assert row['pairs']==max(0,high-low+1)
    if low>high:
        assert not row['intervals']
        return
    assert len(row['window_factorizations'])==i
    for shift,fs in enumerate(row['window_factorizations']):
        value=1
        for ps,exponent in fs.items():
            p=int(ps)
            assert prime(p) and exponent>=1
            value*=p**exponent
        assert value==n-shift
    for ps,valuation in row['source_valuations'].items():
        p=int(ps)
        assert prime(p) and p>=i and previous.binomial_order(n,i,p)==valuation>0
    cursor=low
    for seg in row['intervals']:
        first,last,p,q,exponent=(seg[z] for z in ('first','last','p','q','power'))
        assert first==cursor and first<=last<=high
        assert prime(p) and p>=i and exponent>=1 and p**exponent==q
        assert previous.binomial_order(n,i,p)>0
        assert first//q==last//q and first%q>n%q
        cursor=last+1
    assert cursor==high+1


def main():
    start=time.perf_counter()
    here=Path(__file__).resolve().parent
    data=json.loads((here/'shifted_mixed_probe.json').read_text(encoding='utf-8'))
    cert=json.loads((here/'shifted_mixed_certificate.json').read_text(encoding='utf-8'))
    assert tuple(data['coefficients'])==DS and data['shifts']==[0,1,2,3]
    eh={(d,b,h) for d in DS for b in (0,1) for h in range(4)}
    assert {(z['d'],z['fixed_B'],z['h']) for z in data['horizontal']}==eh
    assert len(data['horizontal'])==len(eh)
    offsets={0:(1,3),1:(-1,1),2:(-1,1),3:(-1,-3)}
    ev={(d,a,h,eps,r) for d in DS for a in (0,1) for h in range(4) for eps in (0,1)
        for r in (offsets[h] if a==0 else ((2,) if h<2 else (-2,)))}
    assert {(z['d'],z['fixed_A'],z['h'],z['epsilon'],z['r']) for z in data['vertical']}==ev
    assert len(data['vertical'])==len(ev)
    candidates=set()
    for case in data['horizontal']:
        candidates|=check_horizontal(case)
    for case in data['vertical']:
        candidates|=check_vertical(case)
    bottom={(d,a,b,h) for d in DS for a in (0,1) for b in range(12) for h in range(4)}
    assert bottom=={key(z) for z in data['vertical_bottom']}
    assert len(data['vertical_bottom'])==len(bottom)
    candidates|=bottom
    failed={k for k in candidates if not previous.qig(target(k))}
    assert failed=={key(z) for z in data['non_QIG_representations']}
    assert len(data['non_QIG_representations'])==len(failed)
    ns={target(k) for k in failed}
    required={(n,i) for n in ns for i in (4,5)}
    assert {(z['n'],z['i']) for z in cert['rows']}==required
    assert len(cert['rows'])==len(required)
    for z in cert['rows']:
        check_original(z,failed)
    count=sum(z['pairs'] for z in cert['rows'])
    intervals=sum(len(z['intervals']) for z in cert['rows'])
    assert count==cert['pairs']==392031014969 and intervals==877
    # h=0 must preserve the already frozen unshifted finite frontier exactly.
    old=json.loads((here/'mixed_powers_probe.json').read_text(encoding='utf-8'))
    assert {(d,a,b) for d,a,b,h in failed if h==0}=={(z['d'],z['A'],z['B']) for z in old['non_QIG']}
    result={'status':'all_exact_checks_passed','timestamp_utc':datetime.now(timezone.utc).isoformat(),
            'scope':'shifted ten-cofactor two-exponent families for i=4 and i=5; paper inputs separately reviewed',
            'horizontal_cases':len(eh),'vertical_cases':len(ev),
            'active_vertical_high':sum(not c['excluded_by_mod8'] for c in data['vertical']),
            'candidate_representations':len(candidates),'non_QIG_representations':len(failed),
            'unique_original_n':len(ns),'indexed_original_rows':len(required),
            'pairs_covered':count,'prime_power_intervals':intervals,'max_n':max(ns),
            'script_sha256':sha256(Path(__file__).read_bytes()).hexdigest(),
            'reduction_sha256':sha256((here/'shifted_mixed_probe.json').read_bytes()).hexdigest(),
            'certificate_sha256':sha256((here/'shifted_mixed_certificate.json').read_bytes()).hexdigest(),
            'elapsed_seconds':time.perf_counter()-start}
    out=here/'shifted_mixed_verification.json'
    out.write_text(json.dumps(result,indent=2),encoding='utf-8')
    print(json.dumps(result))


if __name__=='__main__':
    main()
