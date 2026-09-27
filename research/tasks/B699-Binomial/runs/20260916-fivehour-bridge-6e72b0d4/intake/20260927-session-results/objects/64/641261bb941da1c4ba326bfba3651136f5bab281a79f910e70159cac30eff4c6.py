"""Bounded, exactly specified computations for this round only."""
from __future__ import annotations
from math import gcd, comb
from collections import Counter
import hashlib
from core import *
from algebra import check_all


def pair_grid(d_max=201,v_max=200):
    counts=Counter();h=hashlib.sha256();samples={}
    for d in range(3,d_max+1,2):
        for v in range(1,v_max+1):
            r=target_pair(d,v); counts['pairs']+=1
            h.update(canonical(r))
            if v%2==0:counts['v_even']+=1
            if r['gcd_v_W']>1:
                counts['overlap_v_W']+=1;samples.setdefault('overlap',r)
            if r['witness']['prime']==3:
                counts['witness_is_3']+=1;samples.setdefault('active_3',r)
            if r['eta_W']==3:
                counts['W_has_exactly_one_3']+=1;samples.setdefault('isolated_W_3',r)
            if any(a>1 for p,a in r['W_factorization']):
                counts['W_has_repeated_prime']+=1;samples.setdefault('repeated_W_prime',r)
            e=r['witness']['full_exponent_in_n_minus_2']
            if e>1:
                counts['witness_full_exponent_above_1']+=1
            counts['failed_pairs']+=0
    return dict(d_odd_min=3,d_max=d_max,v_min=1,v_max=v_max,
                counts=dict(counts),ordered_full_records_sha256=h.hexdigest(),samples=samples,
                interpretation='Finite regression of the PAIR theorem; no P,Q primality assumed here.')


def target_rows(d_max=201,v_max=200):
    rows=[];counts=Counter()
    for d in range(3,d_max+1,2):
        for v in range(2,v_max+1,2):
            counts['integer_shapes']+=1
            P=d*v-1;Q=d*(d+1)*v-1
            pa,qb=odd_prime_power(P),odd_prime_power(Q)
            if pa is None or qb is None or pa[0]==qb[0]:continue
            r=consume(P,Q);assert r['new_whole_row_closed']
            assert r['j']==Q*v
            rows.append(r);counts['actual_two_power_rows']+=1
            if pa[1]>1 or qb[1]>1:counts['nontrivial_exponent_rows']+=1
            if P<d*(d+1)<2*P:
                counts['in_first_exterior_band']+=1
                if r['n']%4==0:counts['band_and_n_divisible_by_4']+=1
            if all(r['two_lucas']):counts['two_full_lucas_pass']+=1
            if r['n']%4==0:counts['n_divisible_by_4']+=1
            if not any(r['prior_diagnostic_flags'][x] for x in
                       ('n_mod4_rejects','old_digit_gate','old_near_gate','old_zero_carry_gate')):
                counts['outside_four_old_numeric_tests']+=1
    return dict(d_max=d_max,v_max=v_max,counts=dict(counts),rows=rows,
                note='Actual powers of distinct odd primes. Counts are NOT previously unknown NC cases.')


def zero_rows(P_max=2000):
    # Completeness: any zero slot has k=w(d+w), 1<=w<d; k>=d+1 and d*k<2*P_max.
    powers=[P for P in range(5,P_max+1,2) if odd_prime_power(P)]
    rows={};counts=Counter();h=hashlib.sha256()
    for d in range(3,P_max+1,2):
        if d*(d+1)>=2*P_max:break
        for w in range(1,d):
            if gcd(d,w)!=1:continue
            k=w*(d+w)
            if d*k>=2*P_max:continue
            counts['root_shapes']+=1
            for P in powers:
                if not (max(d,k)<P and P<d*k<2*P):continue
                if (P*w)%d not in (1,d-1):continue
                Q=k*P+d
                qb=odd_prime_power(Q);pa=odd_prime_power(P)
                if qb is None or pa[0]==qb[0]:continue
                r=consume(P,Q)
                if r['n']%4:continue
                if not (r['residuals'] is not None and 0 in r['residuals']):continue
                assert 'NEW_M1_ZERO_BAND2_ROW' in r['new_sufficient_consumers']
                assert (P,Q) not in rows
                norm=r['normalization']
                if norm['odd_overlap']>1:why='ODD_FULL_POWER_OVERLAP'
                elif norm['controlled_value']>norm['necessary_NC_upper_bound']:why='CONTROLLED_FACTOR_TOO_LARGE'
                else:raise AssertionError(('Unclosed normalized case',r))
                r['exact_split_rejection']=why
                rows[(P,Q)]=r
    out=[rows[pq] for pq in sorted(rows)]
    for r in out:
        counts['rows']+=1
        if all(r['two_lucas']):counts['two_full_lucas_pass']+=1
        if r['block_pass']:counts['block_pass']+=1
        if r['a']>1 or r['b']>1:counts['nontrivial_exponent_rows']+=1
        counts[f"zero_slot_{r['normalization']['zero_slot']}"]+=1
        counts[f"normalized_epsilon_{r['normalization']['epsilon']}"]+=1
        counts[r['exact_split_rejection']]+=1
        h.update(canonical([r['P'],r['Q']]))
    return dict(P_max=P_max,domain='m=1, 4|n, P<dH<2P, at least one zero resultant; exact two prime powers',
                counts=dict(counts),rows=out,universe_sha256=h.hexdigest(),
                note='Complete only in the stated finite domain; infinite closure is a paper theorem.')


