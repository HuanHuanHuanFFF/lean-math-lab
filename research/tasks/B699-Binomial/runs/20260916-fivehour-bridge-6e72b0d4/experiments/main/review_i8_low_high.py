"""Root independent reconstruction of a fixed <=2-high finite consumer.

Usage: python review_i8_low_high.py PREFIX --shifts 0,1,2,3,4,5,6,7
PREFIX is a run-relative experiments/arithmetic filename prefix.
"""
from pathlib import Path
from itertools import combinations, product
from collections import Counter, defaultdict
from fractions import Fraction
from math import prod, isqrt
import argparse
import hashlib
import json
import time

P=(2,3,5,7)


def valuation(n,p):
    n=abs(n);assert n
    v=0
    while n%p==0:n//=p;v+=1
    return v


def source_remainder(high,num,den,powers,mod):
    return (num*prod(pow(p,a,mod) for p,a in zip(high,powers))-den)%mod


def scalar(n):
    if n<18:return 'empty'
    small=[prod(p**valuation(n-r,p) for p in P) for r in range(6)]
    t4=prod(small[:4]);t6=prod(small)
    if t4**6*(3*n*n-12*n+8)<2**20*(n-1)**6*(n-3)**3:return 'QIG'
    if t6**4*(3*n*n-20*n+24)<2**18*27*(n-1)**4*(n-3)**3*(n-5)**2:return 'SIXG'
    return 'needs_original'


