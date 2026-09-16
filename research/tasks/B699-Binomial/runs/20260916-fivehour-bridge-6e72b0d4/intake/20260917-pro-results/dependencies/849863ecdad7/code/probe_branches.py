import numpy as np,json
from scipy.optimize import minimize
from pathlib import Path
root=Path(__file__).resolve().parents[1]

def build(lam):
 # symmetric boundary prefactor mu[0:4],w[4:12] for rows1:8
 S=[];T=[];idx=[];coef=[]
 for r in range(1,9):
  for s in range(r+1):S.append(s);T.append(r-s);idx.append(r+3)
 S=np.array(S);T=np.array(T);idx=np.array(idx)
 def res(x):
  m=np.pad(x[:4],(0,5))
  return np.maximum(x[idx]-m[S]-m[T],0)
 def gap(x):return 1-2*sum(x[:4])-np.linalg.norm(res(x))
 def objective(x):return -sum(x[6:])-lam[0]*x[4]-lam[1]*x[5]
 x=np.array([.05,.04,.03,.025,.1,.1]+[.23,.18,.15,.13,.115,.1])
 a=minimize(objective,x,bounds=[(0,1)]*12,constraints=[{'type':'ineq','fun':gap},{'type':'ineq','fun':lambda x:1-2*sum(x[:4])}],method='SLSQP',options={'ftol':1e-13,'maxiter':1000})
 return {'lambda':lam,'success':bool(a.success),'value':float(-a.fun),'params':a.x.tolist(),'gap':float(gap(a.x))}
out=[build(l) for l in [[.109,0],[0,.109],[.0386,.054],[.054,.0386]]]
(root/'evidence/branch_costs.json').write_text(json.dumps(out,indent=2))
for r in out:print(r)
