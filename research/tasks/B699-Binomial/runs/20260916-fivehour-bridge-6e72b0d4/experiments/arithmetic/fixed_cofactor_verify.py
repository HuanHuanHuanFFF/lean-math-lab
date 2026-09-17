"""Second exact checker for ten complete fixed-cofactor row families.

Rebuilds base-4 lifting and all A<10B candidates without importing the probe.
Finite original rows are certified by trial-prime witnesses and exact Legendre
valuations, with complete contiguous witness intervals. No probable primes or
sampling are used. Same author as discovery; parent AI review is separate.
"""
from datetime import datetime, timezone
from hashlib import sha256
from math import gcd,isqrt
from pathlib import Path
import json
import time


def vp(n,p):
    c=0
    while n%p==0:
        n//=p
        c+=1
    return c


def fact_v(n,p):
    result=0
    while n:
        n//=p
        result+=n
    return result


def choose_v(n,j,p):
    return fact_v(n,p)-fact_v(j,p)-fact_v(n-j,p)


def prime(p):
    return p>=2 and all(p%d for d in range(2,isqrt(p)+1))


def factor(n):
    fs={}
    p=2
    while p*p<=n:
        while n%p==0:
            fs[p]=fs.get(p,0)+1
            n//=p
        p=3 if p==2 else p+2
    if n>1:
        fs[n]=fs.get(n,0)+1
    assert all(prime(p) for p in fs)
    return fs


def small(n):
    return 2**vp(n,2)*3**vp(n,3)*(5 if vp(n,5)==1 else 1)


def qig(n):
    sm=[small(n-r) for r in range(4)]
    t=sm[0]*sm[1]*sm[2]*sm[3]
    left=t**6*(3*n*n-12*n+8)
    right=2**20*(n-1)**6*(n-3)**3
    return left<right,sm


def exponents(d):
    bits=d.bit_length()
    cap=5360*bits*(bits.bit_length()+11)**2
    parity={r:0 if d%3==r else 1 for r in (1,2)}
    u={1:0,2:0}
    b,mod,period4=1,3,1
    lifts=[]
    candidates=[]
    while True:
        aa={r:2*u[r]+parity[r] for r in (1,2)}
        assert all(d*pow(2,aa[r],mod)%mod==r for r in (1,2))
        lifts.append({'B':b,'modulus':mod,'base4_period':period4,'least_A':aa})
        if min(aa.values())>=cap:
            break
        for a in range(3,min(cap,10*b)):
            r=d*(2 if a%2 else 1)%3
            if d*pow(2,a,mod)%mod!=r:
                continue
            n=d*(1<<a)
            if vp(n-r,3)!=b:
                continue
            passed,sm=qig(n)
            candidates.append({'A':a,'B':b,'r':r,'n':str(n),'small_parts':sm,'QIG':passed})
        for r in (1,2):
            choices=[u[r]+t*period4 for t in range(3)
                     if d*(1<<parity[r])*pow(4,u[r]+t*period4,3*mod)%(3*mod)==r]
            assert len(choices)==1
            assert choices[0]>=u[r]
            u[r]=choices[0]
        b,mod,period4=b+1,mod*3,period4*3
    candidates.sort(key=lambda z:z['A'])
    assert len({z['A'] for z in candidates})==len(candidates)
    return {'d':d,'cap':cap,'lifting':lifts,'candidates':candidates}


def certify_original_row(d,a):
    n=d*(1<<a)
    if n//2<6:
        return {'d':d,'A':a,'n':n,'scope':'empty legal j range','pair_count':0}
    fs=[factor(n-r) for r in range(5)]
    primes=sorted({p for f in fs for p in f if p>=5 and choose_v(n,5,p)>0},reverse=True)
    assert primes and all(prime(p) for p in primes)
    runs=[]
    count=0
    for j in range(6,n//2+1):
        good=[p for p in primes if choose_v(n,j,p)>0]
        assert good, (d,a,n,j,'no original witness')
        p=good[0]
        if runs and runs[-1]['p']==p and runs[-1]['last']+1==j:
            runs[-1]['last']=j
        else:
            runs.append({'first':j,'last':j,'p':p})
        count+=1
    assert count==n//2-5
    # Recheck the serialized interval proof, including no holes or overlaps.
    next_j=6
    for seg in runs:
        assert seg['first']==next_j and seg['first']<=seg['last']<=n//2
        p=seg['p']
        assert p>=5 and prime(p) and choose_v(n,5,p)>0
        assert all(choose_v(n,j,p)>0 for j in range(seg['first'],seg['last']+1))
        next_j=seg['last']+1
    assert next_j==n//2+1
    return {'d':d,'A':a,'n':n,'pair_count':count,'window_factorizations':fs,
            'source_prime_valuations':{p:choose_v(n,5,p) for p in primes},
            'witness_intervals':runs}


def main():
    started=time.perf_counter()
    ds=[5,7,11,13,17,19,23,25,29,31]
    rows=[exponents(d) for d in ds]
    probe=json.loads(Path(__file__).with_name('fixed_cofactor_probe.json').read_text(encoding='utf-8'))
    for row,old in zip(rows,probe['rows'],strict=True):
        assert row['d']==old['d'] and row['cap']==old['cap']
        assert [(z['A'],z['B'],z['QIG']) for z in row['candidates']]==[(z['A'],z['B'],z['QIG']) for z in old['candidates']]
        assert len(row['lifting'])==len(old['levels'])
        for new,prev in zip(row['lifting'],old['levels'],strict=True):
            assert new['least_A']=={int(k):v for k,v in prev['roots'].items()}
    original=[]
    for row in rows:
        remaining=[z['A'] for z in row['candidates'] if not z['QIG']]
        for a in sorted(set([0,1,2]+remaining)):
            original.append(certify_original_row(row['d'],a))
    result={'status':'all_exact_checks_passed','scope':'ten full d*2^A i=5 row families, conditional on adopted paper bound',
            'coefficients':ds,'timestamp_utc':datetime.now(timezone.utc).isoformat(),
            'script_sha256':sha256(Path(__file__).read_bytes()).hexdigest(),
            'exponent_reductions':rows,'original_rows':original,
            'original_pair_count':sum(z['pair_count'] for z in original),
            'elapsed_seconds':time.perf_counter()-started}
    out=Path(__file__).with_name('fixed_cofactor_certificate.json')
    out.write_text(json.dumps(result,indent=2),encoding='utf-8')
    print(json.dumps({'status':result['status'],'coefficients':ds,'original_rows':len(original),
                      'empty_rows':sum(z['pair_count']==0 for z in original),
                      'original_pairs':result['original_pair_count'],
                      'largest_n':max(z['n'] for z in original),
                      'witness_intervals':sum(len(z.get('witness_intervals',[])) for z in original),
                      'seconds':result['elapsed_seconds']}))


if __name__=='__main__':
    main()
