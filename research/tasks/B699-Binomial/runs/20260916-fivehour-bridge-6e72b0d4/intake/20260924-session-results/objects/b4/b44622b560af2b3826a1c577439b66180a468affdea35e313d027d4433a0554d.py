#!/usr/bin/env python3
from __future__ import annotations
import json,sys
from pathlib import Path
from fractions import Fraction as F
import ledger_core as L
import moment_core as M

def compact(path):
    z={}
    for e,c,name,d,k in path:
        key=(name,e,c,d,k);z[key]=z.get(key,0)+1
    return [dict(name=k[0],e=k[1],cost=list(k[2]),delta=list(k[3]),kappa=list(k[4]),count=v)
            for k,v in sorted(z.items())]

def aggregate_map(raw,n,cap,available,reverse=False):
    items=list(reversed(raw)) if reverse else list(raw)
    cur={((0,)*6,(0,)*6):(0,[])}
    for _ in range(n):
        nxt={}
        for (D,K),(deg,path) in cur.items():
            used=tuple(2*D[i]+K[i] for i in range(6))
            for item in items:
                e,c,name,d,k=item;nd=deg+e
                if nd>available or any(used[i]+c[i]>cap[i] for i in range(6)):continue
                DD=tuple(D[i]+d[i] for i in range(6));KK=tuple(K[i]+k[i] for i in range(6));key=(DD,KK)
                old=nxt.get(key)
                if old is None or nd<old[0]:nxt[key]=(nd,path+[item])
        cur=nxt
    return cur

def analyze_model(label,raw,kept,current_mins):
    out=[]
    for qi,q in enumerate(L.QUERIES):
        A=aggregate_map(raw,q['remaining'],q['cap'],q['available'],False)
        B=aggregate_map(raw,q['remaining'],q['cap'],q['available'],True)
        assert {k:v[0] for k,v in A.items()}=={k:v[0] for k,v in B.items()}
        tests=[]
        for (D,K),(deg,path) in A.items():
            cost=tuple(2*D[i]+K[i] for i in range(6))
            assert cost==q['cap'] # exact-cap phenomenon on every feasible aggregate
            rows=M.row_model(L.STATES[q['state']],q['winner'],list(D),list(K))
            first=M.first_moment(rows);second=M.first_second_moment(rows)
            assert (not first['compatible']) <= (not second['compatible'])
            tests.append(dict(degree=deg,delta=list(D),kappa=list(K),cost=list(cost),
                              first_moment=first,first_second_moment=second,witness=compact(path),
                              fixed_row_summaries=[dict(r=z['r'],free=z['free_count'],fixed_e1=M.fmt(z['fixed_e1']),fixed_e2=M.fmt(z['fixed_e2'])) for z in rows]))
        first_ok=[x for x in tests if x['first_moment']['compatible']]
        second_ok=[x for x in tests if x['first_second_moment']['compatible']]
        assert second_ok
        best=min(second_ok,key=lambda x:x['degree'])
        out.append(dict(query_index=qi,state=q['state'],special_S5=q['winner'],remaining_factor_count=q['remaining'],
                        capacity=list(q['cap']),available_X=q['available'],baseline_min=current_mins[qi],
                        aggregate_count=len(tests),first_moment_rejections=sum(not x['first_moment']['compatible'] for x in tests),
                        additional_second_moment_rejections=sum(x['first_moment']['compatible'] and not x['first_second_moment']['compatible'] for x in tests),
                        moment_aware_min=best['degree'],gain_over_baseline=best['degree']-current_mins[qi],
                        final_slack=q['available']-best['degree'],best_aggregate=best,
                        aggregates=sorted(tests,key=lambda x:(x['degree'],x['delta'],x['kappa']))))
    states=[]
    for name in L.STATES:
        qs=[x for x in out if x['state']==name]
        states.append(dict(state=name,query_count=len(qs),survives=any(x['moment_aware_min']<=x['available_X'] for x in qs),
                           best_slack=max(x['final_slack'] for x in qs)))
    return dict(label=label,raw_signature_count=len(raw),pareto_signature_count=len(kept),
                reverse_order_crosscheck=True,query_count=len(out),aggregate_count=sum(x['aggregate_count'] for x in out),
                first_moment_rejections=sum(x['first_moment_rejections'] for x in out),
                additional_second_moment_rejections=sum(x['additional_second_moment_rejections'] for x in out),
                queries_with_minimum_increase=sum(x['gain_over_baseline']>0 for x in out),
                state_count=len(states),states_eliminated=sum(not x['survives'] for x in states),states=states,queries=out)