def terminal_cases():
    raw=[]
    for d in (3,5,7):
        # Rational bounds: d(d+1)/2 < P <= 6(d-2)-1; exact integer enumeration.
        vals=[]
        for P in range(1,6*(d-2)):
            if 2*P<=d*(d+1) or P%2==0 or (P-1)%d:continue
            Y=(P-1)//d
            if Y<=0 or Y%2:continue
            vals.append(dict(P=P,Y=Y))
        raw.append(dict(d=d,survivors=vals))
    assert raw==[{'d':3,'survivors':[]},{'d':5,'survivors':[]},
                 {'d':7,'survivors':[{'P':29,'Y':4}]}]
    r=consume(29,239)
    assert r['normalization']['odd_overlap']==3
    assert r['third_source_witness']['prime']==3
    return dict(exhaustive_d=[3,5,7],enumeration=raw,remaining_case=r)


def direct_full_rows():
    ans=[]
    for P,Q in ((5,23),(9,59),(17,71),(29,239)):
        r=consume(P,Q);assert r['new_whole_row_closed']
        n=P*Q+1;B=1;C3=comb(n,3);count=0;h=hashlib.sha256();w3=0
        primes=[p for p,a in factor(C3) if p>=3]
        for j in range(n//2+1):
            if j:
                numerator=B*(n-j+1);assert numerator%j==0;B=numerator//j
            if j<4:continue
            g=odd_part(gcd(C3,B));assert g>1
            p=next(p for p in primes if B%p==0)
            assert vp_binomial(n,j,p)>0 and not lucas_nonzero(n,j,p)
            if j in (4,r['j'],n//2):assert B==comb(n,j)
            h.update(canonical([j,p,g]));count+=1
            if p==3:w3+=1
        assert count==n//2-3
        ans.append(dict(P=P,Q=Q,n=n,count=count,first_common_prime_is_3=w3,
                        exact_integer_stream_sha256=h.hexdigest(),candidate=r['j']))
    return dict(rows=ans,total_pairs=sum(r['count'] for r in ans),
                method='Exact integer binomial recurrence + odd gcd; selected math.comb cross-checks; Lucas/Legendre per pair.')


def boundaries():
    # Deliberately NOT called NC3 counterexamples.
    a=target_pair(9,6) # W=23^2, Q is NOT a prime power.
    b=target_pair(7,6) # 3 overlaps W and v, hence the full 3^2 is active.
    c=consume(9,59) # base 3, full power 9 retained in original n-1.
    d=consume(289,8699) # nontrivial P=17^2 in the stronger target row family.
    e=consume(7,37) # nonzero m1: outside new consumers, not an NC example.
    f=consume(7,73) # m2: outside new consumers, T0=1 is not sufficient.
    assert not e['new_whole_row_closed'] and not f['new_whole_row_closed']
    rejected=[]
    for P,Q in ((53,539),(9,27),(3,5)):
        try: consume(P,Q)
        except ValueError as exc:rejected.append(dict(P=P,Q=Q,error=str(exc)))
        else:raise AssertionError('A source validation guard was bypassed')
    f['third_source_actual_witness']=witness(f['n'],f['j'],f['n']-2)
    return dict(repeated_W_power_pair_only=a,overlap_active_3_pair_only=b,
                source_base_3_complete_power=c,source_P_exponent_2=d,
                open_m1_nonzero_example=e,open_m2_example=f,guard_rejections=rejected,
                note='Every example is either closed or outside the new consumer; none is an NC3 counterexample.')


def old_ledger_audit(old):
    selected=[]
    for r in old['block_survivors']:
        if len(r['digits'])==2 and 0 in r.get('residuals',[]):
            new=consume(r['P'],r['Q'])
            assert 'NEW_M1_ZERO_BAND2_ROW' in new['new_sufficient_consumers']
            selected.append(dict(P=r['P'],Q=r['Q'],j=r['j'],old_rejected_at=r['rejected_at'],
                                 new_consumer='NEW_M1_ZERO_BAND2_ROW',
                                 third_source_witness=new['third_source_witness']))
    return dict(old_P_max=old['P_max'],old_records_read=len(old['block_survivors']),
                m1_zero_records=len(selected),records=selected,
                genuinely_new_finite_NC_cases=0,
                note='Read-only audit of nine already-rejected finite records, not a rerun of the old full-shell scan.')


def split_lemma_grid(limit=60):
    counts=Counter();h=hashlib.sha256()
    for A in range(1,limit+1):
        for B in range(1,limit+1):
            F=A*B;n=F+2
            if n%4:continue
            for C in range(1,limit+1):
                J=A*C
                if gcd(B,C)!=1 or not 4<=J<=n:continue
                counts['triples']+=1
                assert gcd(J,F)==A
                T=active_part(F)
                ok=(J*(J-1)*(J-2))%T==0
                overlap=gcd(odd_part(A),odd_part(B))
                if overlap>1:
                    counts['odd_overlap_cases']+=1
                    assert not ok
                if ok:
                    counts['third_source_complete_windows_pass']+=1
                    assert overlap==1
                    S=odd_part(B)//eta(B)
                    assert ((J-1)*(J-2))%S==0
                h.update(canonical([A,B,C,ok,overlap]))
    return dict(limit=limit,counts=dict(counts),ordered_records_sha256=h.hexdigest(),
                note='Finite test of the generic zero-slot splitting lemma; windows remain necessary, not NC3 sufficient.')
