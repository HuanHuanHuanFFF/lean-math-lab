"""Fresh bounded regression and certificate-witness checks, not a proof substitute."""
from pathlib import Path
import sys,json,time,random,hashlib,importlib.util
from math import comb,gcd,lcm,factorial
from itertools import product,combinations
from functools import reduce,lru_cache
from content import *
ROOT=Path(__file__).resolve().parents[1]
SRC=ROOT/'source/B699-ProC-interrupted-handoff-20260911'

def main():
    start=time.monotonic();counts={}
    manifest=json.loads((SRC/'MANIFEST.json').read_text())
    for path,row in manifest.items():
        b=(SRC/path).read_bytes()
        if len(b)!=row['bytes'] or hashlib.sha256(b).hexdigest()!=row['sha256']:
            raise ValueError(('source hash',path))
    counts['source_manifest_files']=len(manifest)
    sys.path.insert(0,str(SRC/'code'))
    spec=importlib.util.spec_from_file_location('recovered_transport',SRC/'code/transport.py')
    module=importlib.util.module_from_spec(spec);spec.loader.exec_module(module)
    ct=0
    for N in range(8):
        for rdim,cdim in [(1,1),(2,2),(2,3),(3,2),(3,3)]:
            for rows in compositions(N,rdim):
                for cols in compositions(N,cdim):
                    for base in (2,3,4,6):
                        for fn in [transport,module.saturated_transport]:
                            check_table(rows,cols,base,fn(rows,cols,base))
                        ct+=1
    rng=random.Random(69920260911)
    for _ in range(2000):
        N=rng.randrange(1,10**30);rdim=rng.randrange(1,8);cdim=rng.randrange(1,8)
        def split(k):
            cuts=sorted([0,N]+[rng.randrange(N+1) for _ in range(k-1)])
            return [b-a for a,b in zip(cuts,cuts[1:])]
        rows,cols=split(rdim),split(cdim);base=rng.choice((2,3,4,5,7,10,16,31))
        for fn in [transport,module.saturated_transport]: check_table(rows,cols,base,fn(rows,cols,base))
        ct+=1
    counts['transport_instances_two_implementations']=ct
    try: check_table([2,2],[2,2],2,[[1,1],[1,1]])
    except ValueError: counts['rejected_unsaturated_table']=1
    else: raise ValueError('negative test not rejected')
    print('PASS source + transport',ct,flush=True)
    ct=0
    for n in range(49):
        for i in range(n+1):
            for j in range(n+1):
                direct=positive_direct(n,i,j);hf,lf=positive_formula(n,i,j)
                assert direct==hf and comb(n,i)==hf*lf
                assert gcd(comb(n,i),comb(n,j))%lf==0
                ct+=1
    counts['positive_content_full_square_indices']=ct
    print('PASS positive',ct,flush=True)
    direct=lru_cache(maxsize=None)(pade_direct)
    ct=wit=0
    for xyz in product(range(25),repeat=3):
        g=direct(*xyz);assert g==pade_formula(xyz);ct+=1
        if max(xyz)<=8:
            for p in primes_to(sum(xyz)+1):
                a,b,c=xyz;r=minimizing_index(a,b,c,p)
                assert 0<=r<=a
                z=comb(a+c-r,c)*comb(b+r,r)
                assert integer_v(z,p)==integer_v(g,p);wit+=1
    counts['pade_raw_coefficient_gcd']=ct;counts['pade_constructive_prime_witnesses']=wit
    print('PASS pade',ct,'witnesses',wit,flush=True)
    ct=0
    for xyz in product(range(1,25),repeat=3):
        g0=direct(*xyz);cs=[g0]
        for d in (1,2):
            values=[]
            for S in combinations(range(3),d):
                a=list(xyz)
                for ix in S:a[ix]-=1
                v=direct(*a);values.append(v)
            common=reduce(gcd,values)
            assert common==shared_formula(xyz,d)
            for S,v in zip(combinations(range(3),d),values):
                assert lcm(*(xyz[ix] for ix in S))%(v//common)==0
            cs.append(common)
        assert cs[0]%cs[1]==0 and cs[1]%cs[2]==0
        assert (sum(xyz)+1)%(cs[0]//cs[1])==0
        assert sum(xyz)%(cs[1]//cs[2])==0
        ct+=1
    counts['shared_content_triples_with_quotient_bounds']=ct
    print('PASS shared',ct,flush=True)
    ct=0
    for dim,bound in [(2,9),(3,6),(4,5),(5,4)]:
        for coords in product(range(bound),repeat=dim):
            assert generalized_direct(coords)==pade_formula(coords);ct+=1
    counts['generalized_raw_content']=ct
    ct=0
    for dim,bound in [(2,7),(3,6),(4,5),(5,4)]:
        for coords in product(range(1,bound),repeat=dim):
            cs=[]
            for d in range(dim):
                vals=[]
                for S in combinations(range(dim),d):
                    a=list(coords)
                    for ix in S:a[ix]-=1
                    vals.append(generalized_direct(a))
                g=reduce(gcd,vals);assert g==shared_formula(coords,d);cs.append(g)
                for S,v in zip(combinations(range(dim),d),vals):
                    if S: assert lcm(*(coords[ix] for ix in S))%(v//g)==0
            for d in range(dim-1):
                assert cs[d]%cs[d+1]==0
                assert (sum(coords)+dim-2-d)%(cs[d]//cs[d+1])==0
            ct+=1
    counts['generalized_defect_ladders']=ct
    print('PASS generalized',ct,flush=True)
    counts['status']='PASS_FRESH_BOUNDED_REGRESSION';counts['lean']=False
    counts['seconds']=round(time.monotonic()-start,3)
    (ROOT/'evidence/structures_check.json').write_text(json.dumps(counts,indent=2)+'\n')
    print(json.dumps(counts),flush=True)
if __name__=='__main__':
    if not __debug__: raise RuntimeError('Do not use python -O')
    main()
