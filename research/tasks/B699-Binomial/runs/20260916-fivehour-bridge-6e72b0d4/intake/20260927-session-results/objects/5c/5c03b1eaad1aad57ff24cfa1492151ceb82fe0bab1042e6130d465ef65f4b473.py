"""Rebuild ONLY this round's certificates in a disposable work copy."""
from __future__ import annotations
import json,time
from pathlib import Path
import algebra,experiments
from core import *
from consume import consume
ROOT=Path(__file__).resolve().parents[1]
SEEDS=[(7,37),(11,101),(27,677),(113,919),(43,137),
       (144918779,434771081),(552336179,1657037321),
       (211,6133),(25,107),(841,42083)]

def actual_certificate():
    out=[]
    for P,Q in SEEDS:
        rr=original_row(P,Q);assert all(rr['two_full_Lucas'])
        ans=consume(P,Q);assert ans['covered_current']
        if P>1000000:
            pp=5
        else:
            pp=None
            # Certify a prime in the ACTUAL third source first, not just its resultant.
            for c in (2,0,1):
                for p,e in factor(rr['n']-c):
                    if p==2 or (p==3 and e==1):continue
                    if binomial_valuation(rr['n'],rr['j'],p)>0:pp=p;break
                if pp is not None:break
        assert pp is not None
        ww=witness(rr['n'],rr['j'],pp)
        out.append(dict(row=rr,consumer=ans['theorem'],sources=sources(rr),witness=ww))
    return dict(count=len(out),nontrivial_power_rows=sum(x['row']['power_P'][1]>1 or x['row']['power_Q'][1]>1 for x in out),
                all_two_complete_Lucas_pass=True,rows=out,status='PASS')

def main():
    start=time.time();rows=experiments.z2_primary();other=experiments.z2_secondary();assert rows==other
    certs=dict(algebra=algebra.run(),small_terminals=experiments.small_terminals(),
       z2_terminal=experiments.z2_certificate(rows),
       independent_terminal=dict(algorithm='Original-P interval traversal, independent LCM arithmetic',
           count=len(other),ledger_sha256=experiments.z2_certificate(other)['ledger_sha256'],status='PASS'),
       weak_capacity=experiments.weak_certificate(),actual_rows=actual_certificate(),
       direct_rows=experiments.direct_checks([(7,37),(11,101),(25,107),(43,137)]))
    for key,value in certs.items():(ROOT/'certificates'/f'{key}.json').write_bytes(canonical(value))
    (ROOT/'certificates'/'z2_terminal_ledger.csv').write_bytes(experiments.ledger_bytes(rows))
    (ROOT/'logs'/'discovery.json').write_bytes(canonical(dict(status='PASS',elapsed_seconds=round(time.time()-start,3),
        certificate_files=len(certs)+1,algebra_identities=certs['algebra']['identity_count'],z2_rows=len(rows),
        actual_rows=certs['actual_rows']['count'],direct_pairs=certs['direct_rows']['total_pairs'],
        old_P_le_1000_shell_replayed=False,old_m2_or_zero_terminals_replayed=False)))
    print((ROOT/'logs'/'discovery.json').read_text())
if __name__=='__main__':main()
