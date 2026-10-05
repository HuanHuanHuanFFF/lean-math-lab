from pathlib import Path
import json,time
import sympy as s
from sympy.solvers.simplex import lpmin
B=Path(__file__).resolve().parent
OFF=((77,74),(67,57),(51,54,46),(40,43,48),(31,34,39,45),(25,28,33,39));DIAG=(0,56,0,41,0,52)
t=s.symbols('t0:9');v=s.symbols('v3:9');variables=t+v;cs=[x>=0 for x in variables];source_rows=[]
for r,(off,di) in enumerate(zip(OFF,DIAG),3):
 for a in range(r//2+1):
  vec=[0]*15;vec[a]+=1;vec[r-a]+=1;vec[9+r-3]=1;rhs=di if 2*a==r else off[a];source_rows.append((vec,rhs));cs.append(sum(z*x for z,x in zip(vec,variables))>=rhs)
start=time.monotonic();value,solution=lpmin(2*sum(t)+sum(v),cs)
point=[solution.get(x,0) for x in variables];assert all(x>=0 for x in point);assert all(sum(a*x for a,x in zip(row,point))>=b for row,b in source_rows);assert 2*sum(point[:9])+sum(point[9:])==value
out=dict(model='nonnegative rational exponent relaxation of pure source-line/vertical products',minimum=str(value),indices=[str(x) for x in variables],point=list(map(str,point)),source_matrix=source_rows,seconds=round(time.monotonic()-start,3),integer_point=all(x.q==1 if hasattr(x,'q') else True for x in point),claim='primal feasible optimum reported by LP; independent dual required for a lower-bound certificate')
(B/'source-line-lp.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps({k:v for k,v in out.items() if k!='source_matrix'}))
