"""Second implementation for the complete normalized q_r=1 finite component.

No generator, factor finder, CAS, or historical position consumer is imported.
It independently reconstructs signed/dependent branches, every cap/identity stop,
all candidate exponents, QIG/SIXG screens, and full original prime-power intervals.
"""
from datetime import datetime,timezone
from fractions import Fraction
from functools import lru_cache
from hashlib import sha256
from math import isqrt
from pathlib import Path
import ctypes
import json
import os
import shutil
import time

BASES=(2,3,5)
CUT=192


def valuation(n,p):
    n=abs(n)
    assert n>0
    v=0
    while n%p==0:
        n//=p
        v+=1
    return v


def dependency(p,e,r):
    f=Fraction(r,e)
    if f.denominator!=1:
        return None
    v=abs(f.numerator)
    b=0
    while v>1 and v%p==0:
        v//=p
        b+=1
    return {'sign':1 if f>0 else -1,'shift':b} if v==1 else None


def exact_v(e,p,a,r,q,v):
    mod=q**(v+1)
    residue=(e*pow(p,a,mod)-r)%mod
    return residue!=0 and residue%(mod//q)==0


def rep_key(row):
    return tuple(row[z] for z in ('d','A','B','C','h'))


def make_key(st,a):
    abc=tuple(a if x is None else x for x in st['fixed'])
    return (st['d'],)+abc+(st['h'],)


def number(key):
    d,a,b,c,h=key
    return d*2**a*3**b*5**c+h


def odd_branch(st,br):
    p,e,q,r=st['p'],st['e'],br['q'],br['rho']
    delta=valuation(e,q)
    assert delta==valuation(r,q)==br['delta']
    coeff,rhs=e//q**delta,r//q**delta
    dep=dependency(p,coeff,rhs)
    cap=1000000 if dep else 300000000*(6*e).bit_length()
    assert (coeff,rhs,dep,cap)==(br['coefficient'],br['rhs'],br['dependent'],br['cap_a'])
    order=q-1
    epsilon=next(a for a in range(order) if coeff*pow(p,a,q)%q==rhs%q)
    u,v,mod,period=0,1,q,1
    got=set();identity=False
    for rec in br['levels']:
        least=epsilon+order*u
        assert {k:z for k,z in rec.items() if k!='stop'}=={'v':v,'modulus':mod,'period':order*period,'least_a':least}
        if rec.get('stop')=='cap':
            assert least>=cap and rec is br['levels'][-1]
            break
        if rec.get('stop')=='small_identity':
            assert dep and dep['sign']==1 and least==dep['shift']
            assert least<CUT and order*period>=cap and coeff*p**least==rhs
            assert rec is br['levels'][-1]
            identity=True
            break
        assert 'stop' not in rec and least<cap
        for a in range(CUT,min(cap,36*(v+delta+1))):
            if a%(order*period)!=least:
                continue
            if exact_v(e,p,a,r,q,v+delta):
                got.add(a)
        choices=[u+z*period for z in range(q)
                 if coeff*pow(p,epsilon,q*mod)*pow(p**order,u+z*period,q*mod)%(q*mod)==rhs%(q*mod)]
        assert len(choices)==1
        u=choices[0]
        v,mod,period=v+1,mod*q,period*q
    else:
        raise AssertionError('missing odd-prime cap/identity termination')
    assert sorted(got)==br['candidate_exponents']
    return got,identity


def even_branch(st,br):
    p,e,r,eps=st['p'],st['e'],br['rho'],br['epsilon']
    delta=valuation(e,2)
    assert delta==valuation(r,2)==br['delta']
    reduced=e//2**delta
    rhs=r//2**delta
    coeff=reduced*p**eps
    dep=dependency(p,reduced,rhs)
    cap=1000000 if dep else 100000000*(6*e).bit_length()
    assert (coeff,rhs,dep,cap)==(br['coefficient'],br['rhs'],br['dependent'],br['cap_u'])
    if coeff%8!=rhs%8:
        assert br['excluded_by_mod8'] and not br['levels'] and not br['candidate_exponents']
        return set(),False
    assert not br['excluded_by_mod8']
    least,v,mod,period=0,3,8,1
    got=set();identity=False
    for rec in br['levels']:
        assert {k:z for k,z in rec.items() if k!='stop'}=={'v':v,'modulus':mod,'period':period,'least_u':least}
        if rec.get('stop')=='cap':
            assert least>=cap and rec is br['levels'][-1]
            break
        if rec.get('stop')=='small_identity':
            assert dep and dep['sign']==1 and 2*least+eps==dep['shift']
            assert 2*least+eps<CUT and period>=cap and coeff*(p*p)**least==rhs
            assert rec is br['levels'][-1]
            identity=True
            break
        assert 'stop' not in rec and least<cap
        for a in range(CUT,36*(v+delta+1)):
            if a%2!=eps:
                continue
            u=a//2
            if u>=cap or u%period!=least:
                continue
            if exact_v(e,p,a,r,2,v+delta):
                got.add(a)
        first=coeff*pow(p*p,least,2*mod)%(2*mod)==rhs%(2*mod)
        second=coeff*pow(p*p,least+period,2*mod)%(2*mod)==rhs%(2*mod)
        assert first!=second
        if second:
            least+=period
        v,mod,period=v+1,mod*2,period*2
    else:
        raise AssertionError('missing 2-adic cap/identity termination')
    assert sorted(got)==br['candidate_exponents']
    return got,identity


def small7(n):
    result=1
    x=n
    for p in BASES:
        while x%p==0:
            result*=p
            x//=p
    if x%7==0 and x%49!=0:
        result*=7
    return result


def scalar(n,d):
    if n<16:
        return True,0
    t=1
    for r in range(d):
        t*=small7(n-r)
    if d==4:
        passed=t**6*(3*n*n-12*n+8)<2**20*(n-1)**6*(n-3)**3
    else:
        assert d==6
        passed=t**4*(3*n*n-20*n+24)<2**18*27*(n-1)**4*(n-3)**3*(n-5)**2
    return passed,t


@lru_cache(None)
def prime(p):
    return p>=2 and (p==2 or (p%2 and all(p%d for d in range(3,isqrt(p)+1,2))))


def binomial_v(n,j,p):
    out=0
    q=p
    while q<=n:
        term=n//q-j//q-(n-j)//q
        assert term in (0,1)
        out+=term
        q*=p
    return out


def original(row,failed):
    n=row['n']
    k=rep_key(row['representative'])
    assert k in failed and n==number(k) and row['i']==7
    core=n-k[-1]
    assert small7(core)==core  # exact canonical complete q_h=1 condition
    assert len(row['factorizations'])==7
    for r,fs in enumerate(row['factorizations']):
        product=1
        for ps,exponent in fs.items():
            p=int(ps)
            assert prime(p) and exponent>=1
            product*=p**exponent
        assert product==n-r
    for ps,expected in row['source_valuations'].items():
        p=int(ps)
        assert p>=7 and prime(p) and binomial_v(n,7,p)==expected>0
    low,high=8,n//2
    assert row['pairs']==high-low+1
    cursor=low
    for seg in row['intervals']:
        first,last,p,power,q=(seg[z] for z in ('first','last','p','power','q'))
        assert first==cursor and first<=last<=high
        assert p>=7 and prime(p) and power>=1 and q==p**power
        assert binomial_v(n,7,p)>0
        assert first//q==last//q and first%q>n%q
        if n%49>=7:
            assert p>=11
        cursor=last+1
    assert cursor==high+1


def resources():
    class M(ctypes.Structure):
        _fields_=[('length',ctypes.c_ulong),('load',ctypes.c_ulong)]+[(z,ctypes.c_ulonglong) for z in ('total','avail','pt','pa','vt','va','ext')]
    m=M();m.length=ctypes.sizeof(m)
    ctypes.windll.kernel32.GlobalMemoryStatusEx(ctypes.byref(m))
    return {'available_memory':m.avail,'total_memory':m.total,'logical_cpus':os.cpu_count(),'d_free':shutil.disk_usage('D:/').free}


def main():
    start=time.perf_counter()
    observation=resources()
    here=Path(__file__).resolve().parent
    data=json.loads((here/'i7_window_unit_probe.json').read_text(encoding='utf-8'))
    screen=json.loads((here/'i7_window_unit_screen.json').read_text(encoding='utf-8'))
    cert=json.loads((here/'i7_window_unit_certificate.json').read_text(encoding='utf-8'))
    assert data['schema']=='i7-window-unit-reduction-v2' and data['ds']==[1,7] and data['shifts']==list(range(7)) and data['low_cut']==CUT
    required=set()
    for d in (1,7):
        for h in range(7):
            for idx,p in enumerate(BASES):
                for a in ((None,) if idx==0 else range(3)):
                    for b in ((None,) if idx==1 else (0,1)):
                        for c in ((None,) if idx==2 else (0,1)):
                            fixed=(a,b,c)
                            e=d
                            for q,x in zip(BASES,fixed):
                                if x is not None:
                                    e*=q**x
                            required.add((d,h,p,e,fixed,3 if p==2 else 2))
    observed={(s['d'],s['h'],s['p'],s['e'],tuple(s['fixed']),s['minimum']) for s in data['strips']}
    assert observed==required and len(data['strips'])==len(required)==224
    all_keys=set();identities=0;branch_count=0;dependent_count=0
    for st in data['strips']:
        p,e,h=st['p'],st['e'],st['h']
        needed={(q,r,eps) for q in BASES if q!=p for r in range(-h,4-h) if r and valuation(e,q)==valuation(r,q)
                for eps in ((0,1) if q==2 else (None,))}
        found={(br['q'],br['rho'],br.get('epsilon')) for br in st['branches']}
        assert found==needed and len(st['branches'])==len(needed)
        branch_count+=len(needed)
        exponents=set(range(st['minimum'],CUT))
        for br in st['branches']:
            got,ident=even_branch(st,br) if br['q']==2 else odd_branch(st,br)
            identities+=ident
            dependent_count+=br['dependent'] is not None
            exponents|=got
        assert sorted(exponents)==st['candidate_exponents']
        keys={make_key(st,a) for a in exponents}
        assert not keys&all_keys
        all_keys|=keys
    bottom={(d,a,b,c,h) for d in (1,7) for a in range(3) for b in (0,1) for c in (0,1) for h in range(7)}
    assert bottom=={rep_key(z) for z in data['bottom']} and len(data['bottom'])==len(bottom)==168
    assert not all_keys&bottom
    all_keys|=bottom
    failed={k for k in all_keys if not scalar(number(k),4)[0]}
    assert failed=={rep_key(z) for z in data['non_QIG_representations']}
    assert len(data['non_QIG_representations'])==len(failed)==986
    for z in data['non_QIG_representations']:
        assert int(z['n'])==number(rep_key(z))
    ns={number(k) for k in failed}
    assert {int(z['n']) for z in screen['rows']}==ns and len(screen['rows'])==len(ns)==828
    remaining=set()
    for z in screen['rows']:
        n=int(z['n'])
        passed,t=scalar(n,6)
        assert passed==z['SIXG'] and t==int(z['T6'])
        if not passed:
            remaining.add(n)
    assert {z['n'] for z in cert['rows']}==remaining and len(cert['rows'])==len(remaining)==127
    for z in cert['rows']:
        original(z,failed)
    total=sum(z['pairs'] for z in cert['rows'])
    intervals=sum(len(z['intervals']) for z in cert['rows'])
    assert total==cert['pairs']==1233588 and intervals==cert['intervals']==141
    assert identities==36
    result={'status':'all_new_window_unit_checks_passed',
            'scope':'signed/dependent single-power reduction and complete original boundary; historical two-position premise separately identified',
            'timestamp_utc':datetime.now(timezone.utc).isoformat(),'resource_snapshot':observation,
            'strip_cases':224,'branches':branch_count,'dependent_branches':dependent_count,'identity_stops':identities,
            'finite_representations':len(all_keys),'non_QIG_representations':len(failed),'unique_QIG_survivors':len(ns),
            'SIXG_survivors':len(remaining),'original_pairs_covered':total,'prime_power_intervals':intervals,
            'largest_original_n':max(remaining),'bridge_eligible_finite_rows':sum(z['n']%49>=7 for z in cert['rows']),
            'script_sha256':sha256(Path(__file__).read_bytes()).hexdigest(),
            'reduction_sha256':sha256((here/'i7_window_unit_probe.json').read_bytes()).hexdigest(),
            'screen_sha256':sha256((here/'i7_window_unit_screen.json').read_bytes()).hexdigest(),
            'certificate_sha256':sha256((here/'i7_window_unit_certificate.json').read_bytes()).hexdigest(),
            'elapsed_seconds':time.perf_counter()-start}
    out=here/'i7_window_unit_verification.json'
    out.write_text(json.dumps(result,indent=2),encoding='utf-8')
    print(json.dumps(result))


if __name__=='__main__':
    main()
