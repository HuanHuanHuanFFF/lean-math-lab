"""Independent i6 canonical-window finite verifier.

Reuses only frozen single-power checker functions. New lattices are verified by
basis/index/reduction certificates; their points are enumerated in basis coordinates,
not by the generator's residue loop. No old position theorem or generator is imported.
"""
from datetime import datetime,timezone
from functools import lru_cache
from hashlib import sha256
from math import isqrt
from pathlib import Path
import json
import time
import i7_window_unit_verify as single_check

BASES=(2,3,5)
THRESHOLD={2:3,3:2,5:2}
SUM_CUT=64
CAP=10**9


def number(k):
    a,b,c,h=k
    return 2**a*3**b*5**c+h


def key(row):
    return tuple(row[z] for z in ('A','B','C','h'))


def dot(a,b):
    return a[0]*b[0]+a[1]*b[1]


def lattice_traces(data):
    assert {tr['q'] for tr in data['traces']}==set(BASES) and len(data['traces'])==3
    for tr in data['traces']:
        q=tr['q'];p,r=[x for x in BASES if x!=q]
        multiplier=2 if q==2 else q-1
        pp,rr=p**multiplier,r**multiplier
        assert (tr['p'],tr['r'],tr['power_multiplier'],tr['P'],tr['R'],tr['norm_cap'])==(p,r,multiplier,pp,rr,CAP)
        v=3 if q==2 else 1
        mod=q**v;order=1;logarithm=0
        for rec in tr['levels']:
            assert (rec['v'],rec['prime_power'],rec['order'],rec['logarithm'])==(v,mod,order,logarithm)
            assert 0<=logarithm<order and pow(pp,logarithm,mod)==rr%mod
            b1,b2=rec['basis']
            det=b1[0]*b2[1]-b1[1]*b2[0]
            assert abs(det)==order
            assert all((a+logarithm*b)%order==0 for a,b in (b1,b2))
            c1=(b1[0]+logarithm*b1[1])//order
            c2=(b2[0]+logarithm*b2[1])//order
            assert abs(c1*b2[1]-c2*b1[1])==1  # full-index basis, not a sublattice
            assert 0<dot(b1,b1)<=dot(b2,b2)
            assert 2*abs(dot(b1,b2))<=dot(b1,b1)
            assert dot(b1,b1)==rec['shortest_squared']
            if rec.get('stop')=='norm_cap':
                assert rec is tr['levels'][-1] and dot(b1,b1)>=CAP**2
                break
            assert 'stop' not in rec and dot(b1,b1)<CAP**2
            lifts=[logarithm+z*order for z in range(q)
                   if pow(pp,logarithm+z*order,mod*q)==rr%(mod*q)]
            assert len(lifts)==1
            logarithm=lifts[0]
            v,mod,order=v+1,mod*q,order*q
        else:
            raise AssertionError('lattice trace lacks a complete norm-cap stop')


def vectors_from_basis(rec,bound):
    b1,b2=rec['basis']
    det=rec['order']
    # Inverse-basis coordinate bounds for 0<a,b<=bound, rounded safely upward.
    mmax=((abs(b2[0])+abs(b2[1]))*bound+det-1)//det
    nmax=((abs(b1[0])+abs(b1[1]))*bound+det-1)//det
    for m in range(-mmax,mmax+1):
        for n in range(-nmax,nmax+1):
            a=m*b1[0]+n*b2[0]
            b=m*b1[1]+n*b2[1]
            if a>=1 and b>=1 and a+b<=bound:
                yield a,b


