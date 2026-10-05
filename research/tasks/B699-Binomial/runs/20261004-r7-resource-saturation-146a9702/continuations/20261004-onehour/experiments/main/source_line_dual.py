from pathlib import Path
import sympy as s,json
from sympy.solvers.simplex import lpmax
B=Path(__file__).resolve().parent;p=json.loads((B/'source-line-lp.json').read_text());rows=[a for a,b in p['source_matrix']];rhs=[b for a,b in p['source_matrix']];y=s.symbols('y0:'+str(len(rows)));cs=[q>=0 for q in y]
for j in range(15):cs.append(sum(row[j]*q for row,q in zip(rows,y))<=(2 if j<9 else 1))
value,sol=lpmax(sum(b*q for b,q in zip(rhs,y)),cs);ys=[sol.get(q,s.Integer(0)) for q in y];assert all(q>=0 for q in ys);loads=[sum(row[j]*q for row,q in zip(rows,ys)) for j in range(15)];assert all(q<=(2 if j<9 else 1) for j,q in enumerate(loads));assert value==sum(b*q for b,q in zip(rhs,ys))==s.Rational(p['minimum'])
coords=[(r,a) for r in range(3,9) for a in range(r//2+1)];o=dict(minimum=str(value),dual=[dict(r=r,s=a,weight=str(q),source=b) for (r,a),q,b in zip(coords,ys,rhs) if q],column_loads=list(map(str,loads)),integer_degree_lower_bound=int(s.ceiling(value)),interpretation='Exact weak duality certificate: every nonnegative source-line product exponent vector has D>=1572/5, hence every integral product D>=315.')
(B/'source-line-dual.json').write_text(json.dumps(o,indent=2)+'\n');print(json.dumps(o))
