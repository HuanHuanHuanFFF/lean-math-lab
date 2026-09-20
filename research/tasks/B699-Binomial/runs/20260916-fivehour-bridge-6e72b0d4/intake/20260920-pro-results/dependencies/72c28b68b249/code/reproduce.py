#!/usr/bin/env python3
"""Clean standalone acceptance for this round only.
Python>=3.11 + NumPy. No SymPy, SciPy, network, prior package, repository, or Lean.
All mathematical obligations in this package are regenerated and checked.
"""
from __future__ import annotations
import argparse,hashlib,json,sys,time
from pathlib import Path
from concurrent.futures import ProcessPoolExecutor
from accept_core import need,save
from verify_round import verify_group,verify_nf_families,worker
from tail_checks import run_tail
ROOT=Path(__file__).resolve().parents[1]

def main():
    pa=argparse.ArgumentParser();pa.add_argument('--out',type=Path,required=True);pa.add_argument('--workers',type=int,default=3);a=pa.parse_args()
    need(a.out.is_absolute() and not a.out.exists(),'output must be absolute and nonexistent')
    need(1<=a.workers<=4,'workers outside safe bound')
    manifest=ROOT/'SHA256SUMS'
    if manifest.exists():
        for line in manifest.read_text().splitlines():
            h,n=line.split('  ',1);p=ROOT/n
            need(p.is_file() and hashlib.sha256(p.read_bytes()).hexdigest()==h,'package hash mismatch: '+n)
    a.out.mkdir(parents=True);geo=a.out/'geometry';geo.mkdir();start=time.monotonic()
    names=[f'nf{q}_h{h}' for q in (11,12) for h in range(3,9)]+[f'sat{q}' for q in (18,19,20)]
    args=[(n,geo) for n in names]
    if a.workers==1:groups=[verify_group(*x) for x in args]
    else:
        with ProcessPoolExecutor(max_workers=a.workers) as pool:groups=list(pool.map(worker,args))
    fams=[verify_nf_families(q,geo) for q in (11,12)]
    save(geo/'GEOMETRY_SUMMARY.json',{'status':'PASS_COMPLETE_CURRENT_GEOMETRY','groups':[{k:v for k,v in r.items() if k not in ('full_augmented_minors','integer_crosschecks')} for r in groups],'families':fams})
    summary=run_tail(a.out,groups,fams)
    print(json.dumps(summary,sort_keys=True),flush=True);print('ELAPSED_SECONDS',round(time.monotonic()-start,3),flush=True)
if __name__=='__main__':main()
