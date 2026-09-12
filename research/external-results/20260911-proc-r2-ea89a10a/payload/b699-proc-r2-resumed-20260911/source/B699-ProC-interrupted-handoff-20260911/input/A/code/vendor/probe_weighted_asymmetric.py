"""Exact finite comparison of already accepted cuts with positional weights.
This does not itself prove the underlying Padé cuts or infinite B699 inference.
"""
from pathlib import Path
import json,math,itertools,time
ROOT=Path(__file__).resolve().parents[1]
BASE=ROOT/'input/unpacked/asymmetric-pade/B699-asymmetric-Pade'

def prime(p):return p>=2 and all(p%d for d in range(2,math.isqrt(p)+1))
def nondominated(rows):
    seen={}
    for r in rows:
        p,q,wp,wq=r['p'],r['q'],r['wp'],r['wq']
        if p>q:p,q,wp,wq=q,p,wq,wp
        key=(p,q);group=seen.get(key,[])
        if any(a>=wp and b>=wq for a,b,_ in group):continue
        group=[g for g in group if not(wp>=g[0] and wq>=g[1])]
        group.append((wp,wq,r));seen[key]=group
    return [(p,q,a,b,r) for (p,q),g in sorted(seen.items()) for a,b,r in g]

def solve(ps,edges,objective):
    indices={p:k for k,p in enumerate(ps)}
    es=[(indices[p],indices[q],a,b) for p,q,a,b,*_ in edges]
    best=10**99;win=None;visited=set();leaves=0
    def rec(z):
        nonlocal best,win,leaves
        if z in visited:return
        visited.add(z)
        if objective(z)>=best:return
        bad=next(((p,q,a,b) for p,q,a,b in es if z[p]<a and z[q]<b),None)
        if bad is None:best=objective(z);win=z;leaves+=1;return
        p,q,a,b=bad
        for k,v in [(p,a),(q,b)]:
            zz=list(z);zz[k]=v;rec(tuple(zz))
    rec((0,)*len(ps))
    return {'min':best,'witness':win,'states':len(visited),'leaves':leaves}

def main():
    start=time.monotonic()
    profiles=json.loads((BASE/'results/refined_profiles.json').read_text())['profiles']
    rows=[]
    for prof in profiles:
        for r in prof['cuts']:rows.append(dict(r,accepted_Y_bits=prof['cut_height_bits'],source_i=prof['i']))
    allrows=nondominated(rows);out=[]
    for i in [4,5,6,7,8,9,10,11,12,13,14,15,16,18,20,21]:
        ps=[p for p in range(2,i) if prime(p)];t=len(ps);es=[r for r in allrows if r[0]<i and r[1]<i]
        scal=solve(ps,es,sum)
        candidates=[]
        for s in range((i+1)//2,i):
            w=[max(2*s-a,0) for a in range(i)]
            base=1000*(sum(w)-s*(s+1)-sum(w[:t]))
            obj=lambda z,w=w:sum(a*b for a,b in zip(w[:t],sorted(z)))
            ans=solve(ps,es,obj)
            candidates.append({'s':s,'gain':base+ans['min'],'base':base,'weighted':ans})
        best=max(candidates,key=lambda r:r['gain'])
        # Exact unrestricted-positions collision mass bound.
        col=[]
        for a,b in itertools.combinations(range(t),2):
            obj=lambda z,a=a,b=b:sum(z)+max(0,1000-z[a]-z[b])
            ans=solve(ps,es,obj);col.append({'pair':[ps[a],ps[b]],**ans})
        row={'i':i,'primes':ps,'cut_count':len(es),'scalar':scal,'best_position':best,
             'collision_min':min((r['min'] for r in col),default=0),'collisions':col,'cuts':[r[4] for r in es]}
        out.append(row)
        print(i,'cuts',len(es),'scalar',scal['min'],'s',best['s'],'gain',best['gain'],'collision',row['collision_min'],flush=True)
    (ROOT/'outputs/weighted_asymmetric_probe.json').write_text(json.dumps({'rows':out,'seconds':time.monotonic()-start,'status':'EXACT_FINITE_GRAPH_DIAGNOSTIC'},indent=2)+'\n')
if __name__=='__main__':main()
