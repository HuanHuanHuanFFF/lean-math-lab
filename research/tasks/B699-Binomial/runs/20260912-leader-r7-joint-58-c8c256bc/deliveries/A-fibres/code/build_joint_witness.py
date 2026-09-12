"""Produce a rational feasible point for a SPECIFIED stronger relaxation."""
from pathlib import Path
from fractions import Fraction as F
import json,numpy as np
from scipy.optimize import linprog
R=Path(__file__).resolve().parents[1]
D=json.loads((R/'evidence/polynomial_discovery.json').read_text())
pts=[(r,b,r-b) for r in range(9) for b in range(r+1)]
rows=np.array([[int(t[0]==r) for t in pts] for r in range(9)])
Au=[];Bu=[]
for p in D['polynomials']:
 a=np.zeros(45);a[p['zeros']]=1;Au.append(a);Bu.append(p['degree'])
# Fixed finite-mass example has g exponent=0 and alpha exponent=1.
row_mass=[0,F(1,10),F(1,10)]+[1]*6
res=linprog(np.zeros(45),A_eq=rows,b_eq=list(map(float,row_mass)),A_ub=Au,b_ub=Bu,bounds=(0,None),method='highs')
assert res.success,res.message
mass=[F(float(v)).limit_denominator(10**8) for v in res.x]
assert all(sum(mass[k] for k,t in enumerate(pts) if t[0]==r)==row_mass[r] for r in range(9))
assert all(sum(mass[k] for k in p['zeros'])<=p['degree'] for p in D['polynomials'])
out={'status':'EXACT_FEASIBLE_POINT_OF_SPECIFIED_RELAXATION_NOT_INTEGER_COUNTEREXAMPLE','positions':{'3':1,'7':2},'cofactor_exponents':{'2':'3/5','3':'1/10','5':'2/5','7':'1/10'},'alpha_exponent':'1','g_exponent':'0','alpha_2_exponent':'2/5','alpha_5_exponent':'3/5','cells':[{'r':r,'b':b,'c':c,'mass':str(m)} for (r,b,c),m in zip(pts,mass)],'polynomial_count':len(D['polynomials']),'polynomials':D['polynomials'],'not_encoded':['actual integer n,j','full prime-power equations','all congruences','all degree-two polynomials','zero-value exception proofs']}
(R/'evidence/stronger_relaxation_witness.json').write_text(json.dumps(out,indent=2)+'\n')
print('EXACT WITNESS BUILT',len(D['polynomials']))
