#!/usr/bin/env python3
"""Offline acceptance checker. Exact arithmetic; no Lean or external review claim."""
from pathlib import Path
from math import comb,gcd
import argparse,hashlib,json,sys
from exact_core import (factor,is_prime,digits,prime_powers,vp_binomial,lucas_nonzero,
                        small_window_audit,full_row_audit,coarse_states,canonical_bytes)
from algebra import check_identities
ROOT=Path(__file__).resolve().parents[1]
C=ROOT/'certificates'

def read(name):return json.loads((C/name).read_text(encoding='utf-8'))

def euclidean_inverse(a,m):
    # Deliberately different from discovery's built-in modular inverse.
    old_r,r=a,m;old_s,s=1,0
    while r:
        q=old_r//r
        old_r,r=r,old_r-q*r
        old_s,s=s,old_s-q*s
    assert old_r==1
    return old_s%m

def verify_manifest(name):
    path=ROOT/name
    if not path.exists():return 0
    count=0
    for line in path.read_text().splitlines():
        if not line.strip():continue
        expected,rel=line.split('  ',1)
        p=(ROOT/rel).resolve()
        assert ROOT in p.parents, 'Unsafe manifest path'
        assert p.is_file(),rel
        assert hashlib.sha256(p.read_bytes()).hexdigest()==expected,rel
        count+=1
    return count

def main():
    if not __debug__:
        raise RuntimeError('Run this verifier without -O: assertions are part of acceptance.')
    parser=argparse.ArgumentParser()
    parser.add_argument('--output',type=Path)
    args=parser.parse_args()
    hash_counts={name:verify_manifest(name) for name in
                 ('PAYLOAD_SHA256SUMS.txt','SHA256SUMS.txt')}
    corpus=read('corpus.json')
    expected=set();universe=0;squares=0
    for P,p,a in prime_powers(corpus['prime_power_bound']):
        for Q,q,b in prime_powers(corpus['prime_power_bound']):
            if Q<=P or p==q:continue
            universe+=1
            ds=digits(Q,P);H=max(ds);d=ds[0]
            if P>=H*H:squares+=1
            if P>d*H:expected.add((P,Q))
    assert universe==corpus['universe_rows']==9296
    assert squares==corpus['square_root_gate_rows']==830
    actual=set();survivors=[]
    for r in corpus['rows']:
        P,Q,p,q,a,b=(r[x] for x in ('P','Q','p','q','a','b'))
        assert P==p**a and Q==q**b and 5<=P<Q and p!=q
        assert is_prime(p) and is_prime(q)
        assert p>=5 or a>=2
        assert q>=5 or b>=2
        ds=digits(Q,P)
        assert ds==r['digits'] and max(ds)==r['H'] and ds[0]==r['d']
        assert P>r['d']*r['H']
        n=P*Q+1
        J=P*euclidean_inverse(P,Q)
        j=min(J,n-J)
        assert n==r['n'] and j==r['crt_j'] and 4<=j<=n//2
        assert {j%P,j%Q}=={0,1}
        assert J+(n-J)==n and J!=n-J
        witness=r['witness']
        assert witness>=3 and is_prime(witness)
        # The corpus was discovered by Lucas; accept using Legendre valuations.
        v1=vp_binomial(n,3,witness);v2=vp_binomial(n,j,witness)
        assert v1==r['v_c3']>0 and v2==r['v_cj']>0
        assert comb(n,3)%witness==0
        pqpass=(vp_binomial(n,j,p)==0 and vp_binomial(n,j,q)==0)
        assert pqpass==r['pq_lucas_pass']
        if pqpass:survivors.append([P,Q,n,j])
        actual.add((P,Q))
    assert len(actual)==len(corpus['rows'])==corpus['gate_rows']==1014
    assert actual==expected
    assert survivors==corpus['two_base_survivors']==[[5,31,156,31],[17,307,5220,307]]
    small=small_window_audit()
    assert small==read('small_windows.json')
    full=full_row_audit()
    assert full==read('full_rows.json')
    algebra=check_identities()
    assert algebra==read('algebra.json')
    ledger=read('intermediate_ledger.json');states=coarse_states(ledger['H_max'])
    assert states==ledger['states'] and len(states)==752
    assert sum(s['above_old_gate'] for s in states)==124
    assert sum(s['full_power_shape_survives'] for s in states)==33
    # These 33 are formal coefficient shapes, not actual NC inputs.
    for s in states:
        assert all(x!=0 for x in s['residuals'])
        if s['full_power_shape_survives']:
            d,u,H=s['d'],s['u'],s['k']
            assert d>=2*u+1>=5 and H==d*u
            assert 0<s['R']<4*H**3
            assert 25*H**3>24*H**3
    spots=read('spot_checks.json')
    assert gcd(comb(10,3),comb(10,5))==spots['p_equals_i']['gcd']==12
    assert comb(16,3)%3!=0 and comb(16,3)%7==comb(16,6)%7==0
    assert 6%3==0 and 6%9>1 and vp_binomial(46,6,3)>0
    e=spots['two_base_only_not_nc']
    assert e['n']==e['P']*e['Q']+1 and e['Q']==3**9 and is_prime(e['P'])
    assert vp_binomial(e['n'],e['j'],1093)==vp_binomial(e['n'],e['j'],3)==0
    assert e['j']==(2*e['P']+1)**2
    assert e['R']==12032 and e['A2']==10756759>e['R']
    assert vp_binomial(e['n'],3,13)>0 and vp_binomial(e['n'],e['j'],13)>0
    for label,value in [('n_factorization',e['n']),('n2_factorization',e['n']-2)]:
        f=e[label];v=1
        for p,a in f:
            assert is_prime(p);v*=p**a
        assert v==value
    assert vp_binomial(222,52,13)==vp_binomial(222,52,17)==0
    assert vp_binomial(222,3,37)>0 and vp_binomial(222,52,37)>0
    assert 6-1-5==0 and 6%5!=0
    out=dict(status='PASS',manifest_file_counts=hash_counts,
             corpus_universe=universe,whole_row_certificates=len(actual),
             square_root_subcorpus=squares,two_base_only_survivors=len(survivors),
             direct_full_row_pairs=sum(r['pairs'] for r in full),
             small_window_pairs=small['pairs'],small_window_prime_tests=small['prime_tests'],
             algebra=algebra,intermediate_necessary_states=752,
             refined_formal_shapes=33,spot_checks='PASS',
             source_sha256=hashlib.sha256((ROOT/'sources/OVERVIEW-2026-09-22.md.txt').read_bytes()).hexdigest(),
             evidence_level='author-level proof plus exact finite regression/acceptance checks; not Lean, not independent external review')
    text=canonical_bytes(out)
    if args.output:
        args.output.parent.mkdir(parents=True,exist_ok=True)
        args.output.write_bytes(text)
    sys.stdout.buffer.write(text)

if __name__=='__main__':main()
