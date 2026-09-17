from itertools import product,combinations
from pathlib import Path
import json,time
ROOT=Path(__file__).parents[1]
def dim(d): return sum(d-2*b+1 for b in range(d//2+1))
E0=14000001; h=1244000
sizes=(2,3,3,4,4,5)

def solve(cs,ds):
    # Fixed total Taylor cost; retain largest valuation-height gain.
    dp={0:(0,0,0,())}
    for i,(z,diag) in enumerate(zip(cs,ds)):
        nd={}
        for m in range(18):
            tri=m*(m+1)//2
            diagcost=sum(m-2*b for b in range((m-1)//2+1)) if m else 0
            cost=z*tri-diag*(tri-diagcost)
            if cost>=156: continue
            ell=m*(0 if z==sizes[i] else 1 if z==3 else sizes[i]-z)
            score=(E0-11)*m-(h+21)*ell
            for c,(s,w,l,ms) in dp.items():
                if c+cost>=156:continue
                k=c+cost; val=(s+score,w+m,l+ell,ms+(m,))
                if k not in nd or val[0]>nd[k][0]:nd[k]=val
        dp=nd
    best=None
    for cost,(score,w,l,ms) in dp.items():
        d=next(d for d in range(24) if dim(d)>cost)
        margin=score-E0*d-12000
        cand={'d':d,'weights':ms,'cost':cost,'columns':dim(d),'omega':w,'loss':l,'margin':margin}
        if best is None or margin>best['margin']:best=cand
    return best
start=time.monotonic(); result=[]
for cs in product(range(1,3),*([range(1,4)]*5)):
    if sum(cs)<14:continue
    dopts=[]
    for i,z in enumerate(cs):
        if (i+3)%2: dopts.append([0])
        elif z==sizes[i]:dopts.append([1])
        else:dopts.append([0,1])
    for ds in product(*dopts):
        ans=solve(cs,ds)
        result.append({'counts':cs,'diagonal':ds,'solution':ans})
(ROOT/'evidence/factored_profiles.json').write_text(json.dumps(result,indent=2))
fail=[r for r in result if r['solution']['margin']<=0]
print('profiles',len(result),'pass',len(result)-len(fail),'fail',len(fail),'elapsed',time.monotonic()-start)
print('fail summary',[(r['counts'],r['diagonal'],r['solution']['margin']) for r in fail[:20]])
