#!/usr/bin/env python3
from __future__ import annotations
import glob, hashlib, json, os
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]

def readj(path: Path):
    return json.loads(path.read_text())

layers=[]
for rho,nchunks in [(28,32),(29,16),(30,8),(31,4)]:
    fs=sorted((ROOT/'receipts'/f'rho{rho}').glob('chunk_*.json'))
    assert len(fs)==nchunks,(rho,len(fs))
    chunks=[readj(p) for p in fs]
    expect=rows=inrange=passes=maxv=0
    for c in chunks:
        assert c['rho']==rho and c['start']==expect
        assert c['count']>0
        expect+=c['count']; rows+=c['count']
        inrange+=c['inrange']; passes+=c['pass_valbits']
        maxv=max(maxv,c['max_v2R'])
    assert rows==1<<(55-rho)
    layers.append(dict(rho=rho,rows=rows,inrange=inrange,pass_valbits=passes,max_v2R=maxv,chunks=nchunks))

for rho in range(32,56):
    x=readj(ROOT/'receipts'/'single'/f'rho_{rho}.json')
    inrange=x.get('inrange',x.get('range'))
    passes=x.get('pass_valbits',x.get('power128',0))
    maxv=x.get('max_v2R',x.get('maxval'))
    layers.append(dict(rho=rho,rows=x['rows'],inrange=inrange,pass_valbits=passes,max_v2R=maxv,chunks=1))

layers.sort(key=lambda x:x['rho'])
assert [x['rho'] for x in layers]==list(range(28,56))
for x in layers:
    assert x['rows']==1<<(55-x['rho'])
    assert x['pass_valbits']==0
    assert x['max_v2R']<80

summary=readj(ROOT/'certificates'/'campaign_summary.json')
assert summary['total_rows']==sum(x['rows'] for x in layers)==(1<<28)-1
assert summary['total_inrange_roots']==sum(x['inrange'] for x in layers)
assert summary['total_pass_2pow80']==sum(x['pass_valbits'] for x in layers)==0
assert summary['global_max_v2R']==max(x['max_v2R'] for x in layers)==68
for a,b in zip(summary['layers'],layers):
    for k in ('rho','rows','inrange','pass_valbits','max_v2R'):
        assert a[k]==b[k],(k,a,b)

small=readj(ROOT/'certificates'/'fixed_m_small_w.json')
assert len(small['fixed_m'])==132
assert small['fixed_m_max_v2R']==52
assert len(small['small_w'])==129
assert small['small_w_max_v2R']==62
assert small['small_w_pass80']==0

cross=readj(ROOT/'certificates'/'crosscheck_samples.json')
assert cross['status']=='PASS' and cross['samples']==252 and len(cross['rows'])==252

out={
  'status':'PASS',
  'layers':len(layers),
  'total_rows':summary['total_rows'],
  'total_inrange_roots':summary['total_inrange_roots'],
  'global_max_v2R':summary['global_max_v2R'],
  'fixed_m_cases':len(small['fixed_m']),
  'small_w_cases':len(small['small_w']),
  'crosscheck_samples':cross['samples'],
}
print(json.dumps(out,indent=2,sort_keys=True))
