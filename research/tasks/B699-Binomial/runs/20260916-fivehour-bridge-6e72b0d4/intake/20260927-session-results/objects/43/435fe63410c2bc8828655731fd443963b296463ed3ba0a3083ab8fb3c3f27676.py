#!/usr/bin/env python3
"""Read-only exact reception. No network, no old ledger replay, no external packages."""
from __future__ import annotations
import argparse,json,math,sys,time,platform
from pathlib import Path
from core import *
from derive_bezout import derive

ROOT=Path(__file__).resolve().parents[1]
def load(name):return json.loads((ROOT/'certificates'/name).read_text())
def dense(p):
    assert all(j==0 for i,j in p)
    a=[0]*(max((i for i,j in p),default=-1)+1)
    for (i,j),c in p.items():a[i]=c
    return a

def check_polynomials():
    data=load('polynomials.json');defs={k:poly(v) for k,v in data['definitions'].items()}
    Z,B,D,A,P,Q,N,J,C=formulas()
    assert [defs[x] for x in ['P','Q','n','j','C']]==[P,Q,N,J,C]
    for rec in data['identities']:assert poly(rec['left'])==poly(rec['right']),rec['name']
    N0,J0,P0,Q0=[subst_b(t,0) for t in [N,J,P,Q]]
    assert add(N0,const(-2))==mul(add(Z,const(-1)),C)
    assert add(N,scale(J,-1))==mul(P,add(scale(P,2),B))
    assert add(N0,scale(J0,-1))==scale(power(P0,2),2)
    rebuilt=[]
    for rec in data['b0_bezout']:
        s=rec['slot'];AA,BB=poly(rec['A']),poly(rec['B'])
        assert add(mul(AA,C),mul(BB,add(J0,const(-s))))==const(rec['constant'])
        aa,bb,cc=derive(dense(C),dense(add(J0,const(-s))))
        assert [aa,bb,cc]==[dense(AA),dense(BB),rec['constant']]
        rebuilt.append(cc)
    assert rebuilt==[31,31,4]
    CS=[mul(B,add(scale(B,6),const(7))),add(scale(power(B,2),3),scale(B,2),const(31)),
        mul(add(scale(B,3),const(2)),add(scale(B,5),const(-4)))]
    for rec,expected in zip(data['general_bezout'],CS):
        ss=rec['slot'];AA,BB=poly(rec['A']),poly(rec['B'])
        assert add(mul(AA,add(N,const(-2))),mul(BB,add(J,const(-ss))))==expected==poly(rec['constant'])
    # Positivity uses the exact shifted polynomials, not finitely many evaluations.
    Cshift=subst_z(C,add(Z,const(2)));assert min(Cshift.values())>0 and Cshift[0,0]==491
    assert all(c>0 for c in subst_z(add(N0,scale(J0,-2)),add(Z,const(2))).values())
    assert all(c>0 for c in subst_z(add(J0,const(-4)),add(Z,const(2))).values())
    Fmin=defs['F_min'];difference=defs['F_minus_Fmin_shift']
    assert add(subst_z(add(N,const(-2)),add(scale(B,2),const(3),Z)),scale(Fmin,-1))==difference
    assert all(c>0 and i>=1 for (i,j),c in difference.items())
    assert all(c%3==0 for (i,j),c in C.items() if i>0) and ev(C,0)%3==2
    assert all(c%2==0 for (i,j),c in C.items() if i>0) and ev(C,0)%2==1
    return {'identity_records':len(data['identities']),'reconstructed_bezout_constants':rebuilt,
            'general_two_variable_bezout_checked':3,'positive_coefficient_proofs':4}

def check_bounds():
    rec=load('deficit_bounds.json')
    for r in rec['small_b']:
        b=r['b'];p=18*b*b+54*b+37;q=54*b*b+168*b+119
        assert r['constants']==constants(b) and r['L_odd']==capacity(b)
        assert r['F_at_2b_plus_3']==p*q-1
        assert r['margin']==p*q-1-6*capacity(b)>0
    q=rec['threshold'];d=3*q['inherited_z_min']-1;bb=q['necessary_b_min']
    assert d==q['d_min'] and q['constant']==56160
    assert q['comparison_below']==56160*(bb-1)**6 <= d**4==q['d_min_fourth']
    assert q['comparison_above']==56160*bb**6>d**4
    return {'small_deficits_certified':[r['b'] for r in rec['small_b']],
            'conditional_current_negative_b_min':bb,'inherited_z_lower_bound_not_replayed':q['inherited_z_min']}

