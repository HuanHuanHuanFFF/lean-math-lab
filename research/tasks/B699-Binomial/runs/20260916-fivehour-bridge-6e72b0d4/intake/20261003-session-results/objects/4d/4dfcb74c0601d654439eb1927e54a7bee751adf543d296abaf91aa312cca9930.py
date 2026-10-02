import json,math,sys,itertools
from pathlib import Path
sys.path.insert(0,'/mnt/data/B699-C-R11-EIGHTJET-CONTENT012-20261003/code');import verify as v
root=Path('/mnt/data/B699-C-R11-EIGHTJET-CONTENT012-20261003');R=json.loads((root/'inputs/RESIDUAL_ANALYSIS_NOT_ADDITIONAL_CLOSURE.json').read_text());seed=json.loads((root/'inputs/EIGHT_SOURCE_KERNELS.json').read_text());meta={m['a']:m for m in seed['classes']}
def divs(x):
 out=[]
 for d in range(1,math.isqrt(x)+1):
  if x%d==0:out.append(d);out.extend([] if d*d==x else [x//d])
 return sorted(out)
cache={};closed=[]
for r in R:
 if not r.get('q2_divides'):continue
 H=math.lcm(*(v.rough235(x) for x in r['source2_gcd_values'])); a=r['a'];m=meta[a];p=m['p012'][2];k=m['kappa012'][2];emin=3 if p==2 else 2;per={2:60,3:20,5:6}[p]
 ds=cache.setdefault(H,divs(H));cand=[]
 for q2 in ds:
  if q2==1:continue
  for e in range(emin,emin+per):
   if (2+k*pow(p,e,1800)*q2)%1800==a:cand.append([q2,e,per])
 r['exact_q2_lcm']=H;r['power_recovery']=cand
 if not cand:closed.append((r['id'],a))
print('new closed cells',len(closed))
from collections import Counter
print('byclass',Counter(a for _,a in closed))
openold=json.loads((root/'inputs/OPEN_332_CANDIDATES.json').read_text());new=[]
for r in openold:
 opens=[a for a in r['open_classes'] if (r['id'],a) not in closed]
 if opens:new.append((r['id'],opens))
print('remaining labels',len(new),'allclass extra closed',len(openold)-len(new),'remainingcells',sum(len(x) for _,x in new))
print('E0956',[(x['a'],x.get('exact_q2_lcm'),x.get('power_recovery')) for x in R if x['id']=='E0956'])
(root/'discovery/PERIOD_RETURN_DISCOVERY.json').write_text(json.dumps({'closed':closed,'analysis':R},sort_keys=True,separators=(',',':'))+'\n')
