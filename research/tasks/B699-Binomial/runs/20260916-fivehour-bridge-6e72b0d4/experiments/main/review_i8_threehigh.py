"""Independent root checks: 3D integer lattices and complete small bottoms.

No producer, LLL, CAS, or producer Gram-Schmidt code is imported.
"""
from pathlib import Path
from fractions import Fraction as F
from itertools import product
from math import prod, isqrt
import hashlib
import json
import time


def det3(b):
    (a,c,d),(e,f,g),(h,i,j)=b
    return a*(f*j-g*i)-c*(e*j-g*h)+d*(e*i-f*h)


def norms(b):
    d1=sum(x*x for x in b[0])
    dot=sum(x*y for x,y in zip(b[0],b[1]))
    d2=d1*sum(x*x for x in b[1])-dot*dot
    return [F(d1), F(d2,d1), F(det3(b)**2,d2)]


def vp(n,p):
    assert n != 0
    n=abs(n);v=0
    while n%p == 0:
        n//=p;v+=1
    return v


def sixg(n):
    mass=prod(p**vp(n-r,p) for r in range(6) for p in (2,3,5,7))
    return mass**4*(3*n*n-20*n+24) < 2**18*27*(n-1)**4*(n-3)**3*(n-5)**2


def valuation_binomial(n,j,p):
    answer=0;power=p
    while power<=n:
        answer+=n//power-j//power-(n-j)//power
        power*=p
    return answer


def interval_certificate(row):
    n=int(row['n']);current=9;count=0
    for part in row['intervals']:
        lo,hi,p,Q=(int(part[k]) for k in ('start','end','prime','power'))
        assert lo==current and lo<=hi<=n//2
        assert p>=11 and all(p%d for d in range(2,isqrt(p)+1))
        z=Q
        while z%p==0:z//=p
        assert z==1 and Q>=p
        assert lo//Q==hi//Q and lo%Q>n%Q
        assert valuation_binomial(n,8,p)>0 and valuation_binomial(n,9,p)>0
        current=hi+1;count+=hi-lo+1
    assert current==n//2+1
    return count