def check_cases():
    data=load('cases.json');catalog=data['prime_catalog'];verified=set();sample_count=0;actual=0;weak=0
    for p in map(int,catalog):check_prime(p,catalog,verified)
    outputs=[]
    for r in data['cases']:
        vals=values(r['z'],r['b'])
        for key in ['P','Q','n','j']:assert vals[key]==r[key]
        P,Q,n,j=[r[k] for k in ['P','Q','n','j']]
        assert 4<=j<=n//2 and j%P==1 and j%Q==0
        assert math.gcd(P,Q)==1
        for key,v in [('P_factorization',P),('Q_factorization',Q)]:check_factorization(v,r[key],catalog,verified)
        pf,qf=r['P_factorization'],r['Q_factorization']
        is_actual=len(pf)==len(qf)==1 and pf[0][0]%2==qf[0][0]%2==1 and pf[0][0]!=qf[0][0]
        if is_actual:
            actual+=1;assert r['kind']=='actual_row'
            assert r['two_base_lucas']==[lucas_ok(n,j,pf[0][0]),lucas_ok(n,j,qf[0][0])]
            p,q=pf[0][0],qf[0][0]
            assert binom_v(n,3,p)>0 and binom_v(n,3,q)>0
            # Check the original CRT lift and finite samples, not every j.
            assert n-j>n//2 and n-j<P*Q
            for t in r['sample_half_row_indices']:
                assert 4<=t<=n//2
                candidate_primes=[p,q,r['witness']]
                v=[binom_v(n,t,e) for e in candidate_primes]
                assert all((x==0)==lucas_ok(n,t,e) for x,e in zip(v,candidate_primes))
                assert any(x>0 and binom_v(n,3,e)>0 for x,e in zip(v,candidate_primes))
                sample_count+=1
        else:
            weak+=1;assert r['kind']=='weak_model' and r['two_base_lucas'] is None
        assert vp(n,2)==r['alpha'] and eta(n)==r['eta0']
        T0=n//(2**r['alpha']*r['eta0']);assert T0==r['T0'] and (j%T0==0)==r['T0_divides_original_j']
        assert eta(n-2)==r['eta2'] and (n-2)//(2*r['eta2'])==r['T2']
        ell=r['witness'];check_prime(ell,catalog,verified)
        E=vp(n-2,ell);assert ell>=5 and E==r['source_exponent']
        assert j%(ell**E)==r['candidate_slot_residue']
        assert (r['candidate_slot_residue'] not in [0,1,2])==r['full_source_window_failed']
        assert r['binomial_valuations']==[binom_v(n,3,ell),binom_v(n,j,ell)]
        assert min(r['binomial_valuations'])>0 and not lucas_ok(n,j,ell)
        outputs.append({'id':r['id'],'actual_two_complete_powers':is_actual,'witness':ell,'binomial_valuations':r['binomial_valuations']})
    for r in data['direct_pairs']:
        v=values(r['z'],0);n,j=v['n'],v['j'];ell=r['witness']
        assert [n,j]==[r['n'],r['j']]
        check_prime(ell,catalog,verified)
        assert [math.comb(n,3)%ell,math.comb(n,j)%ell]==r['direct_binomial_mods']==[0,0]
    return {'certified_primes':len(verified),'actual_rows':actual,'weak_models':weak,
            'finite_half_row_samples_not_exhaustive':sample_count,'direct_binomial_candidate_pairs':len(data['direct_pairs']),'cases':outputs}

def check_complete_powers():
    data=load('full_power_31.json');C=lambda z:108*z**3-54*z*z-72*z-13
    assert [r for r in range(31) if C(r)%31==0]==[1,3,12]
    for r in data['lifts']:
        rt=r['root_mod_31'];roots=[rt+31*t for t in range(31) if C(rt+31*t)%961==0]
        assert roots==[r['root_mod_961']]
        z=r['z_mod_8_is_7'];assert z%8==7 and z%961==roots[0]
        v=values(z);n,j=v['n'],v['j'];e=vp(n-2,31)
        assert vp(C(z),31)==r['v31_C'] and e==r['v31_n_minus_2']
        assert j%31==r['j_mod_31'] and j%(31**e)==r['j_mod_full_power'] not in [0,1,2]
        assert [binom_v(n,3,31),binom_v(n,j,31)]==r['binomial_valuations']
    return {'exact_mod_31_roots':3,'mod_31_squared_lifts':3,'original_full_exponents_preserved':True}

def main():
    parser=argparse.ArgumentParser();parser.add_argument('--output',required=True);args=parser.parse_args()
    output=ensure_external_output(args.output,ROOT);before=tree_hashes(ROOT);start=time.monotonic()
    checks={'polynomials':check_polynomials(),'bounds':check_bounds(),'cases':check_cases(),'full_powers':check_complete_powers()}
    assert before==tree_hashes(ROOT),'Verifier modified evidence tree'
    result={'status':'PASS','python':platform.python_version(),'elapsed_seconds':round(time.monotonic()-start,6),
            'network_used':False,'old_ledger_executed':False,'evidence_tree_unchanged':True,'checks':checks}
    output.write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps({'status':'PASS','output':str(output),'elapsed_seconds':result['elapsed_seconds']}))
if __name__=='__main__':main()