def high_candidates(data):
    linear={2:6,3:12,5:18}
    got=set();keys=set()
    for tr in data['traces']:
        q,p,r=tr['q'],tr['p'],tr['r']
        for rec in tr['levels']:
            if 'stop' in rec:
                continue
            v=rec['v']
            for delta in range(THRESHOLD[q]):
                for h in range(6):
                    for rho in range(-h,4-h):
                        if not rho or single_check.valuation(rho,q)!=delta:
                            continue
                        unit=abs(rho)//q**delta
                        sp=single_check.valuation(unit,p);unit//=p**sp
                        sr=single_check.valuation(unit,r);unit//=r**sr
                        assert unit==1
                        bound=linear[q]*(v+delta)-sp-sr
                        if bound<SUM_CUT-sp-sr or bound<2 or rec['shortest_squared']>bound**2:
                            continue
                        for a,b in vectors_from_basis(rec,bound):
                            aa,bb=a+sp,b+sr
                            if aa<THRESHOLD[p] or bb<THRESHOLD[r] or aa+bb<SUM_CUT:
                                continue
                            assert aa+bb<=linear[q]*(v+delta)
                            core=q**delta*p**aa*r**bb
                            if single_check.valuation(core-rho,q)!=v+delta:
                                continue
                            powers={q:delta,p:aa,r:bb}
                            k=tuple(powers[z] for z in BASES)+(h,)
                            keys.add(k)
                            got.add(k+(q,delta,rho,v,a,b))
    stored={key(z)+tuple(z[k] for k in ('q','delta','rho','v','a_reduced','b_reduced')) for z in data['high_candidates']}
    assert got==stored and len(stored)==len(data['high_candidates'])==139
    for z in data['high_candidates']:
        assert int(z['n'])==number(key(z))
    return keys


def small6(n):
    value=1
    for p in BASES:
        while n%p==0:
            n//=p;value*=p
    return value


def classification(n):
    if n<14:
        return 'empty'
    sm=[small6(n-r) for r in range(6)]
    t=sm[0]*sm[1]*sm[2]*sm[3]
    if t**6*(3*n*n-12*n+8)<2**20*(n-1)**6*(n-3)**3:
        return 'QIG'
    if n>=16:
        t*=sm[4]*sm[5]
        if t**4*(3*n*n-20*n+24)<2**18*27*(n-1)**4*(n-3)**3*(n-5)**2:
            return 'SIXG'
    return 'needs_original'


@lru_cache(None)
def prime(p):
    return p>=2 and (p==2 or (p%2 and all(p%d for d in range(3,isqrt(p)+1,2))))


def fact_v(n,p):
    v=0
    while n:
        n//=p;v+=n
    return v


def binomial_v(n,j,p):
    return fact_v(n,p)-fact_v(j,p)-fact_v(n-j,p)


def original(row,candidates):
    n=row['n'];k=key(row['representative'])
    assert k in candidates and n==number(k) and row['i']==6
    assert small6(n-k[-1])==n-k[-1]
    assert len(row['factorizations'])==6
    for shift,f in enumerate(row['factorizations']):
        product=1
        for ps,e in f.items():
            p=int(ps)
            assert prime(p) and e>=1
            product*=p**e
        assert product==n-shift
    for ps,v in row['source_valuations'].items():
        p=int(ps)
        assert prime(p) and p>=7 and binomial_v(n,6,p)==v>0
    cursor=7;high=n//2
    assert row['pairs']==max(0,high-6)
    for seg in row['intervals']:
        a,b,p,e,q=(seg[z] for z in ('first','last','p','power','q'))
        assert a==cursor and a<=b<=high
        assert p>=7 and prime(p) and e>=1 and q==p**e
        assert binomial_v(n,6,p)>0
        assert a//q==b//q and a%q>n%q
        cursor=b+1
    assert cursor==high+1


