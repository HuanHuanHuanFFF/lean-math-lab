#!/usr/bin/env python3
"""Replay the next-gate COUNTERFACTUAL diagnostic; no geometric exclusion claimed."""
from pathlib import Path
from collections import Counter
import argparse,json
ap=argparse.ArgumentParser();ap.add_argument('--certificates',type=Path,required=True);ap.add_argument('--out',type=Path,required=True);a=ap.parse_args()
groups=[]
for line in (a.certificates/'ledger/remaining_h117_conditional_cpp.txt').read_text().splitlines():
    v=list(map(int,line.split()));assert len(v)==58
    if v[0]!=1701:continue
    g=tuple(tuple(v[2+7*k:9+7*k]) for k in range(8))
    assert sum(x[0] for x in g)==v[1];groups.append(g)
assert len(groups)==34 and len(set(groups))==34
C=(0,0,4,1,8,13)
assert all(tuple(sum(x[j+1]for x in g)for j in range(6))==C for g in groups)
T11=(11,0,0,2,1,0,0)
noT=[g for g in groups if T11 not in g];assert len(noT)==3
late=[(10,0,0,0,0,4,0),(10,0,0,0,0,2,2),(10,0,0,0,0,0,4)]
records=[]
for ix,g in enumerate(groups):
    cnt=sum(x in late for x in g);e=sum(x[0]for x in g)
    assert cnt>0 and e+cnt>=119
    records.append({'index':ix,'proxy_degree':e,'late_three_count':cnt,'if_all_late_actual_degrees_ge11':e+cnt})
common=set(groups[0])
for g in groups:common.intersection_update(g)
result={'state':1701,'active_T11_precondition_proved_this_round':True,'complete_groups':34,'all_saturated':True,
        'no_T_groups':noT,'no_single_common_numeric_type':not common,'late_three_numeric_types':late,
        'counterfactual_minimum':min(r['if_all_late_actual_degrees_ge11']for r in records),
        'checks':records,'new_geometric_exclusion_proved':False,
        'required_next_test':'exclude q=10 at the three exact true costs; keep all delta/kappa splits, including quadratic remainders'}
a.out.write_text(json.dumps(result,indent=2,ensure_ascii=False)+'\n')
print('PASS_COUNTERFACTUAL_ONLY state1701 groups34 noT3 all_saturated minimum119; no new geometric claim')
