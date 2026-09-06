"""Independent hypergraph-model check: vertex deletion, not the paper recurrence."""
from functools import lru_cache
from pathlib import Path
import json

def add(a,b):
    c=[0]*max(len(a),len(b))
    for i,v in enumerate(a): c[i]+=v
    for i,v in enumerate(b): c[i]+=v
    return tuple(c)

def mul(a,b):
    c=[0]*(len(a)+len(b)-1)
    for i,u in enumerate(a):
        for j,v in enumerate(b): c[i+j]+=u*v
    return tuple(c)

def hypercomb(n,ell):
    assert n>=1 and ell>=3
    edges=[]; fresh=n+1
    for i in range(n):
        edges.append([i,i+1]+list(range(fresh,fresh+ell-2)))
        fresh+=ell-2
    for i in range(n+1):
        edges.append([i]+list(range(fresh,fresh+ell-1)))
        fresh+=ell-1
    assert all(len(e)==ell for e in edges)
    assert fresh==2*n*(ell-1)+ell
    adj=[0]*fresh
    for edge in edges:
        mask=sum(1<<v for v in edge)
        for v in edge: adj[v]|=mask^(1<<v)
    return edges,adj

def from_graph(n,ell):
    edges,adj=hypercomb(n,ell)
    @lru_cache(None)
    def poly(mask):
        if not mask: return (1,)
        vertices=[i for i in range(len(adj)) if mask>>i&1]
        v=max(vertices,key=lambda i:(adj[i]&mask).bit_count())
        without=mask&~(1<<v)
        return add(poly(without),(0,)+poly(without&~adj[v]))
    result=poly((1<<len(adj))-1)
    return result,poly.cache_info().currsize

def recurrence(n,ell):
    a=(1,ell); b=(1,3*ell-2,3*(ell-1)**2,(ell-1)**2*(ell-2))
    if n==0: return a
    for _ in range(2,n+1): a,b=b,mul((1,ell-1),add(mul((1,ell-2),b),(0,)+a))
    return b

def brute(n,ell):
    edges,adj=hypercomb(n,ell)
    counts=[0]*(len(adj)+1)
    masks=[sum(1<<v for v in e) for e in edges]
    for chosen in range(1<<len(adj)):
        if all((chosen&e).bit_count()<=1 for e in masks): counts[chosen.bit_count()]+=1
    while counts[-1]==0: counts.pop()
    return tuple(counts)

if __name__=='__main__':
    checks=[]
    for ell in range(3,7):
        for n in range(1,7):
            actual,states=from_graph(n,ell)
            assert actual==recurrence(n,ell),(n,ell,actual)
            checks.append({'n':n,'ell':ell,'vertices':2*n*(ell-1)+ell,'states':states,'degree':len(actual)-1})
    for n,ell in [(1,3),(1,4),(2,3),(2,4)]:
        assert brute(n,ell)==recurrence(n,ell)
    record={'method':'Explicit hyperedges, conflict graph vertex deletion; four cases also raw subset enumeration',
            'checks':checks,'passed':len(checks),'raw_subset_cases':[[1,3],[1,4],[2,3],[2,4]],
            'scope':'Finite model/recurrence correspondence only; not a proof for all parameters.'}
    Path(__file__).with_name('model-check.json').write_text(json.dumps(record,indent=2)+'\n',encoding='utf-8')
    print(json.dumps(record))
