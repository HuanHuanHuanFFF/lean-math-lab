#!/usr/bin/env python3
"""Read-only exact acceptance; Python 3.10+, standard library, offline."""
from __future__ import annotations
import argparse, hashlib, json, math, platform, sys, time
from pathlib import Path
from fractions import Fraction
from core import restore, source_witness_check, binom_v, lucas_nonzero, v_p
from poly import const as C, var, add, sub, scale, mul, power, load, divide_exact, evaluate
ROOT=Path(__file__).resolve().parents[1]

def readj(name):return json.loads((ROOT/name).read_text())

def check_prime_certificates():
    certs=readj('certificates/primality.json');done=set()
    def check(p):
        if p in done:return
        v=certs[str(p)]
        assert v['prime']==p
        if p==2:
            assert v.get('base_case') is True
        else:
            assert p>2
            factors=v['factors'];prod=1
            assert len({q for q,e in factors})==len(factors)
            for q,e in factors:
                assert q<p and e>=1;check(q);prod*=q**e
            assert prod==p-1
            g=v['generator'];assert 1<g<p
            assert pow(g,p-1,p)==1
            for q,e in factors:assert math.gcd(pow(g,(p-1)//q,p)-1,p)==1
        done.add(p)
    for p in sorted(map(int,certs)):check(p)
    return done


def check_identities():
    k,a,z=var(0),var(1),var(2);one=C(1)
    cert=readj('certificates/linear_identities.json')
    assert cert['variables']==['k','a','z']
    records=cert['records'];assert len(records)==6
    count=0;divisions=0;source_equalities=0;t0=0
    for eps in (-1,1):
        d=sub(mul(k,z),one);P=add(mul(d,a),scale(k,eps));Q=add(mul(k,P),d)
        n=add(mul(P,Q),one);F=sub(n,C(2));X=add(P,a,z);Y=add(mul(z,a),C(eps))
        j=add(mul(P,X),C((1-eps)//2))
        assert j==add(mul(Q,Y),C((1+eps)//2));source_equalities+=1
        if eps==-1:
            h=sub(k,one)
            Vs=[Y,X,sub(Q,X)]
            Ds=[add(mul(k,a),scale(mul(add(k,one),z),-1),one),
                add(mul(k,a),mul(h,z)),
                sub(sub(mul(mul(h,sub(scale(k,2),one)),z),mul(k,a)),sub(scale(k,2),one))]
            AAs=[z,z,sub(h,mul(power(h,2),z))]
            assert j==mul(Q,Vs[0]);source_equalities+=1
            assert sub(j,one)==mul(P,Vs[1]);source_equalities+=1
            assert sub(j,C(2))==sub(F,mul(P,Vs[2]));source_equalities+=1
        else:
            h=sub(scale(k,2),one)
            Vs=[X,Y,sub(scale(Q,2),X)]
            Ds=[add(mul(k,a),mul(add(k,one),z)),
                add(mul(k,a),scale(mul(sub(k,one),z),-1),one),
                sub(add(mul(mul(sub(k,one),h),z),mul(k,a)),scale(sub(k,one),2))]
            AAs=[scale(z,-1),scale(z,-1),sub(scale(h,2),mul(power(h,2),z))]
            assert j==mul(P,Vs[0]);source_equalities+=1
            assert sub(j,one)==mul(Q,Vs[1]);source_equalities+=1
            assert sub(j,C(2))==sub(scale(F,2),mul(P,Vs[2]));source_equalities+=1
        for s in range(3):
            rec=next(r for r in records if r['eps']==eps and r['slot']==s)
            AA,BB,DD=load(rec['A']),load(rec['B']),load(rec['D'])
            assert AA==AAs[s] and DD==Ds[s]
            assert add(mul(AA,F),mul(BB,Vs[s]))==DD;count+=1
            rebuilt=divide_exact(sub(DD,mul(AA,F)),Vs[s])
            assert rebuilt==BB;divisions+=1
            # Extra direct large-integer evaluation is not used as the proof.
            for vals in [(3,17,11),(4,2807,1381),(7,100000001,17000003)]:
                assert evaluate(AA,vals)*evaluate(F,vals)+evaluate(BB,vals)*evaluate(Vs[s],vals)==evaluate(DD,vals)
        if eps==-1:
            rec=next(r for r in records if r['eps']==eps and r['slot']==2)
            AA,BB=load(rec['A']),load(rec['B'])
            H=add(mul(k,a),scale(mul(sub(k,one),z),-1),one)
            assert scale(add(mul(AA,n),mul(BB,Vs[2])),-1)==H;t0+=1
            assert sub(n,j)==mul(P,Vs[2]);source_equalities+=1
        else:
            rec=next(r for r in records if r['eps']==eps and r['slot']==0)
            AA,BB=load(rec['A']),load(rec['B'])
            H=add(mul(k,a),mul(sub(k,one),z))
            assert add(mul(AA,n),mul(BB,Vs[0]))==H;t0+=1
    return {'core_linear_Bezout_identities':count,'integer_division_rederivations':divisions,
            'original_j_polynomial_equalities':source_equalities,'T0_identities':t0}


def check_bounds():
    bounds=readj('certificates/bounds.json')
    # Independent integer expansion by binomial theorem, not by importing a CAS.
    checks=0
    for name in ('negative','positive'):
        rec=bounds[name];h=rec['cutoff'];cap=rec['capacity_coefficient']
        coeff=[math.comb(4,e)*3**e*(3*h-1)**(4-e) for e in range(5)]
        for e in range(4):coeff[e]-=cap*math.comb(3,e)*h**(3-e)
        assert coeff==rec['shift_coefficients'] and all(c>0 for c in coeff);checks+=1
    assert Fraction(24*2)*Fraction(9,8)**4==Fraction(19683,256)
    assert Fraction(24*10,3)*Fraction(9,8)**4==Fraction(32805,256)
    assert bounds['general']['negative_numerator']==19683
    assert bounds['general']['positive_numerator']==32805
    return {'all_positive_shift_polynomials':checks,'general_ratio_constants_checked':2,
            'inherited_historical_z_ledger_replayed':False}


def check_cases(proved):
    cases=readj('certificates/cases.json');full_powers=0;source_higher_power=0
    for c in cases:
        r=restore(**c['input']);assert r==c['restored'];assert r['integer_interface']
        bases=[]
        for key in ('P','Q'):
            v=c['complete_powers'][key];p,e=v['prime'],v['exponent']
            assert p in proved and p%2==1 and e>=1 and p**e==r[key]
            bases.append(p);full_powers+=int(e>1)
        assert bases[0]!=bases[1]
        assert all(lucas_nonzero(r['n'],r['j'],p) for p in bases)
        assert c['full_lucas']==[True,True]
        gs=[math.gcd(r['n']-2,r['j']-s) for s in range(3)]
        gn=math.gcd(r['n'],r['j'])
        assert c['original_gcds']=={'n_minus_2_slots':gs,'n_with_original_j':gn}
        assert all(D%g==0 for D,g in zip(r['D'],gs))
        assert r['T0_linear']%gn==0
        assert r['linear_capacity_rejects'] and not r['T2_divides_linear_lcm']
        w=c['witness'];p=w['prime'];assert p in proved
        assert binom_v(r['n'],3,p)==w['binom_n3_v']>0
        assert binom_v(r['n'],r['j'],p)==w['binom_nj_v']>0
        assert not lucas_nonzero(r['n'],r['j'],p)
        assert w['source']=='n-2' and (r['n']-2)%p==0
        E=v_p(r['n']-2,p);assert E==w['full_exponent']
        assert r['j']%(p**E)==w['residue']
        assert (w['residue'] in (0,1,2))==w['low_full_slot']
        assert not w['low_full_slot'];source_higher_power+=int(E>=2)
        # These are source contradictions, not surviving NC examples.
        assert w['common'] is True
    return {'original_complete_power_rows':len(cases),'nontrivial_complete_P_or_Q_powers':full_powers,
            'rows_passing_both_full_Lucas':len(cases),'full_source_exponent_at_least_two_rows':source_higher_power,
            'all_rows_source_rejected':True,'original_full_gcd_checks':4*len(cases)}


def direct_regression():
    pairs=0;vals=0
    for n in (28,44,68,92,116,140,164,188,212):
        for j in (4,n//3,n//2-1):
            B=math.comb(n,j);C3=math.comb(n,3);pairs+=1
            for p in (3,5,7,11,13):
                assert v_p(B,p)==binom_v(n,j,p)
                assert (B%p!=0)==lucas_nonzero(n,j,p)
                assert v_p(C3,p)==binom_v(n,3,p);vals+=1
    return {'direct_integer_binomial_pairs':pairs,'prime_valuation_Lucas_checks':vals,
            'purpose':'arithmetic regression, not a shell scan or a new coverage count'}


def main():
    ap=argparse.ArgumentParser();ap.add_argument('--output',required=True);args=ap.parse_args()
    out=Path(args.output).resolve()
    if out==ROOT or ROOT in out.parents:raise SystemExit('output must be outside the evidence tree')
    start=time.perf_counter();proved=check_prime_certificates()
    result={'status':'PASS','python':platform.python_version(),'primality_certificates':len(proved),
            'algebra':check_identities(),'bounds':check_bounds(),'cases':check_cases(proved),
            'direct_arithmetic':direct_regression(),'historical_scans_run':[],
            'scope':'New mathematics only; inherited boundary adopted, not replayed.',
            'elapsed_seconds':round(time.perf_counter()-start,6)}
    out.parent.mkdir(parents=True,exist_ok=True);out.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(result,indent=2))
if __name__=='__main__':main()
