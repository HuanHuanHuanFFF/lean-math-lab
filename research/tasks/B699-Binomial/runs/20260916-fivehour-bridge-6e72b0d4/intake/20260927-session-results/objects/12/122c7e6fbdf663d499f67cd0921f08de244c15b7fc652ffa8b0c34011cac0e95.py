#!/usr/bin/env python3
"""Regenerate finite evidence. Does not prove the infinite theorem by enumeration."""
from pathlib import Path
from math import comb,gcd
import hashlib,json
from exact_core import *
from algebra import check_identities
ROOT=Path(__file__).resolve().parents[1]
CERT=ROOT/'certificates'

def write(name,obj):
    (CERT/name).write_bytes(canonical_bytes(obj))

def main():
    CERT.mkdir(exist_ok=True)
    pp=prime_powers(700);rows=[];universe=0;sqrt_count=0;pq_survivors=[]
    for P,p,a in pp:
        for Q,q,b in pp:
            if Q<=P or p==q:continue
            universe+=1
            ds=digits(Q,P);H=max(ds);d=ds[0]
            if P>=H*H:sqrt_count+=1
            if P<=d*H:continue
            n=P*Q+1;j=crt_candidate(P,Q)
            pqpass=lucas_nonzero(n,j,p) and lucas_nonzero(n,j,q)
            if pqpass:pq_survivors.append([P,Q,n,j])
            f=c3_factorization(n)
            witness=next(r for r in f if r>=3 and not lucas_nonzero(n,j,r))
            rows.append(dict(P=P,p=p,a=a,Q=Q,q=q,b=b,digits=ds,d=d,H=H,n=n,
                             crt_j=j,pq_lucas_pass=pqpass,witness=witness,
                             v_c3=vp_binomial(n,3,witness),
                             v_cj=vp_binomial(n,j,witness)))
    corpus=dict(label='finite whole-row certificate via exact low-window CRT lemma',
                prime_power_bound=700,universe_rows=universe,gate_rows=len(rows),
                square_root_gate_rows=sqrt_count,two_base_survivors=pq_survivors,rows=rows)
    write('corpus.json',corpus)
    states=coarse_states(128)
    ledger=dict(label='INTERMEDIATE NECESSARY states; NOT original candidates; superseded by full-q-power proof',
                H_max=128,total_states=len(states),
                states_above_old_lifting_gate=sum(s['above_old_gate'] for s in states),
                refined_shape_states=sum(s['full_power_shape_survives'] for s in states),states=states)
    write('intermediate_ledger.json',ledger)
    write('algebra.json',check_identities())
    write('small_windows.json',small_window_audit())
    write('full_rows.json',full_row_audit())
    P,Q=1093,19683;n=P*Q+1;j=crt_candidate(P,Q);k,d,z=18,9,2
    rs=residuals(k,d,z);R=abs(rs[0]*rs[1]*rs[2])
    spots=dict(
      p_equals_i=dict(n=10,j=5,gcd=gcd(comb(10,3),comb(10,5)),witness=3),
      isolated_three=dict(n=16,j=6,v3_n_minus_1=1,v3_c3=0,witness=7),
      full_power_not_radical=dict(n=46,j=6,p=3,a=2,r=1,mod_p=0,mod_full_power=6,
                                 v_cj=vp_binomial(46,6,3)),
      two_base_only_not_nc=dict(P=P,Q=Q,p=1093,q=3,b=9,n=n,j=j,
             p_pass=lucas_nonzero(n,j,1093),q_pass=lucas_nonzero(n,j,3),
             digits=digits(Q,P),k=k,d=d,z=z,epsilon=-1,Y=243,
             residuals=rs,R=R,A2=(n-2)//2,witness=13,
             v_c3=vp_binomial(n,3,13),v_cj=vp_binomial(n,j,13),
             n_factorization=list(factor(n)),n2_factorization=list(factor(n-2))),
      outside_gate_not_counterexample=dict(P=13,Q=17,n=222,j=52,d=4,H=4,
             p_pass=lucas_nonzero(222,52,13),q_pass=lucas_nonzero(222,52,17),witness=37),
      omitted_content_zero=dict(k=6,d=5,z=1,r1=0,content_divides_k=False))
    write('spot_checks.json',spots)
    summary=dict(status='PASS',corpus_universe=universe,gate_rows=len(rows),
                 square_root_gate_rows=sqrt_count,two_base_survivors=len(pq_survivors),
                 intermediate_states=len(states),intermediate_above_old_gate=ledger['states_above_old_lifting_gate'],
                 refined_shape_states=ledger['refined_shape_states'],
                 small_windows=json.loads((CERT/'small_windows.json').read_text()),
                 full_row_pairs=sum(x['pairs'] for x in json.loads((CERT/'full_rows.json').read_text())),
                 theorem='P > d0*H implies Common3 for every 4 <= j <= n/2',
                 general_theorem_evidence='author-level paper proof, not finite enumeration')
    print(json.dumps(summary,ensure_ascii=False,sort_keys=True,indent=2))

if __name__=='__main__':main()
