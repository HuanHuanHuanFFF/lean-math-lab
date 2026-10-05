from pathlib import Path
import json,importlib.util,functools,time,hashlib
ROOT=Path.cwd();RUN=ROOT/'research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702';C=RUN/'continuations/20261004-onehour';p=RUN/'experiments/a/resource_model.py';spec=importlib.util.spec_from_file_location('base_resource',p);m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m)
start=time.monotonic();raw,sigs=m.signatures();ss=json.loads((RUN/'experiments/a/final-row-frontier.json').read_text())['E1']
@functools.lru_cache(None)
def best(n,c):
 if n==0:return 0
 if time.monotonic()-start>90:raise RuntimeError('checkpoint; no infeasibility result')
 return min((s[0]+best(n-1,tuple(y-x for x,y in zip(s[1:],c))) for s in sigs if all(x<=y for x,y in zip(s[1:],c))),default=10**6)
positives=[(7,(0,)*6)]
for r in range(6):
 c=[0]*6;c[r]=1 if r%2 else 2;positives.append((4,tuple(c)))
for c in m.under(2):
 if sum(c)==2 and all(c[r]%2==0 for r in (0,2,4)):positives.append((3,c))
res=[]
for st in ss:
 options=[]
 for q,c in positives:
  if all(a<=b for a,b in zip(c,st['cap'])):
   mn=q+best(6,tuple(b-a for a,b in zip(c,st['cap'])));options.append(dict(q_proxy=q,c=c,min_total_degree=mn))
 mn=min(x['min_total_degree'] for x in options);res.append(dict(**st,new_min_degree=mn,all_options=options,survives_odd6=mn<=st['h']))
source_removed=[1583,1585,1588,1592];dead=[x['idx'] for x in res if not x['survives_odd6']];after=[x for x in res if x['survives_odd6'] and x['idx'] not in source_removed]
o=dict(scope='author exact necessary E1 ledger, conditional on adopted balanced table and candidate ODD-SAT6; no actual curve/NC claim',source_table_sha=m.TABLE_SHA,starting_E1=58,ODD6_removed=dead,E1_after_ODD6=sum(x['survives_odd6'] for x in res),full_source_zero_states=source_removed,remaining_E1_count=len(after),remaining_min_h=min(x['h'] for x in after),states=res,seconds=round(time.monotonic()-start,3))
(C/'experiments/main/odd6-budget.json').write_text(json.dumps(o,indent=2)+'\n');print(json.dumps({k:v for k,v in o.items() if k!='states'}))
# Exact integral pure-line witness for sharp D315.
t=(3,1,1,2,10,5,0,0,0);v=(72,54,43,37,33,32);orders=[]
for r,(off,diag) in enumerate(zip(m.OFF,m.DIAG),3):
 for a in range(r//2+1):
  got=v[r-3]+t[a]+t[r-a];need=diag if 2*a==r else off[a];assert got>=need;orders.append([r,a,need,got])
assert 2*sum(t)+sum(v)==315
(C/'experiments/main/source-line-integer315.json').write_text(json.dumps(dict(t=t,v=v,D=315,source_orders=orders),indent=2)+'\n');print('integer D315 witness verified at all21 sources')
