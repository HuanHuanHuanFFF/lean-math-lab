#!/usr/bin/env python3
from __future__ import annotations
import json,sys
from pathlib import Path
HERE=Path(__file__).resolve().parent
sys.path.insert(0,str(HERE/'baseline'))
import ledger_core as L
import moment_core as M
import research_round as R
D=(1,3,5)

def signatures():
    raw=[]
    for x in L.base_signatures():
        if x[2]=='saturated25_28_kappa':
            # Proved KSAT^2 for q=25..31.  Charging every such factor by e>=25
            # is deliberately weaker than its true degree and hence safe.
            for a in range(3):
                for b in range(a,3):
                    c=[0]*6;c[D[a]]+=1;c[D[b]]+=1
                    raw.append((25,tuple(c),'sat25_31_kappa2',(0,)*6,tuple(c)))
        elif x[2]=='free_degree_ge29':
            # Proved KSAT for q=32..42 after q31 moved to the kappa>=2 class.
            for idx in D:
                c=[0]*6;c[idx]=1
                raw.append((32,tuple(c),'sat32_42_kappa1',(0,)*6,tuple(c)))
            raw.append((43,(0,)*6,'free_degree_ge43',(0,)*6,(0,)*6))
        else:
            raw.append(x)
    return L.pareto(raw)

def compact(path):
    z={}
    for e,c,name,d,k in path:
        key=(name,e,c,d,k);z[key]=z.get(key,0)+1
    return [dict(name=k[0],e=k[1],cost=list(k[2]),delta=list(k[3]),kappa=list(k[4]),count=v)
            for k,v in sorted(z.items())]

def main(out):
    out=Path(out);out.parent.mkdir(parents=True,exist_ok=True)
    raw,kept=signatures()
    queries=[]
    for qi,q in enumerate(L.QUERIES):
        A=R.aggregate_map(raw,q['remaining'],q['cap'],q['available'],False)
        B=R.aggregate_map(raw,q['remaining'],q['cap'],q['available'],True)
        assert {k:v[0] for k,v in A.items()}=={k:v[0] for k,v in B.items()}
        tests=[]
        for (DD,KK),(deg,path) in A.items():
            cost=tuple(2*DD[i]+KK[i] for i in range(6))
            assert cost==q['cap']
            rows=M.row_model(L.STATES[q['state']],q['winner'],list(DD),list(KK))
            first=M.first_moment(rows);second=M.first_second_moment(rows)
            tests.append(dict(degree=deg,delta=list(DD),kappa=list(KK),cost=list(cost),
                              first_moment=first,first_second_moment=second,witness=compact(path)))
        good=[x for x in tests if x['first_second_moment']['compatible']]
        best=min((x['degree'] for x in good),default=None)
        queries.append(dict(query_index=qi,state=q['state'],special_S5=q['winner'],
                            remaining_factor_count=q['remaining'],capacity=list(q['cap']),
                            available_X=q['available'],aggregate_count=len(tests),
                            compatible_aggregate_count=len(good),minimum_X=best,
                            survives=best is not None and best<=q['available'],
                            aggregates=sorted(tests,key=lambda x:(x['degree'],x['delta'],x['kappa']))))
    states=[]
    for s in L.STATES:
        qq=[x for x in queries if x['state']==s]
        states.append(dict(state=s,survives=any(x['survives'] for x in qq),
                           queries=[dict(special_S5=x['special_S5'],aggregate_count=x['aggregate_count'],
                                         compatible_aggregate_count=x['compatible_aggregate_count'],
                                         minimum_X=x['minimum_X'],available_X=x['available_X']) for x in qq]))
    assert all(not x['survives'] for x in states)
    result=dict(status='PASS_SAME_G_COVER8_LEDGER',
                adopted_new_gates=['KSAT2_31','KSAT37','KSAT38','KSAT39','KSAT40','KSAT41','KSAT42'],
                frozen_complete_frontier_states=6,frozen_terminal_queries=12,
                raw_signature_count=len(raw),pareto_signature_count=len(kept),
                reverse_order_crosscheck=True,states=states,queries=queries,
                remaining_nine_factor_states=0,
                conclusion='same fixed G has at most 8 distinct loadable Q-irreducible factors',
                COVER8_proved=True)
    out.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({k:result[k] for k in ['status','remaining_nine_factor_states','conclusion','COVER8_proved']},indent=2))
    for x in queries:
        print(x['state'],'S5',x['special_S5'],'aggregates',x['aggregate_count'],'compatible',x['compatible_aggregate_count'],'minimum',x['minimum_X'],'available',x['available_X'])
if __name__=='__main__':main(sys.argv[1])
