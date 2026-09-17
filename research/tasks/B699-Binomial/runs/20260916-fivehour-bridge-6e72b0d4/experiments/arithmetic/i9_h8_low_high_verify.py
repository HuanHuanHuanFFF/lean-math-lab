"""Independent complete replay: fixed-form coverage, all lifts, scalar and original i8 rows.

No generator, lattice reducer, symbolic algebra, or probabilistic primality import.
Finite affine candidates use residue progressions rather than coordinate boxes.
"""
from collections import Counter
from fractions import Fraction
from functools import lru_cache
from hashlib import sha256
from itertools import product
from math import isqrt
from pathlib import Path
import json
import time

PRIMES=(2,3,5,7)
LIMITS=(4,2,2,2)
CUT=80
CAP=10**32


def valuation(x,p):
    assert x
    e=0
    while x%p==0:x//=p;e+=1
    return e


def form_key(tr):return (tuple(tr['high']),tr['q'],tr['num'],tr['den'])


def inventory_check(data):
    actual_cells={tuple(x['fixed'])+(x['h'],):i for i,x in enumerate(data['cells'])}
    assert len(actual_cells)==len(data['cells'])
    expected_forms={};expected_cells=set();counts=Counter()
    for mask in product((False,True),repeat=4):
        dimension=sum(mask)
        if dimension not in (1,2):continue
        high=tuple(p for p,flag in zip(PRIMES,mask) if flag)
        options=[(None,) if flag else range(bound) for flag,bound in zip(mask,LIMITS)]
        for fixed in product(*options):
            for h in range(8,9):
                cellkey=tuple(fixed)+(h,);expected_cells.add(cellkey);counts[dimension]+=1
                ci=actual_cells[cellkey]
                assert data['cells'][ci]['high']==list(high)
                for qindex,(q,flag) in enumerate(zip(PRIMES,mask)):
                    if flag:continue
                    delta=fixed[qindex]
                    for rho in range(-h,6-h):
                        if not rho or valuation(abs(rho),q)!=delta:continue
                        coefficient=1
                        for z,p in enumerate(PRIMES):
                            if z!=qindex and not mask[z]:coefficient*=p**fixed[z]
                        c=Fraction(coefficient,rho//q**delta)
                        key=(high,q,c.numerator,c.denominator)
                        expected_forms.setdefault(key,set()).add(ci)
    assert expected_cells==set(actual_cells)
    actual_forms={form_key(t):set(t['cells']) for t in data['traces']}
    assert len(actual_forms)==len(data['traces']) and actual_forms==expected_forms
    assert counts=={1:56,2:36}
    assert Counter(len(k[0]) for k in expected_forms)=={1:258,2:134}


def remainder(high,num,den,powers,mod):
    value=num
    for prime,exponent in zip(high,powers):value=value*pow(prime,exponent,mod)%mod
    return (value-den)%mod


def linear_interval(c,lo,hi):return (c*lo,c*hi) if c>=0 else (c*hi,c*lo)


def global_two(stop,high,lvalue,tvalue,order):
    b1,b2=stop['basis'];det=b1[0]*b2[1]-b1[1]*b2[0]
    assert abs(det)==order
    assert all((a+lvalue*b)%order==0 for a,b in (b1,b2))
    norm1=sum(x*x for x in b1);norm2=sum(x*x for x in b2)
    assert 0<norm1<=norm2 and 2*abs(sum(x*y for x,y in zip(b1,b2)))<=norm1
    rows=[(b2[1],-b2[0]),(-b1[1],b1[0])]
    if det<0:det=-det;rows=[(-a,-b) for a,b in rows]
    lo1=4 if high[0]==2 else 2;lo2=4 if high[1]==2 else 2
    bounds=[]
    for a,b in rows:
        x0,x1=linear_interval(a,lo1-tvalue,CAP-1-tvalue)
        y0,y1=linear_interval(b,lo2,CAP-1)
        bounds.extend([-((-(x0+y0))//det),(x1+y1)//det])
    assert bounds==stop['bounds']
    m0,m1,k0,k1=bounds
    size=max(0,m1-m0+1)*max(0,k1-k0+1)
    assert size==stop['box_size'] and size<=32
    result=[]
    for m in range(m0,m1+1):
        for k in range(k0,k1+1):
            a=tvalue+m*b1[0]+k*b2[0];b=m*b1[1]+k*b2[1]
            if a>=lo1 and b>=lo2 and a+b<CAP:result.append((a,b))
    return result


def trace_check(tr):
    high=tuple(tr['high']);q=tr['q'];num=tr['num'];den=tr['den']
    dimension=len(high);multiplier=2 if q==2 else q-1
    base=high[0]**multiplier;start=valuation(base-1,q)
    assert tr['start']==start and tr['cap']==CAP
    assert start in (1,2,3,4)
    stop=tr['stop'];mod=q**start
    target=pow(den,multiplier,mod)*pow(num,-multiplier,mod)%mod
    if target!=1:
        assert stop=={'kind':'incompatible_principal_start','v':start,'target':target}
        assert not tr['candidates']
        return 0,0
    assert stop['kind']=='global_no_source_point'
    v=start;order=1;lvalue=tvalue=0;expected=[]
    while True:
        mod=q**v
        assert pow(base,order,mod)==1
        if order>1:assert pow(base,order//q,mod)!=1
        assert pow(base,tvalue,mod)*pow(num,multiplier,mod)%mod==pow(den,multiplier,mod)
        if dimension==2:assert pow(base,lvalue,mod)==pow(high[1],multiplier,mod)
        if v==stop['v']:
            assert (stop['M'],stop['L'],stop['T'])==(order,lvalue,tvalue)
            if dimension==1:
                low=4 if high[0]==2 else 2
                a0=low+(tvalue-low)%order
                assert stop['bounds']==[a0,CAP-1,order]
                count=max(0,(CAP-1-a0)//order+1)
                assert count==stop['box_size'] and count<=32
                points=[(a,) for a in range(a0,CAP,order)]
            else:
                points=global_two(stop,high,lvalue,tvalue,order)
            assert len(points)==stop['global_points_checked']
            assert all(remainder(high,num,den,x,mod)!=0 for x in points)
            break
        bound=5+(10 if dimension==1 else 8)*(v+3)
        if dimension==1:
            low=CUT
            initial=low+(tvalue-low)%order
            points=((a,) for a in range(initial,bound+1,order))
        else:
            collected=[]
            lowa=4 if high[0]==2 else 2
            lowb=4 if high[1]==2 else 2
            for b in range(lowb,bound-lowa+1):
                first=lowa+(tvalue-lvalue*b-lowa)%order
                for a in range(first,bound-b+1,order):
                    if a+b>=CUT:collected.append((a,b))
            points=collected
        for powers in points:
            rem=remainder(high,num,den,powers,mod*q)
            if rem and rem%mod==0:expected.append((tuple(powers),v))
        nextmod=mod*q
        logs=[tvalue+z*order for z in range(q)
              if pow(base,tvalue+z*order,nextmod)*pow(num,multiplier,nextmod)%nextmod==pow(den,multiplier,nextmod)]
        assert len(logs)==1;tvalue=logs[0]
        if dimension==2:
            logs=[lvalue+z*order for z in range(q)
                  if pow(base,lvalue+z*order,nextmod)==pow(high[1],multiplier,nextmod)]
            assert len(logs)==1;lvalue=logs[0]
        v+=1;order*=q
        assert v<=stop['v']<500
    reported=[(tuple(z['powers']),z['v']) for z in tr['candidates']]
    assert sorted(expected)==sorted(reported)
    return v-start+1,len(expected)


def number(rep):
    answer=1
    for p,a in zip(PRIMES,rep[:4]):answer*=p**a
    return answer+rep[4]


def scalar(n):
    if n<18:return 'empty'
    parts=[]
    for r in range(6):
        x=n-r;coarse=x
        for p in PRIMES:
            while coarse%p==0:coarse//=p
        parts.append(x//coarse)
    t4=parts[0]*parts[1]*parts[2]*parts[3]
    if t4**6*(3*n*n-12*n+8)<2**20*(n-1)**6*(n-3)**3:return 'QIG'
    t6=t4*parts[4]*parts[5]
    if t6**4*(3*n*n-20*n+24)<2**18*27*(n-1)**4*(n-3)**3*(n-5)**2:return 'SIXG'
    return 'needs_original'


def representations(data):
    for exps in product(*(range(z) for z in LIMITS)):
        for h in range(8,9):yield exps+(h,),'box'
    for cell in data['cells']:
        high=tuple(cell['high']);positions=[PRIMES.index(p) for p in high]
        # Independent rectangle and sum filter, not the generator's triangular ranges.
        for exponents in product(*(range(LIMITS[z],CUT) for z in positions)):
            if sum(exponents)>=CUT:continue
            fixed=list(cell['fixed'])
            for z,a in zip(positions,exponents):fixed[z]=a
            yield tuple(fixed)+(cell['h'],),'bottom'
    extras=set()
    for tr in data['traces']:
        positions=[PRIMES.index(p) for p in tr['high']]
        for z in tr['candidates']:
            for ci in tr['cells']:
                fixed=list(data['cells'][ci]['fixed'])
                for position,a in zip(positions,z['powers']):fixed[position]=a
                extras.add(tuple(fixed)+(data['cells'][ci]['h'],))
    for rep in sorted(extras):yield rep,'high'


@lru_cache(None)
def is_prime(p):
    return p>=2 and (p==2 or (p%2 and all(p%d for d in range(3,isqrt(p)+1,2))))


def factorial_valuation(n,p):
    out=0
    while n:
        n//=p;out+=n
    return out


def endpoint(cert,expected_n):
    rows=cert['rows'];assert {row['n'] for row in rows}==expected_n and len(rows)==len(expected_n)
    pairs=segments=0
    for row in rows:
        n=row['n'];assert row['i']==8 and number(row['representative'])==n
        assert len(row['factorizations'])==8
        for offset,factors in enumerate(row['factorizations']):
            value=1
            for ps,e in factors.items():
                p=int(ps);assert is_prime(p) and e>=1;value*=p**e
            assert value==n-offset
        for ps,e in row['source_valuations'].items():
            p=int(ps)
            assert p>=11 and is_prime(p)
            assert e==factorial_valuation(n,p)-factorial_valuation(8,p)-factorial_valuation(n-8,p)>0
        cursor=9
        for s in row['intervals']:
            p=s['p'];q=s['power'];first=s['first'];last=s['last']
            assert first==cursor and first<=last<=n//2
            assert p>=11 and is_prime(p) and str(p) in row['source_valuations']
            assert s['exponent']>=1 and q==p**s['exponent']
            assert first%q>n%q and first//q==last//q
            cursor=last+1;segments+=1
        assert cursor==n//2+1 and row['pairs']==n//2-8
        pairs+=row['pairs']
    assert pairs==cert['pairs'] and segments==cert['intervals']
    return pairs,segments


def main():
    start=time.perf_counter();here=Path(__file__).resolve().parent
    paths=[here/name for name in ('i9_h8_low_high_probe.json','i9_h8_low_high_screen.json','i9_h8_low_high_certificate.json')]
    data,screen,cert=[json.loads(p.read_text(encoding='utf-8')) for p in paths]
    assert data['cut']==CUT and data['cap']==CAP and data['thresholds']==dict(zip(map(str,PRIMES),LIMITS))
    inventory_check(data)
    totals=[trace_check(tr) for tr in data['traces']]
    counts=Counter();kinds=Counter();survivors=set()
    for rep,kind in representations(data):
        n=number(rep);result=scalar(n);counts[result]+=1;kinds[kind]+=1
        if result=='needs_original':survivors.add(n)
    assert dict(counts)==screen['counts'] and dict(kinds)==screen['representation_kinds']
    assert survivors=={int(x['n']) for x in screen['rows']}
    for row in screen['rows']:
        rep=row['representative']
        assert number(rep)==int(row['n']) and rep[4]==8
        assert row['high_count']==sum(a>=k for a,k in zip(rep,LIMITS))<=2
    pairs,segments=endpoint(cert,survivors)
    out={'status':'all fixed-form, lifting, global-stop, scalar, and original-prime checks passed',
         'scope':'i8 and i9, h=8, thresholds (4,2,2,2), at most two high exponents',
         'source_hashes':{p.name:sha256(p.read_bytes()).hexdigest() for p in paths},
         'forms':len(data['traces']),'cells':len(data['cells']),
         'lift_levels':sum(x[0] for x in totals),'high_form_candidates':sum(x[1] for x in totals),
         'counts':dict(counts),'representation_kinds':dict(kinds),'original_rows':len(survivors),
         'max_original_n':max(survivors),'pairs':pairs,'intervals':segments,
         'seconds':time.perf_counter()-start}
    (here/'i9_h8_low_high_verification.json').write_text(json.dumps(out,indent=2),encoding='utf-8')
    print(json.dumps(out))


if __name__=='__main__':main()
