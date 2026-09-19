#!/usr/bin/env python3
"""Small exact checks of the stated method boundaries, not original NC examples."""
import argparse,json,math
from itertools import combinations
from collections import Counter
from pathlib import Path

def check():
    rows=range(3,9)
    hits={t:{(r,t*(r-t)) for r in rows} for t in range(4)}
    unions=[len(set().union(*(hits[t] for t in ts))) for ts in combinations(range(4),3)]
    assert unions==[17,16,16,15]
    assert len(set().union(*hits.values()))==20
    exponents=(6,5,5,4)
    mults={r:Counter() for r in rows}
    for r in rows:
        for t,e in enumerate(exponents):mults[r][t*(r-t)]+=e
    scores=[sum(mults[r][t*(r-t)] for r in rows) for t in range(5)]
    assert scores==[40,39,39,40,20]
    assert all(sum(mm.values())==20 for mm in mults.values())
    counts={str(q):{'all':math.comb(q+3,3),'z14':4*math.comb(q-1,2)+math.comb(q-1,3)} for q in range(10,14)}
    assert [counts[str(q)]['z14'] for q in range(10,14)]==[228,300,385,484]
    # W'(r)=product_{s!=r}(r-s) is nonzero: W+X^3 has ordinary order 1 at (r,0).
    deriv=[math.prod(r-s for s in rows if s!=r) for r in rows]
    assert all(deriv)
    return {'status':'PASS_SMALL_METHOD_BOUNDARIES','three_line_unions':unions,'four_line_union':20,'q20_saturated_reducible_boundary':{'exponents':exponents,'line_scores':scores,'D':40,'mu':120,'z':20},'strict_root_count_boundary':{'H':'W(N)+X^3','ordinary_source_orders_on_X0':[1]*6,'D':6,'S0':6,'restriction':'W != 0','W_derivatives_at_rows':deriv},'counts':counts,'not_original_NC_counterexamples':True}

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);a=ap.parse_args()
    if a.out.exists():raise SystemExit('Output must not already exist.')
    result=check();a.out.write_text(json.dumps(result,indent=2)+'\n');print(result['status'])
