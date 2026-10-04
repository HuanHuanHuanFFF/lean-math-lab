from pathlib import Path
import json
import sympy as sp
N,X=sp.symbols('N X');P=5;c=0
rows=[]
for e in range(1,5):
    G=(5*X+N+1)**e*(X+1);h=int(sp.degree(G,X));F=sp.Poly(G.subs(N,c),X,modulus=P)
    fac=sp.factor_list(F)[1];omega=sum(int(m) for f,m in fac);deg=int(F.degree())
    assert omega+h-deg==e+1 and F.as_expr()==X+1
    rows.append(dict(e=e,h=h,specialization=str(F.as_expr()),omega=omega,degree=deg,rational_nonvertical_count_with_multiplicity=e+1,bound=omega+h-deg))
G=(X+N)*(X+N+5);F=sp.Poly(G.subs(N,0),X,modulus=5);fac=sp.factor_list(F)[1]
assert F.as_expr()==X**2 and len(fac)==1 and sum(int(m) for f,m in fac)==2
out=dict(scope='Exact small examples for a general factor-count transfer lemma, not certificates for B699 source spaces.',sharp_degree_drop_examples=rows,collision_counterexample=dict(G=str(sp.expand(G)),F=str(F.as_expr()),distinct_modular_factors=len(fac),omega=sum(int(m) for f,m in fac),distinct_rational_nonvertical_factors=2),projective_direction_counts=[dict(p=p,dimension=r,directions=(p**r-1)//(p-1)) for p,r in ((257,1),(257,2),(11,4))])
p=Path(__file__).parent/'specialization-factor-check.json';p.write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n',encoding='utf-8');print(json.dumps(dict(sharp_examples=len(rows),collision_verified=True,direction_counts=out['projective_direction_counts']),ensure_ascii=False))
