#!/usr/bin/env python3
"""Read-only, offline certificate receiver. Python 3.10+, standard library only."""
from __future__ import annotations
import argparse, collections, datetime, hashlib, json, math, sys, time
from fractions import Fraction
from pathlib import Path
from core import *
ROOT=Path(__file__).resolve().parents[1]


def readj(name):return json.loads((ROOT/'certificates'/name).read_text())


def check_hashes(name):
    path=ROOT/name
    if not path.exists():return None
    names=[]
    for line in path.read_text().splitlines():
        expected,rel=line.split('  ',1)
        dest=(ROOT/rel).resolve()
        assert dest.is_relative_to(ROOT) and dest.is_file() and not dest.is_symlink()
        assert hashlib.sha256(dest.read_bytes()).hexdigest()==expected,rel
        names.append(rel)
    assert len(names)==len(set(names))
    if name=='SHA256SUMS':
        actual={str(p.relative_to(ROOT)) for p in ROOT.rglob('*') if p.is_file()}
        assert actual==set(names)|{'SHA256SUMS'}, 'unexpected or missing file'
    return len(names)


def poly_check():
    data=readj('algebra.json')
    assert data['variables']==['k','u','d','z','a']
    k,u,d,z,a=map(pv,range(5))
    H=pa(pm(u,d),pn(pm(k,z)),pc(1))
    ids=0
    for rec in data['records']:
        e=rec['eps']; assert e in (-1,1)
        P=pa(pm(d,a),pm(pc(e),k));Q=pa(pm(k,P),d)
        X=pa(pm(u,P),a,z);Y=pa(pm(z,a),pm(pc(e),u))
        F=pa(pm(P,Q),pc(-1));N=pa(F,pc(2))
        vs={'X':X,'Y':Y,'Q-X':pa(Q,pn(X)),'2Q-X':pa(pm(pc(2),Q),pn(X))}
        A,B,D,E=[load_poly(rec[q]) for q in ('A','B','D','quotient')]
        expected=[]
        if e==-1:
            expected=[pa(pm(k,a),pn(pm(pa(k,u),z)),pc(1)),
                      pa(pm(k,a),pm(pa(k,pn(u)),z)),
                      pa(pm(pm(pa(k,pn(u)),pa(pm(pc(2),k),pn(u))),z),
                         pn(pm(pm(k,u),a)),pn(pa(pm(pc(2),k),pn(u))))]
            HT=pa(pm(k,a),pn(pm(pa(k,pn(u)),z)),pc(1))
        else:
            expected=[pa(pm(k,a),pm(pa(k,u),z)),
                      pa(pm(k,a),pn(pm(pa(k,pn(u)),z)),pc(1)),
                      pa(pm(pm(pa(k,pn(u)),pa(pm(pc(2),k),pn(u))),z),
                         pm(pm(k,u),a),pn(pm(pc(2),pa(k,pn(u)))))]
            HT=pa(pm(k,a),pm(pa(k,pn(u)),z))
        if rec['source']=='F':
            slot=int(rec['name'].split('_')[-1]); assert D==expected[slot]
        else:
            assert rec['source']=='n' and D==HT
        expr=pa(pm(A,F if rec['source']=='F' else N),pm(B,vs[rec['V']]),pn(D))
        assert expr==pm(H,E),rec['name']
        assert divide_exact(expr,H)==E,rec['name']
        # Original j is not swapped. Its two formulas agree on H=0.
        diff=pa(pm(P,X),pn(pm(Q,Y)),pc(-e))
        assert diff==pm(H,pa(pm(a,P),pc(-e)))
        ids+=1
    assert ids==8
    U,T,V=map(pv,range(3));uu=pa(U,pc(1));kk=pa(pm(pc(3),uu),T);zz=pa(pm(pc(3),uu),V)
    expr=pa(pm(pa(pp(kk,2),pn(pm(pc(2),pm(kk,uu))),pn(pm(pc(2),pp(uu,2)))),zz),
            pn(kk),pm(pc(2),uu))
    saved={tuple(ex)+(0,0):c for ex,c in data['positive_polynomial']}
    assert expr==saved and all(c>0 for c in saved.values()) and saved[ZERO]>0
    # The symbolic zero-slot family and full factorization, exact coefficient check.
    t=pv(0)
    zt=pa(pm(pc(10),t),pc(3));at=pa(pm(pc(14),t),pc(4));dt=pa(pm(pc(25),t),pc(7))
    Pt=pa(pm(dt,at),pc(-5));Qt=pa(pm(pc(5),Pt),dt)
    Af=pa(pm(pc(70),pp(t,2)),pm(pc(41),t),pc(5))
    Bf=pa(pm(pc(8750),pp(t,2)),pm(pc(4900),t),pc(561))
    assert pa(pm(Pt,Qt),pc(-1))==pm(Af,Bf)
    assert pa(pm(zt,at),pc(-2))==pm(pc(2),Af)
    assert pa(pm(pc(5),at),pn(pm(pc(7),zt)),pc(1))=={}
    assert pa(pm(pc(5),at),pm(pc(3),zt))==pa(pm(pc(100),t),pc(29))
    assert pa(pm(pc(24),zt),pn(pm(pc(10),at)),pc(-8))==pa(pm(pc(100),t),pc(24))
    assert Fraction(8,9)**4/Fraction(24)==Fraction(512,19683)
    assert Fraction(2)/Fraction(512,19683)==Fraction(19683,256)
    assert Fraction(10,3)/Fraction(512,19683)==Fraction(32805,256)
    assert (19683*4-1)//256==307 and (32805*4-1)//256==512
    assert 2047*1535+4==3142149 and 4*3142149+2047==12570643
    return dict(source_identities=ids,original_j_identity_signs=2,
                positive_coefficient_certificate=True,zero_family_factorization=True,
                exact_multivariate_division=True)


