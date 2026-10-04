"""Exact necessary-resource relaxation for seven loadable fixed-G factors.
No Lean or CAS invocation. Read frozen table; write only explicitly supplied output.
"""
from pathlib import Path
from collections import Counter
from functools import lru_cache
import json, hashlib, time, sys

ROOT=Path(__file__).resolve().parents[7]
TABLE=ROOT/'research/tasks/B699-Binomial/runs/20260916-fivehour-bridge-6e72b0d4/intake/20260927-session-results/objects/cf/cfdbdcff9aa376b12c7ae57e27534a4b635b5b966b247e3157c4a18c67e4e553.txt'
TABLE_SHA='cfdbdcff9aa376b12c7ae57e27534a4b635b5b966b247e3157c4a18c67e4e553'
OFF=((77,74),(67,57),(51,54,46),(40,43,48),(31,34,39,45),(25,28,33,39))
DIAG=(0,56,0,41,0,52)

def lower(row,v):
    return sum(max(a-v,0) for a in OFF[row])+(max(DIAG[row]-v,0)+1)//2

def under(n,k=6):
    if k==0:
        yield ();return
    for a in range(n+1):
        for b in under(n-a,k-1):yield (a,)+b

def all_states():
    out=[]
    for h in range(153):
        v0=tuple(next(v for v in range(78) if lower(r,v)<=h) for r in range(6))
        budget=305-2*h-sum(v0)
        if budget<0:continue
        for u in under(budget):
            v=tuple(a+b for a,b in zip(v0,u));E=305-2*h-sum(v)
            cap=tuple(2*h-2*sum(max(a-v[r],0) for a in OFF[r])-max(DIAG[r]-v[r],0) for r in range(6))
            assert all(c>=0 for c in cap)
            out.append(dict(idx=len(out),h=h,E=E,v=v,cap=cap))
    return out

def signatures():
    data=TABLE.read_bytes(); assert hashlib.sha256(data).hexdigest()==TABLE_SHA
    raw=[tuple(map(int,l.split())) for l in data.decode().splitlines()]
    assert len(raw)==649 and all(len(x)==7 for x in raw)
    unique=sorted(set(raw));pareto=[]
    for s in unique:
        if not any(all(a<=b for a,b in zip(t,s)) for t in pareto):pareto.append(s)
    assert all(any(all(a<=b for a,b in zip(t,s)) for t in pareto) for s in raw)
    return raw,pareto

def run(include_zero=False):
    start=time.monotonic(); states=all_states();raw,sigs=signatures();calls=0
    @lru_cache(None)
    def best(n,cap):
        nonlocal calls
        if n==0:return 0
        calls+=1
        if calls>350000 or time.monotonic()-start>90:raise RuntimeError('bounded checkpoint reached; not an infeasibility result')
        val=10**6
        for s in sigs:
            if all(x<=y for x,y in zip(s[1:],cap)):
                val=min(val,s[0]+best(n-1,tuple(y-x for x,y in zip(s[1:],cap))))
        return val
    def witness(n,cap):
        ans=[]
        while n:
            target=best(n,cap)
            s=next(s for s in sigs if all(x<=y for x,y in zip(s[1:],cap)) and s[0]+best(n-1,tuple(y-x for x,y in zip(s[1:],cap)))==target)
            ans.append(s);cap=tuple(y-x for x,y in zip(s[1:],cap));n-=1
        return ans
    survivors=[];closed=[]
    for st in sorted(states,key=lambda x:(-x['E'],x['idx'])):
        if not include_zero and not st['E']:continue
        opts=[]
        for a in range(min(7,st['E'])+1):
            m=best(7-a,st['cap'])+3*a
            if m<=st['h']:
                opts.append(dict(positive_count=a,min_degree=m,balanced_proxy_witness=witness(7-a,st['cap'])))
        (survivors if opts else closed).append(dict(**st,options=opts))
    out=dict(scope='necessary seven-factor resource relaxation; positive factors replaced by (q=3,epsilon=1,c=0)',table_sha256=TABLE_SHA,table_rows=len(raw),table_distinct=len(set(raw)),table_pareto=len(sigs),outer_states=len(states),outer_by_E=dict(sorted(Counter(x['E'] for x in states).items())),processed=len(survivors)+len(closed),survivors_by_E=dict(sorted(Counter(x['E'] for x in survivors).items())),survivors=survivors,closed_states=[x['idx'] for x in closed],cache=best.cache_info()._asdict(),seconds=round(time.monotonic()-start,3))
    return out
if __name__=='__main__':
    out=run('--all' in sys.argv)
    path=Path(sys.argv[1]);path.write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({k:v for k,v in out.items() if k not in ('survivors','closed_states')},ensure_ascii=False))
    print('positive sample',next((s for s in out['survivors'] if s['E']>0),None))
