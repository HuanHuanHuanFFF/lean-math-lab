#!/usr/bin/env python3
"""Independent recursive Bellman check of every positive-E vertical state."""
from __future__ import annotations
import functools,json,sys
from pathlib import Path
HERE=Path(__file__).resolve().parent
sys.path.insert(0,str(HERE))
import ledger_model as M
INF=10**9
items=M.pareto(M.balanced_signatures())
states=M.all_states()

@functools.lru_cache(None)
def solve(n,cap):
    if n==0:return (0,())
    best=(INF,())
    for item in items:
        e,c,*_=item
        if all(c[i]<=cap[i] for i in range(6)):
            z,path=solve(n-1,tuple(cap[i]-c[i] for i in range(6)))
            if e+z<best[0]:best=(e+z,(item,)+path)
    return best

def compact(path):
    z={}
    for e,c,name,d,k in path:
        key=(name,e,c,d,k);z[key]=z.get(key,0)+1
    return [dict(name=k[0],e=k[1],cost=list(k[2]),delta=list(k[3]),kappa=list(k[4]),count=v)
            for k,v in sorted(z.items())]

def main(out):
    positive=[]
    for idx,s in enumerate(states):
        if not s['E']:continue
        cap=tuple(s['cap']);opts=[]
        for A in range(1,min(s['E'],8)+1):
            deg,path=solve(8-A,cap);deg+=3*A
            if deg<=s['h']:
                opts.append(dict(positive_factor_count=A,minimum_degree=deg,
                                 slack=s['h']-deg,balanced_witness=compact(path)))
        if opts:positive.append(dict(index=idx,state=s,options=opts))
    assert [x['index'] for x in positive]==[1980,1999]
    payoff=[]
    for x in positive:
        s=x['state'];cap=tuple(s['cap']);zero_deg,zero_path=solve(7,cap)
        coordinate=[]
        for i,c in enumerate(cap):
            if not c:continue
            cp=list(cap);cp[i]-=1
            deg,path=solve(7,tuple(cp));coordinate.append(dict(row=i+3,
                minimum_total_degree=3+deg,slack=s['h']-(3+deg),balanced_witness=compact(path)))
        payoff.append(dict(index=x['index'],h=s['h'],E=s['E'],capacity=list(cap),
                           zero_source_cost_total=3+zero_deg,
                           zero_source_cost_witness=compact(zero_path),
                           one_source_unit_by_row=coordinate,
                           best_one_source_unit_total=min(y['minimum_total_degree'] for y in coordinate)))
    result=dict(status='PASS_POSITIVE_E_DIRECT_AND_ODD_SOURCE_PAYOFF',
                total_vertical_states=len(states),positive_E_vertical_states=sum(bool(s['E']) for s in states),
                coarse_positive_survivor_count=len(positive),coarse_positive_survivors=positive,
                payoff=payoff,
                conclusion_if_ODD_SAT3_5='no positive-E eight-factor state survives')
    Path(out).write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({'status':result['status'],'indices':[x['index'] for x in positive],
                      'best_one_source_unit_totals':[x['best_one_source_unit_total'] for x in payoff]},sort_keys=True))
if __name__=='__main__':main(sys.argv[1])