def terminal_check():
    summary=readj('k4-summary.json')
    A=list(terminal_a());B=list(terminal_p())
    assert A==B
    ba=csv_bytes(A);bb=csv_bytes(B)
    supplied=(ROOT/'certificates'/'k4-terminal.csv').read_bytes()
    assert ba==bb==supplied
    assert sha(ba)==summary['csv_sha256']
    counter=collections.Counter((r[0],r[-1]) for r in A)
    assert len(A)==summary['total']==44549
    assert sum(v for (e,_),v in counter.items() if e<0)==summary['minus']==11781
    assert sum(v for (e,_),v in counter.items() if e>0)==summary['plus']==32768
    assert sum(v for (_,r),v in counter.items() if r=='size')==summary['size_rejections']==44548
    survivors=[r for r in A if r[-1]=='nondivisibility']
    assert len(survivors)==summary['nondivisibility_rejections']==1
    assert survivors[0][0:3]==(1,13,35)
    assert survivors[0][4:8]==(1789,7207,12893324,3286393)
    return dict(total=len(A),negative=11781,positive=32768,size_rejections=44548,
                strict_divisibility_rejections=1,survivors=0,
                independent_enumerations_agree=True,csv_sha256=sha(ba))


def primes_check():
    records=readj('primality.json');proven=set()
    for rec in sorted(records,key=lambda c:c['p']):
        p=rec['p']; assert p not in proven
        if p==2:
            assert rec['factors']==[]
            proven.add(p);continue
        assert p>2 and p%2==1
        factors=rec['factors'];assert len({q for q,e in factors})==len(factors)
        assert all(q in proven and e>=1 for q,e in factors)
        assert math.prod(q**e for q,e in factors)==p-1
        g=rec['g'];assert 1<g<p and pow(g,p-1,p)==1
        for q,e in factors:
            assert math.gcd(pow(g,(p-1)//q,p)-1,p)==1
        proven.add(p)
    return proven


def examples_check(proven):
    cases=readj('examples.json');certified=0;full_powers=0;true_cone=0;witnesses=0;threepowers=[]
    for case in cases:
        r=restore(*[case[key] for key in ('k','u','z','a','eps')])
        assert all(case[key]==value for key,value in r.items())
        check_integer_interface(r)
        assert case['two_full_powers']
        p,rho=case['P_power'];q,sigma=case['Q_power']
        assert p in proven and q in proven and p!=q and p>=3 and q>=3
        assert p**rho==r['P'] and q**sigma==r['Q']
        if max(rho,sigma)>1:full_powers+=1
        assert lucas(r['n'],r['j'],p)==case['lucas_p']==True
        assert lucas(r['n'],r['j'],q)==case['lucas_q']==True
        assert binomial_v(r['n'],r['j'],p)==0 and binomial_v(r['n'],r['j'],q)==0
        assert binomial_v(r['n'],3,p)>0 and binomial_v(r['n'],3,q)>0
        cs=constants(r['k'],r['u'],r['z'],r['a'],r['eps'])
        assert list(cs)==case['C']
        T0=source(r['n']);T2=source(r['n']-2)
        assert T0==case['T0'] and T2==case['T2'] and r['j']%T0==case['j_mod_T0']
        if 0 in cs:
            assert case['Lambda'] is None and case['kind']=='zero_slot_boundary'
            assert (r['n']-2)%379==0 and r['j']%379==0
            assert math.lcm(cs[1],cs[2])%379!=0
        else:
            L=odd(math.lcm(*map(abs,cs)))
            assert L==case['Lambda'] and L%T2==case['Lambda_mod_T2']!=0
        if case['kind']=='new_general_cone':
            k,u,z=r['k'],r['u'],r['z']
            assert u>=2 and k>=3*u and z>=3*u and z>=129*k*u*u
            assert min(cs)>0 and T2>case['Lambda']
            true_cone+=1
        for w in case['witnesses']:
            ell=w['prime'];E=w['E']
            assert ell in proven and ell>=3
            assert valuation(r['n']-2,ell)==E
            assert ell!=3 or E>=2
            assert r['j']%(ell**E)==w['j_mod_power']
            assert binomial_v(r['n'],3,ell)==w['v_choose3']>0
            assert binomial_v(r['n'],r['j'],ell)==w['v_choosej']>0
            assert not lucas(r['n'],r['j'],ell)
            if ell==3:threepowers.append((case['name'],E,w['j_mod_power']))
            witnesses+=1
        assert case['is_NC3'] is False
        certified+=1
    assert certified==9 and true_cone==5 and full_powers==2 and threepowers
    return dict(cases=certified,with_nontrivial_complete_power=full_powers,
                new_u_ge_2_high_cone_cases=true_cone,common_prime_witness_checks=witnesses,
                complete_three_power_cases=threepowers)


def binomial_regression(proven):
    entries=readj('direct-binomial.json')
    for rec in entries:
        n,j,p=rec['n'],rec['j'],rec['prime']
        assert p in proven and 4<=j<=n//2
        A=math.comb(n,3);B=math.comb(n,j)
        assert A%p==B%p==0
        assert valuation(A,p)==rec['v_choose3']
        assert valuation(B,p)==rec['v_choosej']==binomial_v(n,j,p)
    full=readj('small-row-exhaustive.json')
    n=full['n'];assert n==116780 and full['P']==13**2 and full['Q']==691
    assert 13 in proven and 691 in proven
    pools=full['prime_pool'];assert all(p in proven and p>=3 and binomial_v(n,3,p)>0 for p in pools)
    counts=collections.Counter()
    for j in range(full['j_min'],full['j_max']+1):
        for p in pools:
            v=binomial_v(n,j,p)
            assert (v==0)==lucas(n,j,p)
            if v:
                counts[p]+=1;break
        else:raise AssertionError('uncovered original half-row input')
    assert full['j_min']==4 and full['j_max']==n//2
    assert full['total']==n//2-3==sum(counts.values())
    assert {str(p):c for p,c in sorted(counts.items())}==full['witness_counts']
    return dict(exact_binomial_pairs=len(entries),complete_half_row_pairs=sum(counts.values()))


def main():
    if not __debug__:
        raise RuntimeError('verification must not run with Python optimization disabling assertions')
    ap=argparse.ArgumentParser();ap.add_argument('--output',type=Path);args=ap.parse_args()
    if args.output:
        dest=args.output.resolve()
        if dest.is_relative_to(ROOT):ap.error('output must be outside the evidence tree')
    start=time.time()
    result=dict(status='PASS',utc=datetime.datetime.now(datetime.timezone.utc).isoformat(),
                payload_hash_entries=check_hashes('SHA256SUMS.payload'),
                final_manifest_entries=check_hashes('SHA256SUMS'))
    result['algebra']=poly_check()
    result['terminal']=terminal_check()
    proven=primes_check();result['prime_certificates']=len(proven)
    result['examples']=examples_check(proven)
    result['regressions']=binomial_regression(proven)
    result['elapsed_seconds']=round(time.time()-start,6)
    result['evidence_level']='author mathematics + exact certificates + same-author offline verification; not Lean or independent review'
    text=json.dumps(result,ensure_ascii=False,indent=2)+'\n'
    if args.output:
        dest.parent.mkdir(parents=True,exist_ok=True);dest.write_text(text)
    else:print(text,end='')

if __name__=='__main__':main()
