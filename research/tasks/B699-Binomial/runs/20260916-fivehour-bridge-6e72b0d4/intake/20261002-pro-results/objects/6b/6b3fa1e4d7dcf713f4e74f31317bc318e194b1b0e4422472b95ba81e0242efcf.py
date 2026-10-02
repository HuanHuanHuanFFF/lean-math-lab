"""Read-only standard-library receiver. No Lean, CAS, network, or old ledger."""
from __future__ import annotations
import argparse,json,hashlib,sys,time
from pathlib import Path
from math import comb,gcd,prod
from exact_poly import Poly
from algebra_spec import specs
from arith import *
from root_candidates import root_data,coefficient_data,recover
ROOT=Path(__file__).resolve().parents[1]

def sha(path):return hashlib.sha256(path.read_bytes()).hexdigest()
def load(name):return json.loads((ROOT/'certificates'/name).read_text())
def tree():return {str(p.relative_to(ROOT)):sha(p) for p in ROOT.rglob('*') if p.is_file()}

def check_manifest(name,all_files=False):
    p=ROOT/name;assert p.is_file(),f'Missing {name}'
    mapping={}
    for line in p.read_text().splitlines():
        digest,rel=line.split('  ',1)
        assert len(digest)==64 and rel not in mapping
        path=ROOT/rel;assert path.resolve().is_relative_to(ROOT.resolve()) and path.is_file()
        assert sha(path)==digest,rel
        mapping[rel]=digest
    if all_files:
        assert set(mapping)==set(tree())-{name},'Final file inventory mismatch'
    return len(mapping)

def check_algebra():
    cert=load('algebra.json');sp=specs();assert len(cert)==len(sp)
    for c,s in zip(cert,sp):
        assert c['id']==s['id'] and c['names']==s['names']
        if s['relation'] is None:assert s['residual']==0 and c['quotient']==[]
        else:
            q=Poly.load(c['quotient'],len(s['names']))
            assert s['residual']==s['relation']*q,c['id']
    return len(cert)

def check_roots():
    data=load('root_regression.json');evaluations=0;reason={};total_roots=0
    for record in data['records']:
        k,d=record['k'],record['d'];assert k>=23 and d<=256
        actual=root_data(k,d);assert actual==record['root_data']
        # Independent direct integer polynomial enumeration; no root-class calls.
        H=max(k,d);lower=d*H//2+1;upper=d*H-1
        M=1
        while 12*M<=d*H*H:M*=2
        direct=[]
        for P in range(lower,upper+1):
            n=P*(k*P+d)+1
            if n%M==0:direct.append(P)
        evaluations+=upper-lower+1
        assert direct==record['direct_root_list']==actual['P_roots']
        assert len(direct)<=(1 if k%2==0 else 12)
        reason[actual['reason']]=reason.get(actual['reason'],0)+1
        total_roots+=len(direct)
    assert evaluations==data['brute_P_evaluations'] and len(data['records'])==data['pairs']
    return dict(coefficient_pairs=data['pairs'],exact_P_evaluations=evaluations,
                full_root_list_agreement=True,root_integers=total_roots,branches=reason,
                complete_k_terminal=False)

def factors(N,fac):
    assert prod(int(p)**e for p,e in fac.items())==N
    assert all(e>=1 and prime(int(p)) for p,e in fac.items())

def check_case(c,actual):
    par=c['params'];r=restore(**par);assert r==c['restored'] and domain(r)
    n,j=r['n'],r['j'];k,u,z,a,e=(r[t] for t in ('k','u','z','a','epsilon'))
    H0=k*a+e*(k-u)*z+(1-e)//2
    assert 0<H0<k*r['d']
    assert j==r['Q']*r['Y']+(1+e)//2
    factors(r['P'],c['factorP']);factors(r['Q'],c['factorQ'])
    if actual:
        assert len(c['factorP'])==len(c['factorQ'])==1
        assert set(c['factorP']).isdisjoint(c['factorQ'])
    for key in ('P','Q'):
        for pp,b in c['factor_Lucas_'+key].items():
            p=int(pp);assert lucas(n,j,p)==b
            assert (choose_v(n,j,p)==0)==b
            assert choose_v(n,j,p)==choose_v_digits(n,j,p)
            if actual:assert b
    T0=source0(n);T2=source2(n)
    assert (T0,T2)==(c['source0'],c['source2'])
    assert (j%T0==0)==c['T0_divides_j']
    assert (H0%T0==0)==c['T0_divides_H0']
    assert (j*(j-1)*(j-2)%T2==0)==c['all_complete_T2_slots']
    # Stronger factor-by-factor equivalence without factoring T2:
    assert (gcd(T2,j)*gcd(T2,j-1)*gcd(T2,j-2)==T2)==c['all_complete_T2_slots']
    for w in c['witnesses']:
        p,E,src=w['p'],w['E'],w['source'];assert prime(p) and p>=3
        assert valuation(n-src,p)==E and p**E==w['modulus']
        assert j%(p**E)==w['j_residue']>src
        assert not(p==3 and E==1)
        for rj,label in [(3,'v_choose3'),(j,'v_choose_j')]:
            assert choose_v(n,rj,p)==choose_v_digits(n,rj,p)==w[label]>0
    if 'root_recovery' in c:
        assert recover(k,r['d'])==c['root_recovery']
        assert any(x['P']==r['P'] for x in c['root_recovery']['original_rows'])
        assert (3*r['d']*(1<<valuation(n,2))>r['P']**2)==c['precise_low2_pass']
    return len(c['witnesses'])

