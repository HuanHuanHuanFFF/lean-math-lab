"""Verify the explicit nine-factor resource witness; it is not a curve or an NC9 point."""
import copy,json,sys
from pathlib import Path
import source_model as model
from cover import RAW,minimum_degree
ROOT=Path(__file__).resolve().parents[1]
def check(cert):
    st=cert['state'];assert st in [{k:s[k] for k in ['h','v','E','d','p']} for s in model.all_states()]
    delta=[0]*6;kappa=[0]*6;extra=[0]*6;cost=0;count=0
    typemap={t['name']:t for t in model.types}
    for name,n in cert['record']['special']:
        assert isinstance(n,int) and n>=1;t=typemap[name];cost+=n*t['e'];count+=n
        delta=[a+n*b for a,b in zip(delta,t['delta'])]
        kappa=[a+n*b for a,b in zip(kappa,t['kappa'])]
        extra=[None if a is None or b is None else a+n*b for a,b in zip(extra,t['extra'])]
    cap=[2*d+p-2*a-b for d,p,a,b in zip(st['d'],st['p'],delta,kappa)]
    assert all(x>=0 for x in cap) and cap==cert['record']['capacity']
    ok,pts=model.trace(st,delta,kappa,extra,1)
    assert ok and [list(t) for t in pts]==cert['record']['trace_rows']
    available=st['h']-cost;assert available==cert['record']['available_X']
    initial=cap.copy();remcost=0
    for w in cert['residual_signature_witness']:
        d=tuple(w['delta']);k=tuple(w['kappa']);c=tuple(2*a+b for a,b in zip(d,k))
        assert (w['e'],c,w['name'],d,k) in RAW
        remcost+=w['e'];count+=1;cap=[a-b for a,b in zip(cap,c)];assert min(cap)>=0
    assert count==9 and cap==cert['remaining_capacity'] and remcost<=available
    assert remcost==cert['record']['minimum_X']==minimum_degree(7,tuple(initial))
    return dict(factor_count=count,X_cost=cost+remcost,h=st['h'],remaining_capacity=cap,
                trace_rows=pts,actual_G_claim=False,NC9_claim=False)
def run(out):
    cert=json.loads((ROOT/'certificates/nine_resource_boundary.json').read_text());answer=check(cert)
    bad1=copy.deepcopy(cert);bad1['residual_signature_witness'][0]['e']=4
    bad2=copy.deepcopy(cert);bad2['record']['trace_rows'][0][1]+=1
    bad3=copy.deepcopy(cert);bad3['state']['h']-=1
    for damaged in [bad1,bad2,bad3]:
        try:check(damaged)
        except (AssertionError,KeyError,ValueError):pass
        else:raise AssertionError('damaged resource witness accepted')
    ans=dict(status='PASS_NINE_RESOURCE_BOUNDARY',witness=answer,damaged_witnesses_rejected=3,
             proves_at_most_eight=False,proves_EDGE9=False)
    (Path(out)/'nine_boundary_acceptance.json').write_text(json.dumps(ans,indent=2)+'\n')
    print(ans['status'],flush=True);return ans
if __name__=='__main__':run(sys.argv[1])
