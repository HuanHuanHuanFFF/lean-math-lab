from pathlib import Path
from functools import lru_cache
import json
import sympy as sp
@lru_cache(None)
def best(a,b):
    vals=[0]
    if a>=3:vals.append(1+best(a-3,b))
    if a>=1 and b>=1:vals.append(1+best(a-1,b-1))
    if b>=2:vals.append(1+best(a,b-2))
    return max(vals)
checks=[]
for a in range(37):
    for b in range(25):
        bound=min((a+2*b)//3,(a+b)//2)
        assert best(a,b)==bound
checks_count=37*25
N,X=sp.symbols('N X');examples=[]
for e in range(1,5):
    G=(5*X**3+N+1)**e*(X+1);h=int(sp.degree(G,X));F=sp.Poly(G.subs(N,0),X,modulus=5);fact=sp.factor_list(F)[1]
    n1=sum(int(m) for f,m in fact if f.degree()==1);n2=sum(int(m) for f,m in fact if f.degree()==2);hi=sum(int(m) for f,m in fact if f.degree()>=3);delta=h-int(F.degree());bound=hi+min((n1+delta+2*n2)//3,(n1+delta+n2)//2)
    assert bound==e
    examples.append(dict(e=e,G=str(G),selected_cubic_factor='5*X**3+N+1',selected_count_with_multiplicity=e,unselected_linear_factor='X+1',h=h,F=str(F.as_expr()),n1=n1,n2=n2,n_hi=hi,delta=delta,bound=bound))
out=dict(scope='Abstract integer grouping checks and selected-q>=3 polynomial examples only; no B699 loadability or source existence claim.',low_atom_dp_checks=checks_count,a_range=[0,36],b_range=[0,24],all_match=True,examples=examples)
p=Path(__file__).parent/'loadable-atom-check.json';p.write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n',encoding='utf-8');print(json.dumps(dict(checks=checks_count,sharp_degree_loss_examples=len(examples),all_passed=True)))
