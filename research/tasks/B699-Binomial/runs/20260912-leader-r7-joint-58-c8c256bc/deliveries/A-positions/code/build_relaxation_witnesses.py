from pathlib import Path
from fractions import Fraction as F
import numpy as np
from scipy.optimize import linprog
from scipy.linalg import qr
import sympy as sp
import json,time
R=Path(__file__).resolve().parents[1]
lines=json.loads((R/'evidence/all_lines_probe.json').read_text())['lines']
conics=json.loads((R/'evidence/conics_probe.json').read_text())['polynomials']
cubics=json.loads((R/'evidence/cubics_probe.json').read_text())['polynomials']
cells=[(r,b,r-b) for r in range(9) for b in range(r+1)]
AA=[];bounds=[]
for _,__,___,ids in lines:
 z=np.zeros(45);z[ids]=1;AA.append(z);bounds.append(1)
for row in conics:
 z=np.zeros(45);z[row[-1]]=1;AA.append(z);bounds.append(2)
for row in cubics:AA.append(np.array(row[-1],dtype=float));bounds.append(3)
Aeq=np.array([[int(rr==r) for rr,b,c in cells] for r in range(9)])
results=[]
for r,s in [(1,2),(2,1),(1,3),(3,1)]:
 br=[F(1)]*9;br[0]=F(0);br[r]=br[s]=F(7,100)
 res=linprog(np.zeros(45),A_eq=Aeq,b_eq=list(map(float,br)),A_ub=AA,b_ub=bounds,bounds=(0,None),method='highs')
 assert res.success
 eqrows=[list(map(int,row)) for row in Aeq]; eqrhs=list(br)
 for k,v in enumerate(res.x):
  if abs(v)<1e-8:
   eqrows.append([int(i==k) for i in range(45)]);eqrhs.append(F(0))
 for row,bound,slack in zip(AA,bounds,res.ineqlin.residual):
  if abs(slack)<1e-8:eqrows.append(list(map(int,row)));eqrhs.append(F(bound))
 _,tri,piv=qr(np.array(eqrows,dtype=float).T, pivoting=True,mode='economic')
 assert abs(tri[44,44])>1e-10
 basis=[int(i) for i in piv[:45]]
 exact=sp.Matrix([eqrows[i] for i in basis]).inv()*sp.Matrix([sp.Rational(eqrhs[i].numerator,eqrhs[i].denominator) for i in basis])
 vals=[F(int(v.p),int(v.q)) for v in exact]
 assert all(v>=0 for v in vals)
 assert [sum(vals[k] for k,(rr,b,c) in enumerate(cells) if rr==a) for a in range(9)]==br
 for row,bound in zip(AA,bounds):assert sum(int(w)*v for w,v in zip(row,vals))<=bound
 results.append({'positions':[r,s],'cofactor_exponents':{'2':'3/5','3':'7/100','5':'2/5','7':'7/100'},'small_mass_by_row':[str(1-v) for v in br],'cell_masses':[str(v) for v in vals]})
 print(r,s,'exact feasible',sum(v>0 for v in vals), 'nonzero masses')
(R/'evidence/relaxation_witnesses.json').write_text(json.dumps({'not_integer_counterexamples':True,'model':'finite all459 lines + recorded12732 positive conics + recorded970 positive cubics + specified cuts','line_count':len(lines),'conic_count':len(conics),'cubic_count':len(cubics),'witnesses':results},indent=2))
