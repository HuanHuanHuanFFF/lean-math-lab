"""Produce exact monotone disjunction proof DAGs for all i14 position cases.
Only already numerically accepted cuts are used; this never searches new cuts.
"""
from pathlib import Path
from itertools import combinations
import json,sys,time
R=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(R/'code/vendor'))
from probe_weighted_asymmetric import solve
PS=[2,3,5,7,11,13]

def objective(z,pair):
    if pair is None:return sum(w*v for w,v in zip([18,17,16,15,14,13],sorted(z)))
    a,b=pair;v=[max(0,z[a]+z[b]-10000)]+[z[k] for k in range(6) if k not in pair]
    return sum(w*x for w,x in zip([18,17,16,15,14],sorted(v)))

def generate_dag(edges,pair,lower):
    nodes=[];seen={}
    def visit(z):
        if z in seen:return seen[z]
        number=len(nodes);seen[z]=number;node={'z':list(z)};nodes.append(node)
        score=objective(z,pair)
        if score>=lower:node.update(kind='bound',value=score);return number
        bad=next((k for k,(p,q,a,b) in enumerate(edges) if z[p]<a and z[q]<b),None)
        assert bad is not None,'Invalid claimed minimum: feasible counter-vector'
        p,q,a,b=edges[bad];one=list(z);two=list(z);one[p]=a;two[q]=b
        node.update(kind='split',cut=bad,children=[visit(tuple(one)),visit(tuple(two))]);return number
    root=visit((0,)*6)
    return dict(root=root,nodes=nodes)

def main():
    start=time.monotonic();inp=json.loads((R/'input/cuts.json').read_text())
    accepted=json.loads((R/'evidence/cuts_check.json').read_text());assert accepted['status']=='PASS_RATIONAL_NUMERICAL_OBLIGATIONS'
    assert [x['input'] for x in accepted['cuts']]==inp['cuts']
    rows=inp['cuts'];edges=[(PS.index(r['p']),PS.index(r['q']),r['wp'],r['wq']) for r in rows]
    graphs=[]
    for pair in [None,*combinations(range(6),2)]:
        solver_edges=[(PS[p],PS[q],a,b) for p,q,a,b in edges]
        ans=solve(PS,solver_edges,lambda z:objective(z,pair));target=220000 if pair is None else 90000
        assert ans['min']>target
        dag=generate_dag(edges,pair,ans['min'])
        graphs.append(dict(kind='distinct' if pair is None else 'one_pair',pair=None if pair is None else list(pair),prime_pair=None if pair is None else [PS[k] for k in pair],lower=ans['min'],target=target,margin=ans['min']-target,witness=ans['witness'],dag=dag))
        print('GRAPH',pair,'minimum',ans['min'],'margin',ans['min']-target,'nodes',len(dag['nodes']),flush=True)
    obj=dict(status='GENERATED_EXACT_MONOTONE_COVER_DAGS',primes=PS,denominator=10000,edges=edges,graphs=graphs,seconds=time.monotonic()-start)
    (R/'evidence/graph_certificate.json').write_text(json.dumps(obj,separators=(',',':'))+'\n')
    (R/'input/graph.txt').write_text(str(len(edges))+'\n'+'\n'.join(' '.join(map(str,e)) for e in edges)+'\n')
if __name__=='__main__':
    if not __debug__:raise RuntimeError('No -O')
    main()
