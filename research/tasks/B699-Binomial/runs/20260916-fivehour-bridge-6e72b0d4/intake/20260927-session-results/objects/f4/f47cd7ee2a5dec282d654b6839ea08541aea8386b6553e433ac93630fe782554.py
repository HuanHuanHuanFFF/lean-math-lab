"""All bounded universes are explicit; these checks do not prove infinite theorems."""
from collections import Counter
from math import comb,gcd,isqrt
import hashlib
from core import *
import algebra


def pp_lookup(limit):
    prime=sieve(limit);composite={}
    for p in range(3,isqrt(limit)+1,2):
        if prime[p]:
            v=p*p;a=2
            while v<=limit:
                composite[v]=(p,a);v*=p;a+=1
    def lookup(v):
        if v>=3 and v%2 and prime[v]:return (v,1)
        return composite.get(v)
    return lookup


def exterior(limit=1000):
    """Exhausts P<=limit, Q<3P^2, exact odd prime powers, P<dH<2P."""
    lookup=pp_lookup(3*limit*limit)
    counts=Counter();rows=[];universe=hashlib.sha256()
    for P in range(5,limit+1,2):
        pa=lookup(P)
        if not pa:continue
        for d in range(2,isqrt(2*P-1)+1):
            if gcd(d,P)!=1:continue
            for k in range(min(P,(2*P-1)//d+1)):
                H=max(d,k)
                if not P<d*H<2*P:continue
                for e in (0,1,2):
                    Q=e*P*P+k*P+d
                    if Q<=P or Q%2==0:continue
                    pb=lookup(Q)
                    if not pb or pb[0]==pa[0]:continue
                    counts['actual_rows']+=1
                    universe.update(f'{P},{pa[0]},{pa[1]},{Q},{pb[0]},{pb[1]}\n'.encode())
                    n=P*Q+1
                    if n%4:
                        counts['inherited_n_mod4']+=1;continue
                    counts['after_inherited_n_mod4']+=1
                    if Q<2*P:counts['new_near_row_domain']+=1
                    row=raw_row(P,Q,*pa,*pb)
                    if not row['block_pass']:
                        counts['block_fail']+=1;continue
                    assert all(abs(c)<2*P for c in row['c'])
                    counts['block_pass']+=1
                    key=f"m{len(row['digits'])-1}_eps{row['epsilon']}_carry{row['carry'][1:-1]}"
                    counts[key]+=1
                    if not any(row['c']):counts['new_zero_carry_domain']+=1
                    if len(row['digits'])>=2:
                        rr=residuals(row);row['residuals']=rr
                        if all(rr):
                            L=lcm(*map(abs,rr));T2=active_odd_part(n-2)
                            row.update(lcm_residuals=L,T2=T2)
                            if L%T2:counts['res_lcm_rejected_block_models']+=1
                    if not all(row['two_lucas']):
                        counts['full_lucas_fail']+=1;row['rejected_at']='p_or_q_full_lucas'
                    else:
                        counts['two_lucas_pass']+=1
                        T0=active_odd_part(n);row['T0']=T0
                        if row['j']%T0:
                            counts['n_source_fail']+=1;row['rejected_at']='n_source_complete_part'
                        else:
                            counts['n_source_pass']+=1
                            bad=[]
                            for r,a in factor(n-2):
                                if r<3 or r==3 and a==1:continue
                                if row['j']%(r**a)>2:bad.append([r,a])
                            row.update(third_source_bad_complete_powers=bad,n2_factorization=factor(n-2))
                            if bad:
                                counts['third_source_fail']+=1;row['rejected_at']='n_minus_2_complete_window'
                            else:
                                counts['ALL_SOURCE_WINDOWS_PASS']+=1;row['rejected_at']='NOT_REJECTED_BY_WINDOWS'
                    row['candidate_witness']=witness(row)
                    rows.append(row)
    assert counts['ALL_SOURCE_WINDOWS_PASS']==0
    counts['ALL_SOURCE_WINDOWS_PASS']+=0
    return dict(P_max=limit,Q_strict_bound='Q<3P^2',band='P<dH<2P',
                deterministic_prime_method='Eratosthenes sieve plus enumeration of all composite odd prime powers',
                counts=dict(sorted(counts.items())),universe_sha256=universe.hexdigest(),
                block_survivors=rows,
                note='Every stored model is an actual P,Q,n,j input. None is NC3. All counts are finite.')


def near_corpus(limit=5000):
    lookup=pp_lookup(2*limit+2);counts=Counter();rows=[]
    for P in range(5,limit+1,2):
        pa=lookup(P)
        if not pa:continue
        for d in range(2,min(P,2+isqrt(2*P)),2):
            Q=P+d
            if not (d-1)**2<2*P:continue
            pb=lookup(Q)
            if not pb or pb[0]==pa[0]:continue
            if P>d*d:
                counts['old_digit_gate_overlap']+=1;continue
            counts['outside_old_digit_gate']+=1
            if (P*Q+1)%4:
                counts['inherited_n_mod4_overlap']+=1;continue
            # These lie strictly outside BOTH explicit inherited numerical consumers.
            row=raw_row(P,Q,*pa,*pb)
            counts['new_domain_after_inherited_n_mod4']+=1
            if P<d*d<2*P:counts['first_exterior_band']+=1
            else:counts['past_2P_edge']+=1
            if all(row['two_lucas']):counts['both_source_lucas_pass']+=1
            if pa[1]>1 or pb[1]>1:counts['nontrivial_prime_power_rows']+=1
            row['candidate_witness']=witness(row)
            rows.append(row)
    return dict(P_max=limit,criterion='Q<2P and (Q-P-1)^2<2P',
                excludes='P>d^2 and n not divisible by 4',counts=dict(sorted(counts.items())),rows=rows,
                ledger_scope='Net relative to named inherited gates only; not a claim of disjointness from all historical i3 subfamilies.')


def full_rows():
    result=[]
    for P,Q in [(13,19),(17,23),(19,25),(23,29)]:
        n=P*Q+1;G=comb(n,3);h=hashlib.sha256();count=0
        assert (Q-P-1)**2<2*P and not P>(Q-P)**2 and n%4==0
        for j in range(4,n//2+1):
            g=gcd(G,comb(n,j));odd=g
            while odd%2==0:odd//=2
            assert odd>1
            h.update(f'{j},{g},{odd}\n'.encode());count+=1
        result.append(dict(P=P,Q=Q,n=n,all_j_count=count,sha256=h.hexdigest()))
    return dict(rows=result,total_pairs=sum(r['all_j_count'] for r in result),
                method='Direct exact integer binomial coefficients; not Lucas-only testing.')


def boundary_examples():
    examples=[]
    labels=[('near_first_band_prime3_kept',23,29),('near_beyond_2P',13,19),
            ('near_nontrivial_power_passing_both_bases',289,307),
            ('zero_carry_real_q_power',121,2187),
            ('m2_still_outside_new_row_gate',7,73),
            ('actual_zero_resultant_not_a_counterexample',149,2399),
            ('nontrivial_prime_power_rejects_high_digits',49,59)]
    for label,P,Q in labels:
        row=consume(P,Q);row['label']=label
        row['n_factorization']=factor(row['n']);row['n2_factorization']=factor(row['n']-2)
        row['candidate_witness']=witness(row)
        examples.append(row)
    # Prime 3 is actually an allowed common divisor, not just a notation promise.
    n,j=668,116
    assert vp_binomial(n,3,3)==1 and vp_binomial(n,j,3)==2
    return dict(examples=examples,prime3_witness=dict(n=n,j=j,p=3,v_Cn3=1,v_Cnj=2))


def all_results():
    return {'algebra.json':algebra.run(),'exterior_P1000.json':exterior(),
            'near_P5000.json':near_corpus(),'direct_full_rows.json':full_rows(),
            'boundary_examples.json':boundary_examples()}
