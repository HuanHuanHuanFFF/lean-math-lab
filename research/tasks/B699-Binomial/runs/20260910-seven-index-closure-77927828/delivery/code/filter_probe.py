#!/usr/bin/env python3
"""Probe complete final interval rows using exact rowwise large-part witnesses."""
import json,math,time
from pathlib import Path
from cover_probe import parameters,primes_below
ROOT=Path(__file__).resolve().parents[1]
rows=json.loads((ROOT/'outputs'/'cover_probe.json').read_text())
ans=[]
for i in (27,30,33):
    row=[r for r in rows if r['i']==i][-1]
    pars=parameters(i);K,lam,E=[pars[k] for k in ('K','lam','E')]
    small=primes_below(i);start=row['start']
    intervals=[[2*i+2,start-1]]+row['segments']
    hard=[];success=0;t0=time.monotonic()
    for a,b in intervals:
        for n in range(a,b+1):
            V=math.comb(n,i)
            for p in small:
                while V%p==0:V//=p
            if K*V**lam>n**E:success+=1
            else:hard.append(n)
    with open(ROOT/'outputs'/f'filter_probe_{i}.json','w') as f:
        json.dump(dict(i=i,large_part_success=success,remaining=hard,total=success+len(hard)),f,indent=2)
    trial=[];left=[]
    for n in hard:
        found=0
        for p in range(n,n-i,-1):
            if p>1 and all(p%d for d in range(2,math.isqrt(p)+1)):
                found=p;break
        if found:trial.append([n,found])
        else:left.append(n)
    out=dict(i=i,total=success+len(hard),large_part_success=success,
             topprime_success=len(trial),unresolved=left,wall_seconds=time.monotonic()-t0)
    print(out,flush=True);ans.append(out)
(ROOT/'outputs'/'filter_probe_summary.json').write_text(json.dumps(ans,indent=2))
