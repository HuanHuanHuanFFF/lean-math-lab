"""Receive proof DAGs without importing the optimizer; check all numerical
constants in the paper's occupied-position argument. No floats or searches.
"""
from pathlib import Path
from itertools import combinations
import json,math
R=Path(__file__).resolve().parents[1]
PS=[2,3,5,7,11,13]

def value(z,pair):
    if pair is None:items=list(z)
    else:
        a,b=pair;items=[max(0,z[a]+z[b]-10000)]+[z[k] for k in range(6) if k!=a and k!=b]
    items.sort();m=len(items)
    # Prefix-sum form, independent of the generator's weighted dot product.
    return (19-m)*sum(items)+sum(sum(items[:k]) for k in range(1,m))

def check_graph(g,edges):
    pair=g['pair'];lower=g['lower'];nodes=g['dag']['nodes'];root=g['dag']['root']
    assert isinstance(lower,int) and lower>g['target']
    witness=g['witness'];assert len(witness)==6 and min(witness)>=0
    assert all(witness[p]>=a or witness[q]>=b for p,q,a,b in edges) and value(witness,pair)==lower
    assert 0<=root<len(nodes) and nodes[root]['z']==[0]*6
    colors=[0]*len(nodes)
    def visit(k):
        assert isinstance(k,int) and 0<=k<len(nodes) and colors[k]!=1,'Invalid or cyclic DAG'
        if colors[k]==2:return
        colors[k]=1;n=nodes[k];z=n['z'];assert len(z)==6 and all(isinstance(v,int) and v>=0 for v in z)
        if n['kind']=='bound':assert n['value']==value(z,pair)>=lower
        else:
            assert n['kind']=='split' and 0<=n['cut']<len(edges)
            p,q,a,b=edges[n['cut']];assert z[p]<a and z[q]<b
            first=list(z);second=list(z);first[p]=a;second[q]=b
            assert len(n['children'])==2
            for child,expected in zip(n['children'],[first,second]):
                assert 0<=child<len(nodes) and nodes[child]['z']==expected;visit(child)
        colors[k]=2
    visit(root);assert all(c==2 for c in colors),'unreachable extra nodes'
    return dict(pair=None if pair is None else [PS[k] for k in pair],lower=lower,target=g['target'],margin=lower-g['target'],nodes=len(nodes),witness=witness)

def check():
    inp=json.loads((R/'input/cuts.json').read_text());doc=json.loads((R/'evidence/graph_certificate.json').read_text())
    assert doc['primes']==PS and doc['denominator']==inp['denominator']==10000
    expected=[[PS.index(r['p']),PS.index(r['q']),r['wp'],r['wq']] for r in inp['cuts']]
    assert doc['edges']==expected
    for p,q,a,b in expected:assert p!=q and 0<a<10000 and 0<b<10000
    assert [g['pair'] for g in doc['graphs']]==[None,*[list(t) for t in combinations(range(6),2)]]
    received=[check_graph(g,expected) for g in doc['graphs']]
    # The paper treats m<=4 occupied positions directly; m=5 is exactly one
    # colliding pair; m=6 is the distinct case. These possibilities exhaust all.
    weights=list(range(18,4,-1));assert len(weights)==14 and sum(weights)==161
    assert sum(range(1,10))*2==90
    top6=sum(range(13,19));top5=sum(range(14,19));top4=sum(range(15,19));assert (top6,top5,top4)==(93,80,66)
    assert math.factorial(14)<2**37
    H=inp['height_Y_bits'];assert H>=2 and inp['D']==13
    distinct=received[0]['lower'];collision=min(x['lower'] for x in received[1:])
    margins=[distinct-220000,collision-90000,5]
    distinct_rhs=18*37*10000+161*10000+distinct
    collision_rhs=18*37*10000+18*10000+161*10000+collision
    multiple_rhs=18*37+161
    assert margins==[833,1248,5]
    assert ((H+1)*margins[0]>distinct_rhs and (H+1)*margins[1]>collision_rhs and (H+1)*5>multiple_rhs)
    out=dict(status='PASS_EXACT_MONOTONE_DAGS_AND_HEIGHT_CONSTANTS',H_Y=H,height_n_bits=H+1,cut_count=len(inp['cuts']),total_dag_nodes=sum(r['nodes'] for r in received),profiles=received,
       height_branches=[dict(kind='six_occupied_positions',power=margins[0],rhs_power_of_two=distinct_rhs),dict(kind='five_occupied_positions',power=margins[1],rhs_power_of_two=collision_rhs,cofactor_collision_constant=18),dict(kind='at_most_four_occupied_positions',power=5,rhs_power_of_two=multiple_rhs)],
       theorem='For i=14, noCommon implies n < 2^height_n_bits; paper proof plus exact certificates, not Lean.')
    (R/'evidence/graph_height_check.json').write_text(json.dumps(out,indent=2)+'\n')
    print('PASS',out['total_dag_nodes'],'DAG nodes; candidate height n < 2^',H+1)
    return out
if __name__=='__main__':
    if not __debug__:raise RuntimeError('No -O')
    check()
