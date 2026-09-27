"""Finite exact checks and COMPLETE bounded terminal, kept separate in outputs."""
from __future__ import annotations
from collections import Counter
from math import gcd,lcm,comb
from pathlib import Path
import json
from core import *
from algebra import check_all
ROOT=Path(__file__).resolve().parents[1]

def terminal():
    records=[];checked=0
    for d in range(2,31,4):
        k=d+2
        for P in range(d*k//2+1,d*k):
            if P<5 or P%4!=1 or (P+1)%d or not k<P:continue
            v=(P+1)//d
            if v%2!=1:continue
            checked+=1
            Q=P*P+k*P+d;V=P*P+(d+1)*P-1
            a=2*d-1;b=2*d*d-5*d+1
            cap=3*abs(a*b)
            if V>cap:continue
            r=row(P,Q,False);nr=normalize(r)
            assert nr['necessary_NC_capacity']==cap
            fs=merge_factors(d,v,V)
            ww=window_witness(r['n'],r['j'],fs)
            records.append({'d':d,'v':v,'P':P,'Q':Q,'n':r['n'],'original_j':r['j'],
                            'V':V,'capacity':cap,'P_factorization':factor(P),'Q_factorization':factor(Q),
                            'full_source2_factorization':fs,'source2_witness':ww,
                            'two_actual_different_prime_powers':bool(pp(P) and pp(Q) and pp(P)[0]!=pp(Q)[0]),
                            'full_two_Lucas':r['full_two_Lucas'],
                            'odd_overlap':nr['odd_overlap']})
    expected=[(6,29),(10,69),(14,125),(14,153),(18,197),(22,285),(26,389),(30,509)]
    assert [(r['d'],r['P']) for r in records]==expected
    return {'scope':'COMPLETE terminal AFTER the paper proof d<=30, P<d(d+2)',
            'd_max':30,'uniform_P_strict_bound':960,'pre_capacity_candidates':checked,
            'capacity_survivors':len(records),'actual_two_prime_power_rows':sum(r['two_actual_different_prime_powers'] for r in records),
            'all_rejected_by_actual_full_source2_window':True,'records':records}

def branch_grid():
    cnt=Counter();sample={};items=[]
    for P in range(5,202,2):
        for d in range(2,P):
            if gcd(d,P)!=1:continue
            for eps in (-1,1):
                Y=(-eps*pow(d,-1,P))%P
                if not 1<=Y<=(P-1)//2:continue
                z=(d*Y+eps)//P;t=(eps+1)//2
                for e in (1,2):
                    for r in range(3):
                        A=z+d*(t-r)
                        if A==0 or e%A!=0:continue
                        k=A*A-eps*d*A-e*eps//A
                        if not 0<=k<P:continue
                        Q=e*P*P+k*P+d;n=P*Q+1;j=Q*Y+t
                        assert e*eps+k*A+eps*d*A*A-A**3==0
                        key=f'e{e}_eps{eps}_A{A}_r{r}'
                        cnt[key+'_raw']+=1
                        if abs(A)==2:
                            assert Q%2==0
                            cnt['abs_A_2_rejected_by_Q_even']+=1
                        if Q%2==0:continue
                        cnt[key+'_odd_Q']+=1
                        rr=row(P,Q,False)
                        assert rr['j']==j
                        nr=normalize(rr)
                        sample.setdefault(key,{'P':P,'Q':Q,'d':d,'k':k,'n':n,'original_j':j})
                        if n%4==0:
                            cnt[key+'_n4']+=1
                            assert P%4==1
                            assert (e==1 and d%4==2) or (e==2 and d%2==1)
                            if rr['band']:
                                cnt['band_n4_total']+=1
                                assert not rr['block_pass']
                                cnt['band_block_rejected']+=1
                            if rr['band'] or e==2:
                                window_witness(n,j,merge_factors(d,nr['v'],nr['V']))
                        items.append((P,Q,eps,e,d,k,z,r,A))
    return {'scope':'FINITE classification regression, all raw zero-slot shapes with odd 5<=P<=201; no prime-power filtering',
            'counts':dict(sorted(cnt.items())),'examples':sample,'odd_row_records_sha256':digest(items)}

def pair_and_rows():
    rec=[];real=[];cnt=Counter()
    for e in (1,2):
        ds=range(2,102,4) if e==1 else range(3,102,2)
        vs=range(3,103,2) if e==1 else range(2,41,4)
        for d in ds:
            for v in vs:
                P=d*v-1;k=d+e+1
                if P<5 or k>=P:continue
                Q=e*P*P+k*P+d
                band=P<d*k<2*P
                if e==1 and not band:continue
                r=row(P,Q,False);nr=normalize(r)
                assert r['n']%4==0
                assert r['band']==band
                fs=merge_factors(d,v,nr['V'])
                ww=window_witness(r['n'],r['j'],fs)
                cnt[f'e{e}_raw_pairs']+=1
                cnt['odd_overlap_pairs']+=nr['odd_overlap']>1
                item={'e':e,'d':d,'v':v,'P':P,'Q':Q,'n':r['n'],'original_j':r['j'],
                      'auxiliary_J':nr['auxiliary_J'],'V':nr['V'],
                      'odd_overlap':nr['odd_overlap'],'capacity':nr['necessary_NC_capacity'],
                      'full_source2_factorization':fs,'source2_witness':ww}
                rec.append(item)
                pa,qb=pp(P),pp(Q)
                if not pa or not qb or pa[0]==qb[0]:continue
                result=consume(P,Q)
                assert result['accepted']
                real.append(result)
                cnt['actual_prime_power_rows']+=1
                cnt['rows_with_nontrivial_power']+=pa[1]>1 or qb[1]>1
                cnt['actual_band_rows']+=band
                cnt['actual_no_band_extension_rows']+=not band
                cnt['full_two_Lucas_pass_rows']+=all(r['full_two_Lucas'])
                cnt['n_source_rejects_actual_rows']+=not nr['T0_divides_original_j']
                if band: assert not all(r['full_two_Lucas'])
    return ({'scope':'FINITE raw pair regression; e1 d=2..98 (mod4=2), odd v=3..101, BAND; e2 odd d=3..101, v=2..38 (mod4=2), NO BAND',
             'counts':dict(cnt),'records':rec},
            {'scope':'ACTUAL two different complete odd prime-power rows extracted from the declared finite pair grid',
             'counts':dict(cnt),'records':real})

def direct_rows():
    out=[]
    for P,Q in [(5,47),(9,239),(17,683),(25,1663)]:
        r=row(P,Q);assert consume(P,Q)['accepted']
        n=r['n'];b3=comb(n,3);odd_b3=odd(b3);bj=1;count=0;checks=[]
        for j in range(1,n//2+1):
            bj=bj*(n-j+1)//j
            if j<4:continue
            g=gcd(odd_b3,bj)
            assert g>1
            count+=1
            if j in (4,r['j'],n//2):
                p=factor(g)[0][0]
                assert p>=3 and b3%p==0 and bj%p==0
                checks.append({'j':j,'common_prime':p,'gcd':g})
        out.append({'P':P,'Q':Q,'n':n,'exact_original_pairs':count,'selected_checks':checks})
    return {'scope':'DIRECT arbitrary-precision integer binomial recurrence, not Lucas-only checking',
            'total_original_pairs':sum(x['exact_original_pairs'] for x in out),'rows':out}

def old_audit():
    data=json.loads((ROOT/'sources/FROZEN_EXTERIOR_P1000.json').read_text())
    rs=[]
    for old in data['block_survivors']:
        ds=old['digits']
        if len(ds)!=3:continue
        d,k,e=ds;eps=old['epsilon'];z=old['z'];t=old['t']
        vals=[e*eps+k*(z+d*(t-r))+eps*d*(z+d*(t-r))**2-(z+d*(t-r))**3 for r in range(3)]
        assert all(vals)
        rs.append({'P':old['P'],'Q':old['Q'],'R':vals,'prior_rejection':old['rejected_at']})
    return {'scope':'READ ONLY frozen P<=1000 block-survivor ledger, not a repeated full shell scan',
            'ledger_original_counts':data['counts'],'m2_block_survivors':len(rs),
            'm2_zero_survivors':0,'newly_rejected_unknown_NC_records':0,
            'records':rs}

def boundaries():
    invalid=[]
    for P,Q in [(29,1079),(125,17639),(25,125),(15,239)]:
        try:consume(P,Q)
        except ValueError as e:invalid.append({'P':P,'Q':Q,'rejected':True,'reason':str(e)})
        else:raise AssertionError('invalid complete-power input accepted')
    r=consume(7,73)
    assert not r['accepted'] and r['row']['band']
    rr=consume(41,2351)
    assert not rr['accepted'] and not rr['row']['band'] and any(x['R']==0 for x in rr['row']['slots'])
    return {'scope':'Guard/failure-boundary tests, NO NC3 counterexamples',
            'invalid_models':invalid,
            'still_outside_consumer_m2_nonzero':r,
            'e1_zero_outside_band_not_claimed':rr,
            'genuine_e2_extension_two_full_Lucas':consume(25,1663),
            'p_equals_3_preserved':consume(9,239)}

def build_all():
    pairs,rs=pair_and_rows()
    return {'algebra.json':check_all(),'branches.json':branch_grid(),
            'terminal.json':terminal(),'pair_grid.json':pairs,'actual_rows.json':rs,
            'direct_rows.json':direct_rows(),'old_ledger_audit.json':old_audit(),
            'boundaries.json':boundaries()}
