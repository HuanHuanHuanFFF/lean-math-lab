#!/usr/bin/env python3
"""Regenerate exact certificates. Finite checks are explicitly not infinite proofs."""
import argparse, hashlib, json
from collections import Counter
from math import gcd, isqrt
from pathlib import Path
from core import *


def emit(path, value):
    path.write_text(json.dumps(value, ensure_ascii=False, indent=2, sort_keys=True)+'\n', encoding='utf-8')


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--out', type=Path, required=True)
    args = parser.parse_args()
    out = args.out
    out.mkdir(parents=True, exist_ok=True)

    classes=[]
    for r in range(1, 120):
        if gcd(r, 120) != 1:
            continue
        a,b = jacobi(10,r), jacobi(30,r)
        slots=['endpoint']
        if a == 1: slots.append('near')
        if b == 1: slots.append('center')
        classes.append(dict(residue=r, chi10=a, chi30=b, allowed_groups=slots))
    emit(out/'character_classes.json', dict(modulus=120, rows=classes,
         interpretation='Prime residue classes; not 32 actual NC candidates.'))

    tests=[]
    for p in range(7, 500):
        if not is_prime(p): continue
        squares={z*z % p for z in range(p)}
        allowed=[]
        for b in range(5):
            # U=10Z^2 and n=4 at this source: 30Z^2=b(4-b).
            target=(b*(4-b)*pow(30,-1,p)) % p
            if target in squares: allowed.append(b)
        tests.append(dict(p=p, chi10=jacobi(10,p), chi30=jacobi(30,p),
                          allowed_slots_mod_p=allowed))
    emit(out/'local_prime_screen.json', dict(prime_bound_exclusive=500, rows=tests,
         scope='Only the r=4 source and the square norm modulo p.'))

    central=[]
    for e in (1,3,5,9):
        p=7; Q=p**e; n=3*Q+4; j=Q+2; k=2*Q+2; L=2*e+3; mod=p**L
        z=hensel_root(10*(n-1), j*k, p, L)
        central.append(dict(p=p,e=e,n=n,j=j,k=k,precision=L,modulus=mod,z_mod=z,
            vp_center_product=valuation((j-2)*(k-2),p),
            vp_n_minus_4=valuation(n-4,p),vp_jk=valuation(j*k,p),
            vp_binomial_n6=vp_binomial(n,6,p),vp_binomial_nj=vp_binomial(n,j,p),
            norm_status='congruence only; NOT a global W=10Y^2 assertion'))
    emit(out/'central_odd_local_models.json', dict(rows=central,
        scope='Source-local unbounded family, with all higher base-7 carries checked.'))

    # Cheap route screen on an explicitly bounded integer divisor parameterization.
    scan=[]; signs=Counter(); raw_norm_rows=0
    for z in range(1,161):
        U=10*z*z
        for c in range(1,301):
            if U%c: continue
            j,k=U+U//c,(c+1)*U-c
            if j>k:j,k=k,j
            n=j+k
            if n>100000000 or n%720!=450: continue
            raw_norm_rows+=1
            q4=(n-4)//2; E4=gcd(q4,j*k); C=gcd(q4,j-2)
            sign=jacobi(10,E4*C); signs[sign]+=1
            if sign != 1: continue
            factors=factor_trial(q4)
            witnesses=[]
            for p,e in factors:
                if j%(p**e)>4:
                    witnesses.append(dict(p=p,e=e,j_residue=j%(p**e),
                         v_n6=vp_binomial(n,6,p),v_nj=vp_binomial(n,j,p)))
            scan.append(dict(n=n,j=j,k=k,z=z,c=c,U=U,Y=(n-1)*z,
                E4=E4,C=C,chi10_E4C=sign,q4=q4,
                factorization=[list(x) for x in factors],witnesses=witnesses))
    emit(out/'consumer_examples.json', dict(rows=scan, norm_rows=raw_norm_rows,
         sign_counts={str(k):v for k,v in sorted(signs.items())},
         search_contract=dict(z_min=1,z_max=160,c_min=1,c_max=300,n_max=100000000),
         scope='Finite correctness examples; no net historical-frontier audit.'))

    big=[]
    for m in (2,3,8,16,32,64):
        A,B,E=42,65,27
        congruences=[exact_two_root(1359015,151,B-1),
                     exact_odd_root(90601,10,3,A-1),
                     exact_odd_root(543606,61,5,E-1),
                     exact_odd_root(9000,1,31,m), (1,19), (0,149)]
        t,M=crt(congruences)
        row=parameter_family(t)
        row['progression_modulus']=M
        row['congruences']=[dict(residue=r,modulus=s) for r,s in congruences]
        row['requested']=dict(v3_n=A,v2_n_minus_2=B,v5_n_minus_5=E,v31_U_minus_1=m)
        q2=(row['n']-2)//(2**B); q5=(row['n']-5)//(5**E)
        row['q2']=q2; row['q5']=q5
        row['Q51']=gcd(q5,(row['j']-1)*(row['k']-1))
        row['actual_valuations']=dict(v3_n=valuation(row['n'],3),
            v2_n_minus_2=valuation(row['n']-2,2),
            v5_n_minus_5=valuation(row['n']-5,5),
            v31_q5=valuation(q5,31),v31_U_minus_1=valuation(row['U']-1,31),
            v31_j_minus_4=valuation(row['j']-4,31),
            v31_k_minus_1=valuation(row['k']-1,31),
            v31_C_n6=vp_binomial(row['n'],6,31),
            v31_C_nj=vp_binomial(row['n'],row['j'],31))
        row['boundary_flags']=dict(legal_original_pair=True,first_source_integral=True,
            exact_square_norm=True,base_congruence_5130_mod_9000=True,
            q2_q4_q5_nonsquare=True,alpha_pure_power_of_3=False,
            full_q4_window=False,all_q5_near=False,
            original_NC6=False)
        big.append(row)
    emit(out/'q5_unbounded_precision_family.json', dict(rows=big,
        infinite_theorem='For every A>=2, B>=4, E>=3 and m>=2 a CRT progression exists.',
        scope='A rigorous boundary for the reduced local route; not for full B-RES10.'))

    universal=[]; total_pairs=0; norm_pairs=0
    for n in range(14,1201):
        for j in range(7,n//2+1):
            total_pairs+=1
            k=n-j; W=(n-1)*j*k
            if W%10 or isqrt(W//10)**2!=W//10: continue
            norm_pairs+=1
            q4=n-4
            for p in (2,3,5):
                while q4%p==0:q4//=p
            E4=gcd(q4,j*k); C=gcd(q4,j-2)
            if jacobi(10,q4)==jacobi(10,E4*C): continue
            factors=factor_trial(q4)
            witnesses=[dict(p=p,e=e,j_residue=j%(p**e),
                           v_n6=vp_binomial(n,6,p),v_nj=vp_binomial(n,j,p))
                       for p,e in factors if j%(p**e)>4]
            universal.append(dict(n=n,j=j,Y=isqrt(W//10),q4=q4,E4=E4,C=C,
                factorization=[list(x) for x in factors],witnesses=witnesses))
    emit(out/'universal_consumer_regression.json', dict(n_max=1200,
         legal_pairs=total_pairs, norm_pairs=norm_pairs, rows=universal,
         scope='Finite regression for the universal i=6 W10 character consumer, not a proof by scan.'))

    naive_count=0; naive_norm=0
    for n in range(450,15001,720):
        for j in range(7,n//2+1):
            naive_count+=1
            W=(n-1)*j*(n-j)
            if W%10==0 and isqrt(W//10)**2==W//10:naive_norm+=1
    emit(out/'discovery_summary.json', dict(
        residue_classes=len(classes), screened_primes=len(tests),
        local_central_models=len(central),consumer_examples=len(scan),
        large_CRT_examples=len(big),universal_consumer_examples=len(universal),
        empty_naive_scan=dict(n_max=15000,tested_legal_pairs=naive_count,norm_pairs=naive_norm),
        conclusions=dict(global_index_reduction=0,certified_net_historical_reduction=0,
            uniform_d4_upgrade_proved=False,uniform_q5_valuation_cap_proved=False,
            q4_character_consumer_proved=True),
        evidence='Author proof plus deterministic exact arithmetic; not Lean or outside review.'))
    for path in sorted(out.glob('*.json')):
        print(hashlib.sha256(path.read_bytes()).hexdigest(),path.name)
    print('DISCOVERY_DONE: 32 character classes; %d primes; %d consumer examples; %d CRT examples.' % (len(tests),len(scan),len(big)))

if __name__=='__main__': main()
