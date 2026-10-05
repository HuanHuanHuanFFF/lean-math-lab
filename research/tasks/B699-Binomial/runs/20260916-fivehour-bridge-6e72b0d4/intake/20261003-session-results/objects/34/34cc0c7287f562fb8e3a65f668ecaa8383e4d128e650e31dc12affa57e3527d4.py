#!/usr/bin/env python3
"""Separately implemented exact checker: trial division, binomials, intervals.
The exhaustive tests are regression checks, NOT proofs of unbounded assertions.
The universal mathematical proofs are in PROOFS.md. Published analytic input is
NOT proved by this program. Python standard library only.
"""
from pathlib import Path
from math import isqrt, comb, gcd, lcm
from fractions import Fraction as F
from functools import lru_cache
import hashlib, json, argparse
ROOT=Path(__file__).resolve().parents[1]

@lru_cache(None)
def prime(p):
    if p<2:return False
    if p==2:return True
    if p%2==0:return False
    return all(p%d for d in range(3,isqrt(p)+1,2))

def valuation(m,p):
    assert m>0 and prime(p)
    v=0
    while m%p==0:m//=p;v+=1
    return v

def legendre(n,k,p):
    s=0; q=p
    while q<=n:
        s+=n//q-k//q-(n-k)//q
        q*=p
    return s

