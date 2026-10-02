exec(open(__file__.replace('lp_probe.py','explore_atoms.py')).read().split('for name,F')[0])
import numpy as np
from scipy.optimize import linprog
from fractions import Fraction
names=list(atoms); na=len(names); nv=na+5
ordv=np.array([[order(F,b,r-b) for name,F in atoms.items()] for r in range(1,6) for b in range(r+1)])
M=[]
row=0
for r in range(1,6):
 for b in range(r+1):
  m=np.zeros(nv);m[:na]=-ordv[row];m[na+r-1]=1;M.append(m);row+=1
nd=np.array([0 if name.startswith('D') or name=='d' else s.total_degree(F) for name,F in atoms.items()],float)
dd=np.array([s.total_degree(F) if name.startswith('D') or name=='d' else 0 for name,F in atoms.items()],float)
T=np.array([order(F,0,0) for F in atoms.values()],float)
for active in [(1,),(2,),(1,2),(1,3),(1,4),(1,5),(2,3),(2,4)]:
 a=np.zeros(nv);a[:na]=-nd;a[na:]=1
 for r in active:a[na+r-1]=0
 b=np.zeros(nv);b[:na]=T-dd
 ob=np.r_[dd,np.zeros(5)]
 mm=np.vstack([M,-a,-a-b]);bb=np.r_[np.zeros(len(M)),-1,-1]
 sol=linprog(ob,A_ub=mm,b_ub=bb,bounds=(0,None),method='highs')
 if sol.success:
  v=sol.x
  print(active,'ddegree',ob@v,'a',a@v,'a+b',(a+b)@v, 'atoms',{key:str(Fraction(float(c)).limit_denominator(1000)) for key,c in zip(names,v[:na]) if c>1e-6},'weights',v[na:])
 else:print(active,sol.message)
