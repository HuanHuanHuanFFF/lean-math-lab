#!/usr/bin/env python3
"""Regenerate the full rho=28..55 campaign and compare aggregate results.
This is intentionally a full finite campaign (268,435,455 rows), not the quick replay.
"""
from __future__ import annotations
import concurrent.futures, json, os, subprocess, sys, tempfile
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
EVID=ROOT/'evidence'
EXPECTED=json.loads((ROOT/'certificates'/'campaign_summary.json').read_text())
JOBS=max(1,int(os.environ.get('JOBS','8')))

def run(cmd):
    return json.loads(subprocess.check_output(cmd,text=True))

def aggregate_chunks(rho,chunks):
    chunks=sorted(chunks,key=lambda x:x['start']); pos=rows=inside=passed=maxv=0
    for c in chunks:
        assert c['start']==pos; pos+=c['count'];rows+=c['count'];inside+=c['inrange'];passed+=c['pass_valbits'];maxv=max(maxv,c['max_v2R'])
    return {'rho':rho,'rows':rows,'inrange':inside,'pass_valbits':passed,'max_v2R':maxv}

with tempfile.TemporaryDirectory(prefix='b699-r17-') as td:
    td=Path(td); cpp=td/'scan'
    subprocess.check_call(['g++','-O3','-std=c++20',str(EVID/'scan_u128_chunk.cpp'),'-o',str(cpp)])
    tasks=[]
    for rho,nchunks in [(28,32),(29,16),(30,8),(31,4)]+[(r,1) for r in range(32,40)]:
        total=1<<(55-rho); base=total//nchunks
        for i in range(nchunks):
            start=i*base; count=base if i<nchunks-1 else total-start
            tasks.append((rho,[str(cpp),str(rho),'80',str(start),str(count)]))
    by={r:[] for r in range(28,40)}
    with concurrent.futures.ThreadPoolExecutor(max_workers=JOBS) as ex:
        futs=[(rho,ex.submit(run,cmd)) for rho,cmd in tasks]
        for rho,f in futs: by[rho].append(f.result())
    layers=[aggregate_chunks(r,by[r]) for r in range(28,40)]
    for rho in range(40,56):
        x=run([sys.executable,str(EVID/'scan_python_exact.py'),str(rho)])
        layers.append({k:x[k] for k in ('rho','rows','inrange','pass_valbits','max_v2R')})
    layers.sort(key=lambda x:x['rho'])
    exp=EXPECTED['layers']
    for a,b in zip(layers,exp):
        for k in ('rho','rows','inrange','pass_valbits','max_v2R'): assert a[k]==b[k],(a,b,k)
    print(json.dumps({'status':'PASS','rows':sum(x['rows'] for x in layers),'layers':len(layers),'global_max_v2R':max(x['max_v2R'] for x in layers)},indent=2))