def components(n, ps):
    """Edges use actual remainders, not relaxed i-1 bounds."""
    labels=[n//p for p in ps];rs=[n%p for p in ps]
    parent=list(range(len(ps)))
    def find(x):
        while parent[x]!=x:
            parent[x]=parent[parent[x]];x=parent[x]
        return x
    edges=[]
    for a in range(len(ps)):
        for b in range(a):
            threshold=(lcm(labels[a],labels[b])+1)*max(rs[a],rs[b])
            if n>threshold:
                parent[find(a)]=find(b);edges.append([a,b,n-threshold])
    groups={}
    for a in range(len(ps)):groups.setdefault(find(a),[]).append(a)
    ans=[]
    for indexes in groups.values():
        d=0
        for a in indexes:d=gcd(d,labels[a])
        ans.append({'indexes':indexes,'label_gcd':d})
    return ans,edges

def source_primes(n,i,primes):
    return [p for p in primes if p>i and n%p<i]

def max_by_quotient(n,ps):
    chosen={}
    for p in ps:chosen[n//p]=max(chosen.get(n//p,0),p)
    return [chosen[a] for a in sorted(chosen)]

def intervals(n,i,p):
    a,r=divmod(n,p)
    return [(max(i+1,b*p),min(n//2,b*p+r)) for b in range(1,a//2+1)
            if max(i+1,b*p)<=min(n//2,b*p+r)]

def intersect(A,B):
    result=[];i=j=0
    while i<len(A) and j<len(B):
        lo=max(A[i][0],B[j][0]); hi=min(A[i][1],B[j][1])
        if lo<=hi:result.append((lo,hi))
        if A[i][1]<B[j][1]:i+=1
        else:j+=1
    return result

def load(name):return json.loads((ROOT/'certificates'/name).read_text())

def run():
    result={}
    param=load('parameters.json')
    b=(ROOT/'sources/OVERVIEW.md').read_bytes()
    assert hashlib.sha256(b).hexdigest()==param['source_sha256']
    assert (ROOT/'sources/OVERVIEW.extracted.txt').read_bytes()+b'\n'==b
    result['baseline_sha256_verified']=param['source_sha256']
    c=load('finite_cover.json');nextn=c['n_min']
    for row in c['rows']:
        lo,hi,p=row['lo'],row['hi'],row['prime']
        assert prime(p) and lo==nextn and p<=lo<=hi
        assert hi-p<c['i_min'] and hi<2*p
        nextn=hi+1
    assert nextn==c['n_max']+1
    assert c['n_min']==2*(c['i_min']+1)
    result['finite_cover']={'rows':len(c['rows']),'n_min':c['n_min'],
                          'n_max':c['n_max'],'all_primes_by_trial_division':True}
    log2lo=F(2,3)+F(2,81)
    log3lo=F(1)+F(1,12)+F(1,80)
    loglo=17*log2lo+log3lo
    assert 396738>3*2**17 and loglo>F(64,5)
    assert 25*F(64,5)**2==4096>4095
    N=(396738*4096+4094)//4095
    assert N==396835 and F(4095,4096)*N>=396738
    assert F(4095,4096)*(N-1)<396738
    result['analytic_arithmetic']={'n_min':N,'log_lower_fraction':str(loglo),
            'published_Dusart_input_checked_by_program':False}
    examples=load('examples.json');checks={}
    e=examples['high_to_low_failed_transport'];n,a,i,j,p=[e[x] for x in ('n','a','i','j','p')]
    assert prime(p) and 1<=a<i<j<=n//2
    assert n>=4096*a and n<4096*i and n<i*i and i>=4883 and p==i
    vs=[legendre(n,k,p) for k in (a,i,j)]
    direct=[valuation(comb(n,k),p) for k in (a,i,j)]
    assert vs==direct==e['expected_valuations']
    checks['high_to_low_failed_transport']={'valuations':vs,'direct_binomial_agrees':True,
         'n_div_p':n//p,'original_conjecture_counterexample':False}
    e=examples['higher_layer_boundary']; n,i,j,p=[e[x] for x in ('n','i','j','p')]
    assert [legendre(n,k,p) for k in (i,j)]==e['expected_valuations']
    assert n//p-i//p-(n-i)//p==0
    checks['higher_layer_boundary']={'valuations':e['expected_valuations'],
                      'p_equals_i_is_a_real_common_prime':True}
    for name in ['two_quotient_no_top_prime','actual_target_tail_row']:
        e=examples[name];n,i,ps=e['n'],e['i'],e['primes']
        assert all(prime(p) and p>i and n%p<i for p in ps)
        cs,edges=components(n,ps)
        assert any(d['label_gcd']==1 for d in cs)
        U=[(i+1,n//2)]
        for p in ps:U=intersect(U,intervals(n,i,p))
        assert U==[]
        if name=='two_quotient_no_top_prime':
            assert not any(prime(t) for t in range(n-i+1,n+1))
            for j in range(i+1,n//2+1):
                assert any(comb(n,i)%p==comb(n,j)%p==0 for p in ps)
        else: assert i>=4883 and n<4096*i and n<i*i
        checks[name]={'quotients':[n//p for p in ps],'remainders':[n%p for p in ps],
                      'edge_margins':edges,'exact_survivor_intervals':U}
    for name in ['gcd_hypothesis_needed','separation_hypothesis_needed']:
        e=examples[name];n,i,j,ps=[e[x] for x in ('n','i','j','primes')]
        assert n<i*i and i<j<=n//2
        assert all(prime(p) and p>i and n%p<i for p in ps)
        assert all(comb(n,i)%p==0 and comb(n,j)%p!=0 for p in ps)
        cs,edges=components(n,ps)
        assert not any(c['label_gcd']==1 for c in cs)
        checks[name]={'quotients':[n//p for p in ps], 'remainders':[n%p for p in ps],
                     'components':cs,'edges':edges,'surviving_j':j,
                     'original_conjecture_counterexample':False}
    result['examples']=checks
    # Regression tests use exact binomial integers, independently of Legendre.
    row_count=pair_count=graph_rows=0
    limit=param['exhaustive_square_test_n_max']
    P=[p for p in range(2,limit+1) if prime(p)]
    for n in range(4,limit+1):
        ps=[p for p in P if p<=n]; choose=[comb(n,k) for k in range(n//2+1)]
        for i in range(isqrt(n)+1,n//2):
            assert n<i*i
            full=[p for p in ps if p>=i and choose[i]%p==0]
            raw=source_primes(n,i,ps)
            assert full==raw
            if prime(i):assert choose[i]%i!=0
            selected=max_by_quotient(n,raw)
            cs,_=components(n,selected)
            hascert=any(c['label_gcd']==1 for c in cs)
            graph_rows+=hascert;row_count+=1
            U=[(i+1,n//2)]
            for p in selected:U=intersect(U,intervals(n,i,p))
            for j in range(i+1,n//2+1):
                common=any(choose[j]%p==0 for p in full)
                residue_none=all(j%p<=n%p for p in selected)
                interval_none=any(lo<=j<=hi for lo,hi in U)
                assert residue_none==interval_none==(not common)
                if hascert:assert common
                pair_count+=1
    result['square_domain_regression']={'n_max':limit,'rows':row_count,'pairs':pair_count,
                  'graph_certified_rows':graph_rows,'proof_of_infinite_domain':False}
    generic_rows=generic_pairs=0
    for n in range(4,param['generic_graph_test_n_max']+1):
        ps=[p for p in P if p<=n];choose=[comb(n,k) for k in range(n//2+1)]
        for i in range(1,n//2):
            selected=max_by_quotient(n,source_primes(n,i,ps))
            cs,_=components(n,selected)
            if any(c['label_gcd']==1 for c in cs):
                generic_rows+=1
                for j in range(i+1,n//2+1):
                    assert any(choose[i]%p==choose[j]%p==0 for p in selected)
                    generic_pairs+=1
    result['generic_graph_regression']={'n_max':param['generic_graph_test_n_max'],
                      'certified_rows':generic_rows,'verified_pairs':generic_pairs,
                      'proof_of_infinite_domain':False}
    result['status']='PASS'
    result['lean_executed']=False
    result['external_independent_mathematical_review']=False
    return result

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--output');args=ap.parse_args()
    result=run();text=json.dumps(result,ensure_ascii=False,indent=2,sort_keys=True)+'\n'
    if args.output:Path(args.output).write_text(text)
    print(text,end='')
