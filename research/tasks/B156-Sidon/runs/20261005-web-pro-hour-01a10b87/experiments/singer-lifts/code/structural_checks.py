from core import *
from pathlib import Path
from fractions import Fraction
import json,time
O=Path(__file__).resolve().parents[1];start=time.time();report={}
# Exact witness dependency graphs for EVERY residue outside B, all listed primes.
graphs=[]
for p in [2,3,5,7,11,13,17,19,23,31,43,61]:
    B,meta=singer(p);q=meta['q'];k=len(B);br={b%q for b in B}
    diffs={(B[v]-B[w])%q:(v,w) for v in range(k) for w in range(k) if v!=w}
    sums={(B[u]+B[v])%q:(u,v) for u in range(k) for v in range(u,k)}
    maxdegree=0;maxbase=0;maxevents=0;doubles=Counter();nr=0
    for r in range(q):
        if r in br:continue
        nr+=1;events=set()
        for u in range(k):
            v,w=diffs[(r-B[u])%q]
            assert w not in (u,v)
            events.add((min(u,v),max(u,v),w))
        positive=Counter();negative=Counter();supports=[];nd=0
        for u,v,w in events:
            positive.update(set((u,v)));negative.update([w]);supports.append(set((u,v,w)))
            nd+=int(u==v)
        assert len(events)*2-nd==k
        assert all(positive[i]==1 and negative[i]<=1 for i in range(k))
        maxbase=max(maxbase,max(sum(i in e for e in supports) for i in range(k)))
        if 2*r%q in sums:
            u,v=sums[2*r%q];assert u!=v
            supports.append({u,v})
        degree=max((sum(bool(e&f) for j,f in enumerate(supports) if i!=j) for i,e in enumerate(supports)),default=0)
        assert degree<=4
        maxdegree=max(maxdegree,degree);maxevents=max(maxevents,len(supports));doubles[nd]+=1
    graphs.append({'p':p,'q':q,'off_base_residues_checked':nr,'max_variable_base_degree':maxbase,'max_event_dependency_degree_including_midpoint':maxdegree,'max_events_per_residue':maxevents,'double_positive_histogram':dict(sorted(doubles.items()))})
    print('graphs',p,nr,maxdegree,maxevents,flush=True)
report['dependency_graphs']=graphs
# Exact expectations: every lift, every point; counts, not Monte Carlo estimates.
exact=[]
for p,M in [(2,2),(3,3),(5,3),(7,2),(7,3),(2,16),(3,16)]:
    B,meta=singer(p);q=meta['q'];N=M*q;k=len(B);br={b%q for b in B}
    U=[x for x in range(1,N+1) if x%q not in br]
    counts=[0]*(N+1);total=M**k;sumH=0;sumH2=0
    for ds in product(range(M),repeat=k):
        A=[b+q*d for b,d in zip(B,ds)];F=forbidden(A,N)
        H=0
        for x in U:
            if x not in F:counts[x]+=1;H+=1
        sumH+=H;sumH2+=H*H
    mn=min(counts[x] for x in U);mx=max(counts[x] for x in U)
    if M>=16:
        lb=Fraction(M-2,M)**(p+2)
        assert Fraction(mn,total)>=lb
    else:lb=None
    exact.append({'p':p,'M':M,'N':N,'B':B,'number_of_lifts':total,'off_base_points':len(U),'sum_H':sumH,'sum_H_squared':sumH2,'expected_H':str(Fraction(sumH,total)),'min_single_hole_probability':str(Fraction(mn,total)),'max_single_hole_probability':str(Fraction(mx,total)),'LLL_lower_bound':str(lb) if lb else None,'point_hole_counts':{str(x):counts[x] for x in U}})
    print('exact',p,M,total,'EH',str(Fraction(sumH,total)),'minprob',str(Fraction(mn,total)),flush=True)
report['exact_lift_enumerations']=exact
report['elapsed_seconds']=time.time()-start
(O/'data/structural_checks.json').write_text(json.dumps(report,indent=2))
print('TOTAL_SECONDS',report['elapsed_seconds'],flush=True)
