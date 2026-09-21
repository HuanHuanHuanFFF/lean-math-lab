"""Same-G COVER9 proof by exact resource signatures, all vertical states.
The C++ geometry certificates provide KNEAR16..24, KSAT25..28 and TRIPLE45.
Frozen GAMMA5/TAIL567 and actual B22/S/L signatures are used as stated.
"""
import itertools,json,time
from functools import lru_cache
from pathlib import Path
import source_model as model
ROOT=Path(__file__).resolve().parents[1]

def compositions(n,k):
    if k==1:
        yield (n,);return
    for a in range(n+1):
        for b in compositions(n-a,k-1):yield (a,)+b

def signatures():
    out=[]
    def add(name,e,d,k=(0,0,0)):
        kk=(0,k[0],0,k[1],0,k[2]);c=tuple(2*a+b for a,b in zip(d,kk))
        out.append((e,c,name,tuple(d),kk))
    for d in compositions(4,6):add('defect_ge4',4,d)
    for d in compositions(3,6):
        if sum(d[:4]):add('triple_low_early',4,d)
        else:
            for k in [(1,0,0),(0,1,0),(0,0,1)]:add('triple_low_kappa',4,d,k)
        add('triple_degree_ge6',6,d)
    for d in compositions(2,6):
        for a,b in itertools.product(range(2),repeat=2):
            if d[0]+d[1]+d[4]+a>=1 and sum(d[:4])+a+b>=1:add('double5',5,d,(a,b,0))
            if sum(d[:4])+a+b>=1:add('double67',6,d,(a,b,0))
        add('double_ge8',8,d)
    for r in range(6):
        d=tuple(int(i==r) for i in range(6))
        if r<3:add('near16_24_early',16,d)
        else:
            for k in [(1,0,0),(0,1,0),(0,0,1)]:add('near16_24_kappa',16,d,k)
        add('near25_28',25,d)
    for k in [(1,0,0),(0,1,0),(0,0,1)]:add('saturated25_28_kappa',25,(0,)*6,k)
    add('free_degree_ge29',29,(0,)*6)
    raw=sorted(set(out));kept=[]
    for a in raw:
        if any(b[0]<=a[0] and all(x<=y for x,y in zip(b[1],a[1])) for b in kept):continue
        kept.append(a)
    # Each deletion is justified by an actually retained weakly cheaper signature.
    assert all(any(b[0]<=a[0] and all(x<=y for x,y in zip(b[1],a[1])) for b in kept) for a in raw)
    return raw,kept
RAW,ITEMS=signatures()
@lru_cache(None)
def minimum_degree(n,cap):
    if n==0:return 0
    best=29*n
    for e,c,*_ in ITEMS:
        if e+4*(n-1)>=best:continue
        if all(a<=b for a,b in zip(c,cap)):
            best=min(best,e+minimum_degree(n-1,tuple(b-a for a,b in zip(c,cap))))
    return best
@lru_cache(None)
def raw_minimum(n,cap):
    # No Pareto deletion, reversed order, independent Bellman evaluation.
    if not n:return 0
    ans=29*n
    for e,c,*_ in reversed(RAW):
        if all(c[i]<=cap[i] for i in range(6)):
            ans=min(ans,e+raw_minimum(n-1,tuple(cap[i]-c[i] for i in range(6))))
    return ans

def state_check(st,target=10,cross=True):
    cap0=tuple(2*d+p for d,p in zip(st['d'],st['p']))
    active=[t for t in model.types if all(a<=b for a,b in zip(t['cost'],cap0))]
    checked=[];winners=[];leaves=0;trace_reject=0;cheap_reject=0
    def visit(index,h,cap,n,delta,kappa,extra,chosen):
        nonlocal leaves,trace_reject,cheap_reject
        if index==len(active):
            leaves+=1
            ok,pts=model.trace(st,delta,kappa,extra,1)
            if not ok:trace_reject+=1;return
            upper,_=model.rest_counts(h,sum(c//2 for c in cap),cap[0]+cap[1]+cap[4],sum(cap[:4]),True)
            if n+upper<target:cheap_reject+=1;return
            need=minimum_degree(target-n,cap)
            if cross:assert raw_minimum(target-n,cap)==need
            rec=dict(special=chosen,remaining_count=target-n,capacity=cap,
                     minimum_X=need,available_X=h,trace_rows=pts)
            checked.append(rec)
            if need<=h:winners.append(rec)
            return
        t=active[index];maximum=min([h//t['e'],target-n]+[c//v for c,v in zip(cap,t['cost']) if v])
        for k in range(maximum+1):
            dd=[a+k*b for a,b in zip(delta,t['delta'])]
            kk=[a+k*b for a,b in zip(kappa,t['kappa'])]
            ee=[a if not k else None if a is None or b is None else a+k*b for a,b in zip(extra,t['extra'])]
            visit(index+1,h-k*t['e'],tuple(a-k*b for a,b in zip(cap,t['cost'])),n+k,dd,kk,ee,
                  chosen+([(t['name'],k)] if k else []))
    visit(0,st['h'],cap0,0,[0]*6,[0]*6,[0]*6,[])
    return dict(**st,target=target,special_leaves=leaves,trace_rejections=trace_reject,
                cheap_bound_rejections=cheap_reject,exact_queries=checked,winners=winners)

def run(out):
    out=Path(out);states=model.all_states();assert len(states)==2035
    ans=[]
    for st in states:
        if st['E']:
            ans.append(dict(**st,upper_bound=9,basis='frozen_positive_E_bound'))
        else:
            rec=state_check(st,10,True)
            if rec['winners']:raise AssertionError(('TEN_SURVIVES',rec))
            rec['upper_bound']=9;rec['basis']='new_no_ten_signature_ledger';ans.append(rec)
    # Find a surviving nine-factor resource model; this is not an actual G.
    nine=None
    for st in reversed(states):
        if not st['E']:
            z=state_check(st,9,False)
            if z['winners']:
                nine=dict(state={k:st[k] for k in ['h','v','E','d','p']},record=z['winners'][0]);break
    assert nine is not None
    queries=sum(len(x.get('exact_queries',[])) for x in ans)
    result=dict(status='PASS_NEW_SAME_G_COVER9',upper_bound=9,states=2035,E0_states=1540,
                positive_E_states=495,remaining_ten_states=0,exact_signature_queries=queries,
                raw_signature_count=len(RAW),pareto_signature_count=len(ITEMS),
                special_leaves=sum(x.get('special_leaves',0) for x in ans),
                trace_rejections=sum(x.get('trace_rejections',0) for x in ans),
                all_queries_match_raw_signatures=True,nine_relaxation=nine,
                does_not_prove_EDGE9=True,raw_signatures=RAW,retained_signatures=ITEMS)
    assert sum(bool(x['E']) for x in states)==result['positive_E_states']
    (out/'ledger.json').write_text(json.dumps(result,indent=2)+'\n')
    (out/'all_state_receipts.json').write_text(json.dumps(ans,indent=2)+'\n')
    print(result['status'],'states2035 E0=1540 positiveE=495 queries',queries,flush=True)
    return result
if __name__=='__main__':
    import sys
    run(sys.argv[1])
