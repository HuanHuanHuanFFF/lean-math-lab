#!/usr/bin/env python3
"""Independent tuple-resource recursion and exact-used-resource forward DP.
Checks every subcapacity at 0..8 factors, without any polynomial geometry routine.
"""
from __future__ import annotations
import itertools,json,sys
from functools import lru_cache
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
INF=10**8

def is_family(name:str)->bool:
    return name in ('S4','S5') or name.startswith('B22_plane')

def check(dst:Path)->dict:
    raw=json.loads((ROOT/'inputs/frozen_signatures.json').read_text())
    cap=(0,3,4,3,4,10);h=111
    active=[(i,x) for i,x in enumerate(raw) if not is_family(x[2]) and all(a<=b for a,b in zip(x[1],cap))]
    # Only identical fees are merged; all source labels remain in the final audit.
    cheapest={}
    for i,(e,c,*rest) in active:
        k=tuple(c)
        if k not in cheapest or e<cheapest[k][0]:cheapest[k]=(e,i)
    grid=list(itertools.product(*(range(x+1) for x in cap)));index={c:i for i,c in enumerate(grid)}
    items=[(c,e,i) for c,(e,i) in sorted(cheapest.items())]
    feasible=[]
    for c in grid:
        feasible.append([(e,index[tuple(a-b for a,b in zip(c,d))],i)for d,e,i in items if all(a>=b for a,b in zip(c,d))])
    @lru_cache(None)
    def rec(n:int,k:int)->int:
        if n==0:return 0
        return min((e+rec(n-1,j)for e,j,_ in feasible[k]),default=INF)
    # exact-used DP uses forward transitions; capacity prefix minima are taken only afterwards.
    exact=[INF]*len(grid);exact[0]=0;tables=[]
    transitions=[[(j,index[tuple(a+b for a,b in zip(c,d))])for j,c in enumerate(grid)if all(a+b<=q for a,b,q in zip(c,d,cap))]for d,e,i in items]
    for n in range(9):
        if n:
            nxt=[INF]*len(grid)
            for (_,e,_),edges in zip(items,transitions):
                for j,k in edges:
                    if exact[j]+e<nxt[k]:nxt[k]=exact[j]+e
            exact=nxt
        pref=exact[:]
        for axis in range(6):
            for j,c in enumerate(grid):
                if c[axis]:
                    d=list(c);d[axis]-=1;k=index[tuple(d)]
                    if pref[k]<pref[j]:pref[j]=pref[k]
        expected=[rec(n,k)for k in range(len(grid))]
        if pref!=expected:raise AssertionError(('independent fee tables disagree',n))
        tables.append(pref)
    audit=[]
    for raw_id,x in active:
        e,c,name,D,K=x;r=tuple(a-b for a,b in zip(cap,c));others=rec(7,index[r]);allowed=e+others<=h
        audit.append(dict(raw_index=raw_id,name=name,degree_fee=e,cost=c,minimum_other_seven=others,feasible=allowed,actual_degree_upper=h-others if allowed else None))
    possible=[a for a in audit if a['feasible']]
    assert rec(8,index[cap])==104 and len(possible)==53
    assert min(a['degree_fee']for a in possible)==5
    assert max(a['actual_degree_upper']for a in possible)==34
    assert min(a['minimum_other_seven']for a in possible)==77
    # Explicit minimum weak-signature witness. This is not a polynomial factorization.
    n=8;k=index[cap];witness=[]
    while n:
        e,j,i=next((e,j,i)for e,j,i in feasible[k]if e+rec(n-1,j)==rec(n,k))
        witness.append(i);n-=1;k=j
    result=dict(status='PASS_INDEPENDENT_STATE1626_RESOURCE_BOUND',state=1626,h=111,capacity=list(cap),subcapacities=len(grid),factor_counts=9,comparisons=9*len(grid),minimum_eight_degree=104,minimum_possible_selected_degree=5,maximum_possible_selected_degree=34,maximum_unselected_quotient_degree=7,feasible_raw_signatures=53,weak_minimum_witness_raw_indices=witness,all_single_signature_audits=audit)
    dst.mkdir(parents=True,exist_ok=True)
    (dst/'state1626_bound.json').write_text(json.dumps(result,ensure_ascii=False,indent=2,sort_keys=True)+'\n')
    (dst/'state1626_fee_tables.json').write_text(json.dumps(dict(cap=list(cap),grid_order='itertools.product; last coordinate fastest',tables=tables),separators=(',',':'))+'\n')
    print(result['status'],result['comparisons'],flush=True)
    return result
if __name__=='__main__':check(Path(sys.argv[1]))