def main():
    start=time.perf_counter()
    resources=single_check.resources()
    here=Path(__file__).resolve().parent
    single=json.loads((here/'i7_window_unit_probe.json').read_text(encoding='utf-8'))
    lattices=json.loads((here/'i6_two_high_lattice_probe.json').read_text(encoding='utf-8'))
    screen=json.loads((here/'i6_window_unit_screen.json').read_text(encoding='utf-8'))
    cert=json.loads((here/'i6_window_unit_certificate.json').read_text(encoding='utf-8'))
    one=set();single_cases=0
    for st in single['strips']:
        if st['d']!=1 or st['h']>5:
            continue
        single_cases+=1
        exponents=set(range(st['minimum'],single_check.CUT))
        for br in st['branches']:
            got,_=single_check.even_branch(st,br) if br['q']==2 else single_check.odd_branch(st,br)
            exponents|=got
        assert sorted(exponents)==st['candidate_exponents']
        for a in exponents:
            abc=tuple(a if x is None else x for x in st['fixed'])
            one.add(abc+(st['h'],))
    assert single_cases==96
    box={(a,b,c,h) for a in range(3) for b in (0,1) for c in (0,1) for h in range(6)}
    assert box=={key(z) for z in single['bottom'] if z['d']==1 and z['h']<=5}
    assert not one&box
    one|=box
    assert len(one)==screen['single_and_box_count']==18807
    lattice_traces(lattices)
    high=high_candidates(lattices)
    low=set()
    for q in BASES:
        p,r=[x for x in BASES if x!=q]
        for delta in range(THRESHOLD[q]):
            for h in range(6):
                for total in range(THRESHOLD[p]+THRESHOLD[r],SUM_CUT):
                    for a in range(THRESHOLD[p],total-THRESHOLD[r]+1):
                        powers={q:delta,p:a,r:total-a}
                        low.add(tuple(powers[z] for z in BASES)+(h,))
    assert len(low)==lattices['low_pair_count']==75420
    assert not low&high and not one&(low|high)
    candidates=one|low|high
    assert len(candidates)==screen['all_candidate_count']==94366
    non_qig={};counts={}
    for k in candidates:
        n=number(k);result=classification(n)
        counts[result]=counts.get(result,0)+1
        if result not in ('QIG','empty'):
            if n in non_qig:
                assert non_qig[n]==result
            non_qig[n]=result
    assert counts==screen['counts']
    assert len(screen['rows'])==len(non_qig)==595
    assert {int(z['n']) for z in screen['rows']}==set(non_qig)
    for z in screen['rows']:
        k=key(z['representative']);n=int(z['n'])
        assert k in candidates and n==number(k) and z['result']==non_qig[n]
    remaining={n for n,state in non_qig.items() if state=='needs_original'}
    assert {z['n'] for z in cert['rows']}==remaining and len(cert['rows'])==len(remaining)==46
    for row in cert['rows']:
        original(row,candidates)
    pairs=sum(z['pairs'] for z in cert['rows'])
    intervals=sum(len(z['intervals']) for z in cert['rows'])
    assert pairs==cert['pairs']==23029 and intervals==cert['intervals']==51
    result={'status':'all_independent_i6_window_checks_passed',
            'scope':'complete i6 q_r=1 finite components and norm-cap lattices; no old position theorem used',
            'timestamp_utc':datetime.now(timezone.utc).isoformat(),'resources':resources,
            'single_cases':single_cases,'single_and_box_candidates':len(one),'low_two_high':len(low),
            'high_lattice_candidates':len(high),'all_candidates':len(candidates),'counts':counts,
            'unique_QIG_survivors':len(non_qig),'original_rows':len(remaining),'max_original_n':max(remaining),
            'original_pairs_covered':pairs,'prime_power_intervals':intervals,
            'lattice_stops':[{'q':tr['q'],'v':tr['levels'][-1]['v'],'shortest_squared':tr['levels'][-1]['shortest_squared']} for tr in lattices['traces']],
            'script_sha256':sha256(Path(__file__).read_bytes()).hexdigest(),
            'lattice_source_sha256':sha256((here/'i6_two_high_lattice_probe.json').read_bytes()).hexdigest(),
            'single_source_sha256':sha256((here/'i7_window_unit_probe.json').read_bytes()).hexdigest(),
            'frozen_single_checker_sha256':sha256((here/'i7_window_unit_verify.py').read_bytes()).hexdigest(),
            'screen_sha256':sha256((here/'i6_window_unit_screen.json').read_bytes()).hexdigest(),
            'certificate_sha256':sha256((here/'i6_window_unit_certificate.json').read_bytes()).hexdigest(),
            'elapsed_seconds':time.perf_counter()-start}
    out=here/'i6_window_unit_verification.json'
    out.write_text(json.dumps(result,indent=2),encoding='utf-8')
    print(json.dumps(result))


if __name__=='__main__':
    main()
