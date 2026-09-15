"""Homogeneous 3D p-adic towers with global and finite-height stopping certificates."""
from fractions import Fraction as F
from pathlib import Path
from datetime import datetime,timezone
from math import prod
import argparse,hashlib,json,time
from exact_lll3 import lll3,gs,det3

CONFIG={2:((3,5,7),2,3),3:((2,5,7),2,1),5:((2,3,7),4,1),7:((2,3,5),6,1)}
GLOBAL=10**32

def valuation(n,p):
    assert n
    n=abs(n);v=0
    while n%p==0:n//=p;v+=1
    return v

def make(q):
    began=time.perf_counter();bases,power,depth=CONFIG[q]
    g=bases[0]**power;targets=[p**power for p in bases[1:]]
    assert valuation(g-1,q)==depth
    assert all(t%q**depth==1 for t in targets)
    L=K=0;M=1;levels=[]
    for v in range(depth,501):
        modulus=q**v
        assert M==q**(v-depth)
        assert pow(g,L,modulus)==targets[0]%modulus and pow(g,K,modulus)==targets[1]%modulus
        assert pow(g,M,modulus)==1
        if M>1:assert pow(g,M//q,modulus)!=1
        initial=[[M,0,0],[-L,1,0],[-K,0,1]]
        B,U,steps=lll3(initial)
        assert abs(det3(B))==M
        assert all((row[0]+L*row[1]+K*row[2])%M==0 for row in B)
        norms=gs(B)[1];minimum=min(norms)
        levels.append({'v':v,'modulus':modulus,'order':M,'L':L,'K':K,
                       'basis':B,'transform':U,'GS_norms_squared':[[a.numerator,a.denominator] for a in norms],
                       'finder_steps':steps})
        if minimum>GLOBAL*GLOBAL:break
        newmod=modulus*q
        lifts=[]
        for old,target in zip((L,K),targets):
            options=[old+i*M for i in range(q) if pow(g,old+i*M,newmod)==target%newmod]
            assert len(options)==1
            lifts.append(options[0])
        L,K=lifts;M*=q
    else:raise AssertionError('No global stop below 500; no theorem claimed.')
    stop=v;enumerations=[]
    for intercept in ([3,14] if q==7 else [14]):
        finite_cap=intercept+4*(stop-1)-1
        local=next(row for row in levels if min(F(*a) for a in row['GS_norms_squared'])>finite_cap**2)
        vectors=[]
        for row in levels:
            v=row['v']
            if v>=local['v']:break
            cap=intercept+4*v-1;M,L,K=(row[n] for n in ('order','L','K'))
            for b in range(1,cap-1):
                for c in range(1,cap-b):
                    residue=(-L*b-K*c)%M
                    first=residue if residue else M
                    for a in range(first,cap-b-c+1,M):vectors.append([v,a,b,c])
        enumerations.append({'intercept':intercept,'finite_height_cap':finite_cap,'local_stop_v':local['v'],
                             'strict_global_H_cap':GLOBAL,'vectors':vectors,'vector_count':len(vectors)})
    here=Path(__file__).resolve().parent
    out={'status':'PASS','utc':datetime.now(timezone.utc).isoformat(),'q':q,'bases':bases,'power':power,'depth':depth,
         'global_exponent_sum_cap':GLOBAL,'global_stop_v':stop,'levels':levels,'finite_enumerations':enumerations,
         'scope':'All positive a,b,c with sum<1e32 and sum<intercept+4v satisfying the necessary principal-unit congruence are in the finite vector lists.',
         'elapsed_seconds':round(time.perf_counter()-began,6),
         'source_hashes':{p:hashlib.sha256((here/p).read_bytes()).hexdigest() for p in ['i8_threehigh_engine.py','exact_lll3.py']}}
    dest=here/f'i8_threehigh_tower_q{q}.json';assert not dest.exists()
    dest.write_text(json.dumps(out,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({'status':'PASS','q':q,'global_stop':stop,'finite':[
       {k:v for k,v in r.items() if k!='vectors'} for r in enumerations],
       'seconds':out['elapsed_seconds'],'output':str(dest)}),flush=True)
    return out

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--q',type=int,required=True,choices=CONFIG)
    make(p.parse_args().q)
