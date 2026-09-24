#!/usr/bin/env python3
from __future__ import annotations
import json,re
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
pat=re.compile(r'rho=(\d+) lo=(\d+) hi=(\d+) count=(\d+) pass80=(\d+) maxv=(\d+) maxm=(\d+) maxw=(\d+)')
rows=[]
for fn in ['layers_12_23.log','layer_24.log','layers_25_27.log']:
    p=ROOT/'outputs'/fn
    for line in p.read_text().splitlines():
        m=pat.search(line)
        if m:
            rho,lo,hi,count,pas,maxv,maxm,maxw=map(int,m.groups())
            assert count==hi-lo and pas==0
            rows.append(dict(rho=rho,lo=lo,hi=hi,count=count,pass80=pas,max_v2R=maxv,max_m=maxm,max_w=maxw,source=fn))
expected={r:27*(2**(r-2)) for r in range(12,28)}
agg={}
for r in range(12,28):
    xs=sorted((x for x in rows if x['rho']==r),key=lambda x:x['lo'])
    assert xs and xs[0]['lo']==0 and xs[-1]['hi']==expected[r]
    for a,b in zip(xs,xs[1:]):assert a['hi']==b['lo']
    assert sum(x['count'] for x in xs)==expected[r]
    best=max(xs,key=lambda x:x['max_v2R'])
    agg[r]={'count':expected[r],'chunks':len(xs),'pass80':0,'max_v2R':best['max_v2R'],'max_m':best['max_m'],'max_w':best['max_w']}
assert sum(x['count'] for x in agg.values())==1811911680
assert max(x['max_v2R'] for x in agg.values())==64
out={'status':'PASS','layers':{str(k):v for k,v in agg.items()},'total_candidates':1811911680,'total_pass80':0,'global_max_v2R':64,'receipt_lines':len(rows)}
(ROOT/'certificates'/'campaign_summary.json').write_text(json.dumps(out,indent=2,sort_keys=True)+'\n')
print(json.dumps({'status':'PASS','layers':len(agg),'total_candidates':out['total_candidates'],'total_pass80':0,'global_max_v2R':64,'receipt_lines':len(rows)},indent=2))