def main():
    started=time.perf_counter();run=Path(__file__).resolve().parents[2]
    bindings={};reports=[]
    for q in (2,3,5,7):
        path=run/f'experiments/cubic/i8_threehigh_tower_q{q}.json'
        bindings[path.relative_to(run).as_posix()]=hashlib.sha256(path.read_bytes()).hexdigest()
        data=json.loads(path.read_text());levels=data['levels'];bases=data['bases']
        g=bases[0]**data['power'];depth=data['depth'];cap=data['global_exponent_sum_cap']
        assert cap==10**32 and vp(g-1,q)==depth
        assert [z['v'] for z in levels]==list(range(depth,data['global_stop_v']+1))
        previous=None;actual_norms={}
        for z in levels:
            v=z['v'];mod=q**v;M=q**(v-depth);L=z['L'];K=z['K'];B=z['basis'];U=z['transform']
            assert mod==z['modulus'] and M==z['order']
            assert 0<=L<M and 0<=K<M
            assert pow(g,L,mod)==pow(bases[1],data['power'],mod)
            assert pow(g,K,mod)==pow(bases[2],data['power'],mod)
            assert pow(g,M,mod)==1 and (M==1 or pow(g,M//q,mod)!=1)
            if previous:
                pM,pL,pK=previous;assert L%pM==pL and K%pM==pK
            previous=M,L,K
            initial=[[M,0,0],[-L,1,0],[-K,0,1]]
            assert abs(det3(U))==1 and abs(det3(B))==M
            assert B==[[sum(U[i][t]*initial[t][j] for t in range(3)) for j in range(3)] for i in range(3)]
            assert all((a+L*b+K*c)%M==0 for a,b,c in B)
            got=norms(B);assert got==[F(*x) for x in z['GS_norms_squared']]
            actual_norms[v]=min(got)
        assert actual_norms[data['global_stop_v']]>cap**2
        enumerations=[]
        for enum in data['finite_enumerations']:
            intercept=enum['intercept'];stop=enum['local_stop_v']
            bound=intercept+4*(data['global_stop_v']-1)-1
            assert enum['finite_height_cap']==bound and actual_norms[stop]>bound**2
            # A direct positive-simplex scan at every relevant small level.
            # The producer solves the congruence for a; this scan tests all triples.
            got=set()
            for z in levels:
                v=z['v']
                if v>=stop:break
                limit=intercept+4*v
                L,K,M=(z[k] for k in ('L','K','order'))
                for a in range(1,limit-2):
                    for b in range(1,limit-a-1):
                        partial=a+L*b
                        for c in range(1,limit-a-b):
                            if (partial+K*c)%M==0:got.add((v,a,b,c))
            expected={tuple(z) for z in enum['vectors']}
            assert got==expected and len(expected)==len(enum['vectors'])==enum['vector_count']
            enumerations.append({'intercept':intercept,'local_stop':stop,'vectors':len(got)})
        reports.append({'q':q,'levels':len(levels),'global_stop':data['global_stop_v'],'enumerations':enumerations})
    path=run/'reviews/geometry/i8-unit-route-three-high-cells.json'
    bindings[path.relative_to(run).as_posix()]=hashlib.sha256(path.read_bytes()).hexdigest()
    data=json.loads(path.read_text());P=(2,3,5,7);threshold=(3,2,2,2)
    expected_cells={(q,delta,h) for q,t in zip(P,threshold) for delta in range(t) for h in range(8)}
    assert expected_cells=={(z['missing_prime'],z['low_exponent'],z['shift']) for z in data['cells']}
    total=0;leftovers=set();events=0
    for cell in data['cells']:
        q,delta,h=(cell[k] for k in ('missing_prime','low_exponent','shift'))
        ps=tuple(p for p in P if p!=q);ts=tuple(t for p,t in zip(P,threshold) if p!=q)
        assert list(ps)==cell['high_primes'] and list(ts)==cell['high_thresholds']
        found=set();count=0
        for A in range(ts[0],32-ts[1]-ts[2]):
            for B in range(ts[1],32-A-ts[2]):
                for C in range(ts[2],32-A-B):
                    n=q**delta*prod(p**e for p,e in zip(ps,(A,B,C)))+h
                    count+=1
                    if not sixg(n):found.add(n);leftovers.add(n)
        assert count==cell['bottom_count'] and len(found)==len(cell['survivors'])
        assert found=={int(z['n']) for z in cell['survivors']}
        total+=count
        expected=[]
        for r in range(6):
            rho=r-h
            if rho==0 or vp(rho,q)!=delta:continue
            rest=abs(rho)//q**delta
            sub=[vp(rest,p) for p in ps]
            assert prod(p**e for p,e in zip(ps,sub))==rest
            expected.append((r,rho,1 if rho>0 else -1,tuple(sub)))
        actual=[(e['source_position'],e['offset_rho'],e['sign'],tuple(e['high_exponent_subtractions'])) for e in cell['source_events']]
        assert expected==actual;events+=len(expected)
    assert total==data['representations']==219024 and leftovers=={7204,7205}
    intervals=sum(interval_certificate(z) for z in data['original_bottom_certificates'])
    output={'status':'PASS','source_hashes':bindings,'towers':reports,'bottom_representations':total,
            'source_events':events,'bottom_survivors':sorted(leftovers),'i8_interval_pairs':intervals,
            'seconds':round(time.perf_counter()-started,6),
            'scope':'Independent integer lattice, exact Gram determinants, full positive-simplex lists, all 72 small cells and same-prime bottom intervals; no Lean.'}
    Path(__file__).with_suffix('.json').write_text(json.dumps(output,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({k:v for k,v in output.items() if k not in ('source_hashes','scope')}))


if __name__=='__main__':main()
