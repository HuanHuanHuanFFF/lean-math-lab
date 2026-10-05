from pathlib import Path
import json,hashlib,time
from functools import lru_cache
from itertools import product
C=Path(__file__).resolve().parents[2];R=C.parents[1];ROOT=R.parents[4];O=Path(__file__).resolve().parent
t0=time.monotonic()
table=ROOT/'research/tasks/B699-Binomial/runs/20260916-fivehour-bridge-6e72b0d4/intake/20260927-session-results/objects/cf/cfdbdcff9aa376b12c7ae57e27534a4b635b5b966b247e3157c4a18c67e4e553.txt'
data=table.read_bytes();assert hashlib.sha256(data).hexdigest()=='cfdbdcff9aa376b12c7ae57e27534a4b635b5b966b247e3157c4a18c67e4e553'
raw=[tuple(map(int,x.split())) for x in data.decode().splitlines()];assert len(raw)==649 and all(len(x)==7 for x in raw)
# Independently eliminate only componentwise dominated signatures.
unique=sorted(set(raw));sigs=[a for a in unique if not any(b!=a and all(x<=y for x,y in zip(b,a)) for b in unique)]
assert all(any(all(x<=y for x,y in zip(b,a)) for b in sigs) for a in raw)
states=json.loads((R/'experiments/a/final-row-frontier.json').read_text())['E1']
expected=json.loads((C/'experiments/main/odd6-budget.json').read_text())
assert len(states)==58 and len({s['idx'] for s in states})==58
# All small proxies are generated independently by a Cartesian box, not author's composition helper.
proxies=[(7,(0,)*6)]
for row in range(6):
    c=[0]*6;c[row]=2 if row in (0,2,4) else 1;proxies.append((4,tuple(c)))
proxies += [(3,c) for c in product(range(3),repeat=6) if sum(c)==2 and all(c[r]%2==0 for r in (0,2,4))]
assert len(proxies)==16 and len(set(proxies))==16
@lru_cache(None)
def six_min(cap):
    if time.monotonic()-t0>90:raise RuntimeError('checkpoint; computation not complete')
    usable=[a for a in sigs if all(x<=y for x,y in zip(a[1:],cap))]
    dp={(0,)*6:0}
    for count in range(6):
        nxt={}
        for used,total in dp.items():
            for item in usable:
                c=tuple(a+b for a,b in zip(used,item[1:]))
                if any(x>y for x,y in zip(c,cap)):continue
                d=total+item[0]
                if d<nxt.get(c,1000000):nxt[c]=d
        dp=nxt
    return min(dp.values(),default=1000000)
OFF=((77,74),(67,57),(51,54,46),(40,43,48),(31,34,39,45),(25,28,33,39))
DIAG=(0,56,0,41,0,52)
actual=[]
for st in states:
    assert 305-2*st['h']-sum(st['v'])==1
    assert st['cap']==[2*st['h']-2*sum(max(a-st['v'][r],0) for a in OFF[r])-max(DIAG[r]-st['v'][r],0) for r in range(6)]
    opts=[]
    for q,c in proxies:
        if all(x<=y for x,y in zip(c,st['cap'])):
            opts.append(dict(q_proxy=q,c=list(c),min_total_degree=q+six_min(tuple(y-x for x,y in zip(c,st['cap'])))))
    n=min(a['min_total_degree'] for a in opts)
    actual.append(dict(idx=st['idx'],h=st['h'],cap=st['cap'],new_min_degree=n,all_options=opts,survives_odd6=n<=st['h']))
expected_map={a['idx']:a for a in expected['states']}
assert set(expected_map)=={s['idx'] for s in states}
for s in actual:
    exp=expected_map[s['idx']]
    for k in ('h','cap','new_min_degree','survives_odd6'):assert s[k]==exp[k],(s['idx'],k)
    assert sorted(s['all_options'],key=lambda a:(a['q_proxy'],a['c']))==sorted(exp['all_options'],key=lambda a:(a['q_proxy'],a['c']))
dead=[s['idx'] for s in actual if not s['survives_odd6']]
source_dead={1583,1585,1588,1592};assert not source_dead.intersection(dead)
after=[s for s in actual if s['survives_odd6'] and s['idx'] not in source_dead]
assert dead==[1642,1743,1827] and len(after)==51 and min(s['h'] for s in after)==110
out=dict(scope='Independent iterative min-plus check of given58 E1 necessary table and given global649 balanced signatures; safety of historical interfaces remains adopted',raw_signatures=649,pareto_signatures=len(sigs),positive_proxy_count=len(proxies),removed_odd6=dead,removed_source4=sorted(source_dead),remaining=51,minimum_h=110,seconds=round(time.monotonic()-t0,3),cache=six_min.cache_info()._asdict(),states=actual)
(O/'independent-budget-result.json').write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps({k:v for k,v in out.items() if k!='states'}))