def rank(A):
    A=[list(map(F,row)) for row in A];m=len(A);n=len(A[0]);r=0
    for c in range(n):
        p=next((i for i in range(r,m) if A[i][c]),None)
        if p is None:continue
        A[r],A[p]=A[p],A[r];z=A[r][c];A[r]=[x/z for x in A[r]]
        for i in range(m):
            if i!=r and A[i][c]:
                z=A[i][c];A[i]=[a-z*b for a,b in zip(A[i],A[r])]
        r+=1
    return r

def main(dst):
    dst=Path(dst);dst.mkdir(parents=True,exist_ok=True)
    cr,ck=L.current_signatures();hr,hk=L.ksat2_31_signatures()
    cf=L.bellman(tuple(ck));hf=L.bellman(tuple(hk))
    gains=[];current_mins=[];hyp_mins=[]
    for q in L.QUERIES:
        cm,cp=cf(q['remaining'],q['cap']);hm,hp=hf(q['remaining'],q['cap'])
        assert cm==q['frozen_current_min'];assert hm<=q['available']
        current_mins.append(cm);hyp_mins.append(hm)
        gains.append(dict(state=q['state'],special_S5=q['winner'],available_X=q['available'],
                          current_min=cm,ksat2_31_min=hm,gain=hm-cm,current_slack=q['available']-cm,
                          ksat2_31_slack=q['available']-hm,current_witness=compact(cp),ksat2_31_witness=compact(hp)))
    kpay=dict(status='PASS_CONDITIONAL_KSAT2_31_PAYOFF',gate_proved_here=False,
              interpretation='Assume only q=31 gains total kappa>=2; q=32..36 keeps one-kappa; q>=37 remains free.',
              queries_checked=12,queries_raised=sum(x['gain']>0 for x in gains),states_eliminated=0,gains=gains)
    current=analyze_model('current proved signature ledger plus post-Bellman TRACE',cr,ck,current_mins)
    hyp=analyze_model('conditional KSAT2(31) ledger plus post-Bellman TRACE',hr,hk,hyp_mins)
    # X^(h-3) coefficient has degree <=6. Six evaluations impose no relation.
    V=[[F(r)**j for j in range(7)] for r in range(3,9)];vr=rank(V);assert vr==6
    summary=dict(status='PASS_PROA_KSAT2_31_POSTTRACE_ROUND',
                 actual_state_eliminations=0,
                 actual_infinite_resource_aggregate_branches_eliminated=current['first_moment_rejections'],
                 actual_query_minimum_increases=current['queries_with_minimum_increase'],
                 conditional_ksat2_31_state_eliminations=0,
                 conditional_ksat2_31_queries_raised=kpay['queries_raised'],
                 second_moment_additional_rejections=current['additional_second_moment_rejections'],
                 x_h_minus_3_value_only_rank=vr,
                 x_h_minus_3_value_only_conclusion='no obstruction: any six values interpolate with degree <=5 <=6',
                 cover9_preserved=True,cover8_proved=False,
                 current_states_remaining=[x['state'] for x in current['states'] if x['survives']])
    (dst/'ksat2_31_payoff.json').write_text(json.dumps(kpay,indent=2)+'\n')
    (dst/'current_posttrace.json').write_text(json.dumps(current,indent=2)+'\n')
    (dst/'conditional_ksat2_31_posttrace.json').write_text(json.dumps(hyp,indent=2)+'\n')
    (dst/'summary.json').write_text(json.dumps(summary,indent=2)+'\n')
    print(json.dumps(summary,indent=2))
    for x in current['queries']:
        print('CURRENT',x['state'],x['special_S5'],'agg',x['aggregate_count'],'reject',x['first_moment_rejections'],
              'min',x['baseline_min'],'->',x['moment_aware_min'],'slack',x['final_slack'])
    for x in gains:
        if x['gain']:print('KSAT2_GAIN',x['state'],x['special_S5'],x['current_min'],'->',x['ksat2_31_min'])
if __name__=='__main__':main(sys.argv[1])