def check_weak_family():
    cs=load('weak_source0_family.json')
    for c in cs:
        t=c['t'];x=1<<t;assert t>=3
        P=(x+1)*(x*x+1);Q=(x-1)*(x**4+1);n=x**8;k=(x-1)**2;d=2*(x-1)
        Y=x*(3*x*x+2*x+1)//8;j=Q*Y;X=(j-1)//P;u,x0=divmod(X,P);z=(d*Y-1)//P
        expected=dict(t=t,x=x,P=P,Q=Q,n=n,j=j,k=k,d=d,u=u,z=z,x0=x0,
            T0=source0(n),T0_divides_j=j%source0(n)==0,T2=source2(n),
            T2_slots_pass=j*(j-1)*(j-2)%source2(n)==0,
            carry=k*z-d*u,first_band=P<d*max(d,k)<2*P,
            height=n<10**7*k**13,P_single_base=False,Q_single_base=False,
            original_top_pass=x0<=d,original_k_lt_2d=k<2*d)
        assert expected==c
        assert n==P*Q+1 and Q==k*P+d and 4<=j<n//2
        assert j%P==1 and j%Q==0 and gcd(P,Q)==1
        assert gcd(x+1,x*x+1)==gcd(x-1,x**4+1)==1
        assert x+1>1 and x-1>1
        assert c['T0']==1 and c['carry']==x-1 and not c['original_top_pass']
        assert c['first_band'] and c['height'] and not c['T2_slots_pass']
    return len(cs)

def check_direct_binomials(actual):
    pairs=0;checks=0
    for c in actual:
        n=c['restored']['n']
        for j in (4,7,11,31):
            C3=comb(n,3);Cj=comb(n,j);pairs+=1
            for p in (3,5,7,11):
                assert valuation(C3,p)==choose_v(n,3,p)
                assert valuation(Cj,p)==choose_v(n,j,p)
                checks+=2
    return dict(sampled_pairs=pairs,exact_valuation_checks=checks,
                original_huge_j_uses_exact_Legendre_and_digit_sum=True,
                not_full_half_row_scan=True)

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--output',type=Path,required=True)
    ap.add_argument('--payload-only',action='store_true')
    args=ap.parse_args();out=args.output.resolve()
    assert not out.is_relative_to(ROOT.resolve()),'Output must be outside evidence tree.'
    start=time.monotonic();before=tree()
    counts={'payload':check_manifest('PAYLOAD_SHA256SUMS.txt')}
    if not args.payload_only:counts['final']=check_manifest('SHA256SUMS.txt',True)
    A=load('actual_cases.json');W=load('high_dyadic_weak.json')
    certs={'algebra_identities':check_algebra(),'root_regression':check_roots(),
           'actual_complete_prime_power_rows':len(A),
           'actual_nontrivial_power_rows':sum(next(iter(c['factorP'].values()))>1 or next(iter(c['factorQ'].values()))>1 for c in A),
           'original_complete_source_witnesses':sum(check_case(c,True) for c in A)+sum(check_case(c,False) for c in W),
           'high_dyadic_weak_rows':len(W),'weak_family_samples':check_weak_family(),
           'direct_binomial_sampling':check_direct_binomials(A)}
    after=tree();assert before==after,'Verifier modified evidence tree.'
    receipt={'status':'PASS','phase':'PAYLOAD_ONLY' if args.payload_only else 'FINAL_FULL_MANIFEST',
             'hash_counts':counts,'certificates':certs,'tree_files':len(before),
             'tree_unchanged':True,'seconds':round(time.monotonic()-start,6),
             'python':sys.version.split()[0],'mathematical_level':'AUTHOR_PROOF_AND_SAME_AUTHOR_REPLAY_NOT_EXTERNAL_REVIEW',
             'new_global_index_count':0,'k_absolute_bound_obtained':False}
    out.parent.mkdir(parents=True,exist_ok=True);out.write_text(json.dumps(receipt,indent=2,ensure_ascii=False)+'\n')
    print(json.dumps(receipt,indent=2,ensure_ascii=False))
if __name__=='__main__':main()