def inverse_interval(c1,c2,offset,det,lo1,lo2,upper):
    values=[Fraction(c1*(a-offset)+c2*b,det) for a,b in product((lo1,upper),(lo2,upper))]
    low,high=min(values),max(values)
    return -((-low.numerator)//low.denominator),high.numerator//high.denominator


def binomial_v(n,j,p):
    v=0;t=p
    while t<=n:
        v+=n//t-j//t-(n-j)//t;t*=p
    return v


def main():
    parser=argparse.ArgumentParser();parser.add_argument('prefix');parser.add_argument('--shifts',required=True)
    args=parser.parse_args();start=time.perf_counter();run=Path(__file__).resolve().parents[2]
    prefix=run/args.prefix;shifts=tuple(map(int,args.shifts.split(',')))
    def read(suffix):return json.loads(Path(str(prefix)+suffix).read_text())
    data=read('_probe.json');screen=read('_screen.json');certificate=read('_certificate.json')
    TH={int(p):t for p,t in data['thresholds'].items()};cut=data['cut'];CAP=data['cap']
    assert CAP==10**32
    assert (shifts,tuple(TH[p] for p in P),cut) in [
        (tuple(range(8)),(3,2,2,2),64),((8,),(4,2,2,2),80)]
    cells=data['cells'];cell_tuples=[(tuple(z['high']),tuple(z['fixed']),z['h']) for z in cells]
    assert len(cell_tuples)==len(set(cell_tuples))
    expected=set()
    for size in (1,2):
        for high in combinations(P,size):
            for fixed in product(*(range(TH[p]) if p not in high else (None,) for p in P)):
                for h in shifts:expected.add((high,fixed,h))
    assert set(cell_tuples)==expected
    forms=defaultdict(set)
    for ci,(high,fixed,h) in enumerate(cell_tuples):
        for q in P:
            if q in high:continue
            delta=fixed[P.index(q)]
            e=prod(p**fixed[i] for i,p in enumerate(P) if p not in high and p!=q)
            for r in range(6):
                rho=r-h
                if rho==0 or valuation(rho,q)!=delta:continue
                c=Fraction(e,rho//q**delta)
                forms[(high,q,c.numerator,c.denominator)].add(ci)
    keys={(tuple(t['high']),t['q'],t['num'],t['den']) for t in data['traces']}
    assert set(forms)==keys and len(keys)==len(data['traces'])
    # Cache only homogeneous subgroup logs; every affine target is independently lifted.
    group_cache={};level_count=0;incompatible=Counter();high_reps=set();candidate_count=0
    for trace in data['traces']:
        high,q,num,den=tuple(trace['high']),trace['q'],trace['num'],trace['den']
        key=high,q,num,den
        assert set(trace['cells'])==forms[key]
        multiplier=2 if q==2 else q-1;base=high[0]**multiplier
        depth=valuation(base-1,q);assert depth==trace['start']
        stop=trace['stop'];target0=pow(den,multiplier,q**depth)*pow(num,-multiplier,q**depth)%q**depth
        if target0!=1:
            assert stop['kind']=='incompatible_principal_start' and stop['v']==depth
            assert stop['target']==target0 and not trace['candidates']
            incompatible[f'p{high[0]}q{q}']+=1
            continue
        assert stop['kind']=='global_no_source_point'
        group=group_cache.setdefault((high,q),{})
        T=0;L=0;M=1;found=set()
        for v in range(depth,stop['v']+1):
            mod=q**v;assert M==q**(v-depth)
            if v not in group:
                if v==depth:L=0
                else:
                    pM,pL=group[v-1]
                    if len(high)==2:
                        options=[pL+z*pM for z in range(q) if pow(base,pL+z*pM,mod)==pow(high[1],multiplier,mod)]
                        assert len(options)==1;L=options[0]
                    else:L=0
                assert pow(base,M,mod)==1 and (M==1 or pow(base,M//q,mod)!=1)
                group[v]=M,L
            M,L=group[v]
            target=pow(den,multiplier,mod)*pow(num,-multiplier,mod)%mod
            assert pow(base,T,mod)==target
            level_count+=1
            if v==stop['v']:
                assert (M,L,T)==tuple(stop[k] for k in ('M','L','T'))
                if len(high)==1:
                    first=TH[high[0]]+((T-TH[high[0]])%M)
                    count=max(0,(CAP-1-first)//M+1)
                    assert count==stop['global_points_checked']
                    assert count<=32
                    for a in range(first,CAP,M):assert source_remainder(high,num,den,(a,),mod)!=0
                else:
                    (a,b),(c,d)=stop['basis'];det=a*d-b*c
                    assert abs(det)==M and (a+L*b)%M==0 and (c+L*d)%M==0
                    bounds1=inverse_interval(d,-c,T,det,TH[high[0]],TH[high[1]],CAP-1)
                    bounds2=inverse_interval(-b,a,T,det,TH[high[0]],TH[high[1]],CAP-1)
                    assert list(bounds1+bounds2)==stop['bounds']
                    count=0
                    for u,w in product(range(bounds1[0],bounds1[1]+1),range(bounds2[0],bounds2[1]+1)):
                        A,B=T+u*a+w*c,u*b+w*d
                        if A>=TH[high[0]] and B>=TH[high[1]] and A+B<CAP:
                            count+=1;assert source_remainder(high,num,den,(A,B),mod)!=0
                    assert count==stop['global_points_checked']
                break
            # Use the maximum permitted low q-exponent, not an assumed exact delta.
            maximum_delta=max(TH[p]-1 for p in P)
            maxsum=5+(10 if len(high)==1 else 8)*(v+maximum_delta)
            if len(high)==1:
                first=TH[high[0]]+(T-TH[high[0]])%M
                powers_list=((a,) for a in range(first,maxsum+1,M))
            else:
                powers_list=((a,b) for b in range(TH[high[1]],maxsum-TH[high[0]]+1)
                             for a in range(TH[high[0]]+(T-L*b-TH[high[0]])%M,maxsum-b+1,M))
            for powers in powers_list:
                if sum(powers)<cut:continue
                rem=source_remainder(high,num,den,powers,mod*q)
                if rem!=0 and rem%mod==0:found.add((tuple(powers),v))
            newmod=mod*q;newtarget=pow(den,multiplier,newmod)*pow(num,-multiplier,newmod)%newmod
            choices=[T+z*M for z in range(q) if pow(base,T+z*M,newmod)==newtarget]
            assert len(choices)==1;T=choices[0];M*=q
        expected_candidates={(tuple(z['powers']),z['v']) for z in trace['candidates']}
        assert found==expected_candidates,(key,len(found),len(expected_candidates))
        candidate_count+=len(found)
        for powers,v in found:
            mapping=dict(zip(high,powers))
            for ci in forms[key]:
                _,fixed,h=cell_tuples[ci]
                high_reps.add(tuple(mapping.get(p,fixed[i]) for i,p in enumerate(P))+(h,))
    counts=Counter();kinds=Counter();survivors=set()
    def consume(rep,kind):
        n=prod(p**a for p,a in zip(P,rep[:4]))+rep[4]
        result=scalar(n);counts[result]+=1;kinds[kind]+=1
        if result=='needs_original':survivors.add(n)
    for fixed in product(*(range(TH[p]) for p in P)):
        for h in shifts:consume(fixed+(h,),'box')
    for high,fixed,h in cell_tuples:
        if len(high)==1:power_list=((a,) for a in range(TH[high[0]],cut))
        else:power_list=((a,b) for a in range(TH[high[0]],cut-TH[high[1]]) for b in range(TH[high[1]],cut-a))
        for powers in power_list:
            mapping=dict(zip(high,powers))
            consume(tuple(mapping.get(p,fixed[i]) for i,p in enumerate(P))+(h,),'bottom')
    for rep in high_reps:consume(rep,'high')
    assert dict(counts)==screen['counts'] and dict(kinds)==screen['representation_kinds']
    assert survivors=={int(z['n']) for z in screen['rows']}=={z['n'] for z in certificate['rows']}
    pairs=0;intervals=0;maxprime=0;prime_cache=set()
    for row in certificate['rows']:
        n=row['n'];current=9
        assert len(row['factorizations'])==8
        for r,factor in enumerate(row['factorizations']):
            assert prod(int(p)**e for p,e in factor.items())==n-r
            for p in map(int,factor):
                if p not in prime_cache:
                    assert p>=2 and all(p%d for d in range(2,isqrt(p)+1));prime_cache.add(p)
        for seg in row['intervals']:
            lo,hi,p,e,Q=(seg[k] for k in ('first','last','p','exponent','power'))
            assert p in prime_cache and p>=11 and Q==p**e and e>=1
            assert current==lo and lo<=hi<=n//2 and lo//Q==hi//Q and lo%Q>n%Q
            assert binomial_v(n,8,p)>0 and binomial_v(n,9,p)>0
            current=hi+1;pairs+=hi-lo+1;intervals+=1;maxprime=max(maxprime,p)
        assert current==n//2+1
    assert pairs==certificate['pairs'] and intervals==certificate['intervals']
    output={'status':'PASS','prefix':args.prefix,'shifts':shifts,'source_hashes':{
        s:hashlib.sha256(Path(str(prefix)+s).read_bytes()).hexdigest() for s in ('_probe.json','_screen.json','_certificate.json')},
        'forms':len(keys),'cells':len(cells),'valuation_levels':level_count,'incompatible_forms':dict(incompatible),
        'high_form_candidates':candidate_count,'counts':dict(counts),'representation_kinds':dict(kinds),
        'original_rows':len(survivors),'maximum_n':max(survivors),'prime_intervals':intervals,'pairs':pairs,
        'maximum_witness_prime':maxprime,'seconds':round(time.perf_counter()-start,6),
        'scope':'Root independent inventory, all target lifts and global affine stops, finite candidate reconstruction, native scalar checks and full same-prime interval covers; no Lean.'}
    target=Path(__file__).with_name(Path(args.prefix).name+'_root_review.json')
    target.write_text(json.dumps(output,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({k:v for k,v in output.items() if k not in ('source_hashes','scope')}))


if __name__=='__main__':main()
