#!/usr/bin/env python3
from __future__ import annotations
import json, sys
from collections import Counter
from pathlib import Path

HERE=Path(__file__).resolve().parent
sys.path.insert(0,str(HERE/'baseline'))
import ledger_model as L
import moment_core as M

P5={
    (0,0,0,1,1,0), # Delta6+Delta7, q=5
    (0,1,0,0,0,1), # Delta4+Delta8, q=5
    (0,1,0,1,0,0), # Delta4+Delta6, q=5
}
P67={
    (0,0,0,1,1,0), # Delta6+Delta7, q=6,7
    (0,0,0,1,0,1), # Delta6+Delta8, q=6,7
    (0,0,0,2,0,0), # 2 Delta6, q=6,7
    (0,0,1,0,0,1), # Delta5+Delta8, q=6,7
    (0,1,0,0,0,1), # Delta4+Delta8, q=6,7
}
TARGETS=(589,666,667,672,792)


def strengthened_raw():
    """Use every raw named signature; replace classified zero-kappa signatures
    by a safe signature that charges one kappa at row 8.
    """
    out=[]
    for e,c,name,d,k in L.balanced_signatures():
        d=tuple(d);k=tuple(k)
        forced=(name=='double5' and d in P5 and k==(0,0,0,0,0,0)) or \
               (name=='double67' and d in P67 and k==(0,0,0,0,0,0))
        if forced:
            cc=list(c);cc[5]+=1
            kk=list(k);kk[5]=1
            out.append((e,tuple(cc),name+'_forced_k8',d,tuple(kk)))
        else:
            out.append((e,tuple(c),name,d,k))
    return sorted(set(out))


def compact(path):
    z=Counter((x[2],x[0],tuple(x[1]),tuple(x[3]),tuple(x[4])) for x in path)
    return [dict(name=k[0],e=k[1],cost=list(k[2]),delta=list(k[3]),kappa=list(k[4]),count=v)
            for k,v in sorted(z.items())]


def aggregate_map(st, raw):
    cap=tuple(st['cap']); h=st['h']
    cur={((0,)*6,(0,)*6,0):(0,[])}
    for _ in range(8):
        nxt={}
        for (D,K,s5),(deg,path) in cur.items():
            used=tuple(2*D[i]+K[i] for i in range(6))
            for item in raw:
                e,c,name,d,k=item
                nd=deg+e
                if nd>h or any(used[i]+c[i]>cap[i] for i in range(6)):
                    continue
                DD=tuple(D[i]+d[i] for i in range(6))
                KK=tuple(K[i]+k[i] for i in range(6))
                ss=s5+int(name=='S5')
                key=(DD,KK,ss)
                old=nxt.get(key)
                if old is None or nd<old[0]:
                    nxt[key]=(nd,path+[item])
        cur=nxt
    return cur


def analyse_state(idx, st, raw):
    cap=tuple(st['cap'])
    amap=aggregate_map(st,raw)
    recs=[]
    state_eliminated=True
    for (D,K,s5),(deg,path) in sorted(amap.items(), key=lambda x:(x[1][0],x[0])):
        cost=tuple(2*D[i]+K[i] for i in range(6))
        exact=cost==cap
        rec=dict(degree=deg,special_S5=s5,delta=list(D),kappa=list(K),
                 cost=list(cost),unused_capacity=[cap[i]-cost[i] for i in range(6)],
                 exact_capacity=exact,witness=compact(path))
        if exact:
            residualD=list(D);residualK=list(K)
            residualD[2]-=s5
            residualK[3]-=s5
            assert min(residualD)>=0 and min(residualK)>=0
            rows=M.row_model(st,s5,residualD,residualK)
            first=M.first_moment(rows)
            second=M.first_second_moment(rows)
            rec['first_moment']=first
            rec['first_second_moment']=second
            rec['row_data']=[dict(r=z['r'],free_count=z['free_count'],
                                  fixed_e1=M.fmt(z['fixed_e1']),
                                  fixed_e2=M.fmt(z['fixed_e2']),
                                  fixed_e3=M.fmt(z['fixed_e3'])) for z in rows]
            if second['compatible']:
                state_eliminated=False
        else:
            # Unused capacity may be paid by unselected factors of the same Gbar;
            # the complete row roots are not recoverable from this aggregate alone.
            state_eliminated=False
        recs.append(rec)
    return dict(index=idx,state=st,aggregate_count=len(recs),
                eliminated_by_same_G_moments=state_eliminated,aggregates=recs)


def main(dst):
    dst=Path(dst)
    dst.parent.mkdir(parents=True,exist_ok=True)
    raw=strengthened_raw()
    states=L.all_states()
    results=[analyse_state(i,states[i],raw) for i in TARGETS]
    eliminated=[x['index'] for x in results if x['eliminated_by_same_G_moments']]
    assert eliminated==[589,667,792], eliminated
    assert results[0]['aggregate_count']==1
    assert all(a['exact_capacity'] for a in results[0]['aggregates'])
    summary=dict(status='PASS_TARGETED_SAME_G_FIRST_SECOND_MOMENT',
                 raw_named_signature_count=len(raw),target_indices=list(TARGETS),
                 eliminated_indices=eliminated,
                 retained_boundary_indices=[x['index'] for x in results if not x['eliminated_by_same_G_moments']],
                 consequence='after the strengthened coarse E0 frontier, states 589, 667, 792 are impossible',
                 remaining_E0_states=381,minimum_equality_h=57,maximum_vertical_sum=191)
    dst.write_text(json.dumps(dict(summary=summary,states=results),indent=2)+'\n')
    print(json.dumps(summary,indent=2))

if __name__=='__main__':
    if len(sys.argv)!=2: raise SystemExit('usage: moment_frontier.py OUTPUT.json')
    main(sys.argv[1])
