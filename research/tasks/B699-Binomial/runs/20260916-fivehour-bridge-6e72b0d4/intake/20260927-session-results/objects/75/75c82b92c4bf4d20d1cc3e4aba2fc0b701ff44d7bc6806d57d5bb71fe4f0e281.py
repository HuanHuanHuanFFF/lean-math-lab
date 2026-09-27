"""Proof-derived finite endpoints and isolated original-input regressions.
No old P<=1000 shell scan or old 76-row certificate is imported or rerun.
"""
from __future__ import annotations
from math import gcd,isqrt,comb,lcm
import hashlib
from core import *


def divisors(n):
    out=[]
    for d in range(1,isqrt(n)+1):
        if n%d==0:
            out.append(d)
            if d*d!=n:out.append(n//d)
    return sorted(out)


def bounded_shapes():
    for u in range(2,190):
        for E in (1,3):
            max_lambda=(64*E*(u*u-1)-1)//(u**3)
            for lam in range(1,max_lambda+1):
                for d in divisors(2*(lam+8*E)):
                    if d>=u+1 and d<=190:
                        yield u,E,lam,d


def negative_terminal():
    records=[]
    stats=dict(multiplier_triples=0,bounded_d_shapes=0,nonintegral_target=0,
               integral_target=0,outside_v_range=0,strict_adjacent_gaps=0,integer_roots=0)
    for u in range(2,190):
        for E in (1,3):stats['multiplier_triples']+=(64*E*(u*u-1)-1)//u**3
    for u,E,lam,d in bounded_shapes():
        stats['bounded_d_shapes']+=1
        R=negative_constants(d,u)
        assert R[0]>0 and R[1]<0 and R[2]>0
        S=-R[0]*R[1]*R[2]
        assert S%d==8%d
        numerator=2*E*S
        lo=(d*d*u+2)//(2*d)+1; hi=(d-1)*u
        assert 1<=lo<=hi
        rec=dict(u=u,eta2=E,multiplier=lam,d=d,v_min=lo,v_max=hi,
                 signed_constants=list(R),absolute_product=S,target_numerator=numerator)
        if numerator%lam:
            stats['nonintegral_target']+=1
            rec.update(reason='nonintegral_F',remainder=numerator%lam)
        else:
            stats['integral_target']+=1
            target=numerator//lam
            rec['target_F']=target
            if target<negative_F(d,u,lo) or target>negative_F(d,u,hi):
                stats['outside_v_range']+=1
                rec.update(reason='outside_monotone_range',F_min=negative_F(d,u,lo),F_max=negative_F(d,u,hi))
            else:
                left,right=lo,hi
                while left<right:
                    mid=(left+right)//2
                    if negative_F(d,u,mid)<target:left=mid+1
                    else:right=mid
                assert negative_F(d,u,left)!=target,'ACTUAL INTEGER ROOT: revise theorem'
                a=left-1;b=left
                assert lo<=a<b<=hi
                assert negative_F(d,u,a)<target<negative_F(d,u,b)
                stats['strict_adjacent_gaps']+=1
                rec.update(reason='strict_adjacent_integer_gap',v_left=a,v_right=b,
                           F_left=negative_F(d,u,a),F_right=negative_F(d,u,b))
        records.append(rec)
    assert stats['bounded_d_shapes']==2485
    return dict(theorem='E1_NEGATIVE_MULTIPLIER_TERMINAL',bounds=dict(d_max=190,u_max=189,lambda_max=71),
                statistics=stats,records=records,status='PASS_NO_INTEGER_ROOT')


def independent_terminal():
    """Different verifier: direct enumeration of v and the EXPANDED original F.
    It does not use the monotone search or its gap certificates.
    """
    checks=0
    for u,E,lam,d in bounded_shapes():
        a=d*(u-1)-2
        b=d*d*(u+1)-d*(u+2)+2
        c=4*d**3-2*d*d*(u+4)+d*(u+5)-2
        rhs=2*E*a*b*c
        lo=(d*d*u+2)//(2*d)+1; hi=(d-1)*u
        for v in range(lo,hi+1):
            F=(d**3*u*v*v+d**3*v**3-2*d*d*u*v-3*d*d*v*v+d*d*v
               +d*u+3*d*v-d-2)
            assert lam*F!=rhs,(u,E,lam,d,v)
            checks+=1
    return dict(method='exhaustive_v_and_expanded_original_cubic',exact_tests=checks,
                integer_roots=0,status='PASS')


def e2_terminal():
    records=[]
    for d in (3,5):
        for k in range(6):
            for P in range(5,14,2):
                Q=2*P*P+k*P+d
                if d>=P or k>=P or Q%2==0 or gcd(P,Q)!=1:continue
                if (P*Q+1)%4 or not P<d*max(d,k,2)<2*P:continue
                r=original_row(P,Q,False)
                records.append(dict(P=P,Q=Q,d=d,k=k,z=r['z'],epsilon=r['epsilon'],
                                    n=r['n'],j=r['j'],X_blocks=r['X_blocks'],block_pass=r['block_pass'],
                                    Q_factorization=factor(Q)))
    survivors=[r for r in records if r['block_pass']]
    assert [(r['P'],r['Q']) for r in survivors]==[(5,63)]
    weak=original_row(5,63,False)
    assert sources(weak)['T2_divides_LCM'] is False
    assert prime_power(63) is None
    return dict(bounds=dict(d_values=[3,5],k_max=5,P_max=13),integer_records=records,
                block_survivors=survivors,original_two_prime_power_survivors=0,
                weak_model_source2_witness=witness(316,126,157),
                special_d2_P5_witness=witness(336,135,167),status='PASS')


ACTUAL_ROWS=[
    (1171,1416949,5),(1249,1608751,5),
    (3541,12960119,3),(5701,33362327,3),
    (1013,3076483,5),(1109,3687427,7),
    (1019,1114801,5),(1439,2265001,5),
    (16807,290609881,3),(1331,1867429,3),
    (4913,25925927,5),(12167,154046413,3),
    (24389,609090931,3),(29791,915805169,3),
    (50653,2628890743,5),(68921,4802208643,3),
]

def actual_rows():
    out=[]
    for P,Q,p in ACTUAL_ROWS:
        a=consume(P,Q)
        assert a['covered_current'] and a['row']['P']>1000
        a['original_candidate_source_witness']=witness(a['row']['n'],a['row']['j'],p)
        out.append(a)
    stats=dict(rows=len(out),P_greater_than_1000=len(out),
               proper_prime_power_rows=sum(a['row']['power_P'][1]>1 or a['row']['power_Q'][1]>1 for a in out),
               both_full_Lucas_pass=sum(all(a['row']['two_full_Lucas']) for a in out),
               zero_constant_rows=sum(not all(s['R'] for s in a['row']['slots']) for a in out))
    return dict(selection='isolated new-family regression inputs; not an exhaustive row count',
                statistics=stats,rows=out,status='PASS')


def direct_rows():
    result=[];total=0
    for P,Q in ((5,43),(5,67),(7,73),(13,263)):
        a=consume(P,Q);assert a['covered_current']
        n=P*Q+1;cn3=comb(n,3)
        primes=[p for p,e in factor(cn3) if p>=3]
        trace=[]
        for j in range(4,n//2+1):
            common=odd(gcd(cn3,comb(n,j)))
            assert common>1
            p=next(p for p in primes if common%p==0)
            assert binomial_valuation(n,j,p)>0 and not lucas(n,j,p)
            trace.append([j,p,binomial_valuation(n,3,p),binomial_valuation(n,j,p)])
        total+=len(trace)
        result.append(dict(P=P,Q=Q,n=n,pairs=len(trace),direct_witnesses=trace,
                           trace_sha256=digest(trace)))
    return dict(total_original_pairs=total,rows=result,status='PASS')


def boundaries():
    rejected=[]
    for P,Q in ((3,125),(5,63),(25,625)):
        try: consume(P,Q)
        except ValueError as e:rejected.append(dict(P=P,Q=Q,status='rejected',reason=str(e)))
        else:raise AssertionError('invalid original domain accepted')
    outside=[]
    for P,Q in ((7,17),(11,157),(5,31)):
        a=consume(P,Q)
        assert not a['covered_current']
        outside.append(dict(P=P,Q=Q,status=a['status'],blocks=a['row']['Q_blocks'],band=a['row']['band']))
    # Independence only in this direction: original n source passes, third source fails.
    r=original_row(7,73);s=sources(r)
    assert s['T0_divides_j'] and not s['T2_divides_LCM']
    return dict(invalid_original_inputs=rejected,outside_current_consumer=outside,
                T0_not_sufficient=dict(row=r,sources=s),
                no_claim_of_NC_model=True,status='PASS')


def optional_u1_exploration():
    """Earlier cheap diagnostic, superseded by the unbounded T0 proof.
    Not a proof endpoint; not part of mandatory replay.
    """
    count=pass0=pass2=0
    for d in range(2,192):
        for v in range(1,d):
            P=d*v-1;Q=P*P+d*P+d;n=P*Q+1
            if P<5 or d>=P or P%2==0 or Q%2==0 or n%4 or not P<d*d<2*P:continue
            j=Q*v;R=negative_constants(d,1)
            count+=1
            pass0+=j%active(n)==0
            pass2+=lcm(*map(abs,R))%active(n-2)==0
    return dict(integer_pairs=count,T0_pass=pass0,T2_LCM_pass=pass2,
                role='exploratory_only_replaced_by_unbounded_T0_proof')
