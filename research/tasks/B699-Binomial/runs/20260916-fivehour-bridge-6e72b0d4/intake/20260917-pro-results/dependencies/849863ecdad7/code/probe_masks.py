"""Discovery only: continuous fat-point cost; no mathematical acceptance."""
import numpy as np,json,time
from scipy.optimize import minimize
from pathlib import Path
root=Path(__file__).resolve().parents[1]
rho=463/5000
# vars muU(9),muV(9),w3..w8(6),z (common weight1/2)
def build(mode):
    rlist=[]; slist=[]; tlist=[]; wi=[]
    for r in range(3,9):
        for s in range(r+1):rlist.append(r);slist.append(s);tlist.append(r-s);wi.append(18+r-3)
    if mode=='full': points=[(1,0),(1,1),(2,0),(2,1),(2,2)]
    else:points=[(1,0),(2,int(mode))]
    for r,s in points:rlist.append(r);slist.append(s);tlist.append(r-s);wi.append(24)
    slist=np.array(slist);tlist=np.array(tlist);wi=np.array(wi)
    def res(x):return np.maximum(x[wi]-x[slist]-x[9+tlist],0)
    def gap(x):return (1-sum(x[:18]))**2 -np.dot(res(x),res(x))
    def objective(x):return -sum(x[18:24])-rho*x[24]
    constraints=[{'type':'ineq','fun':gap},{'type':'ineq','fun':lambda x:1-sum(x[:18])}]
    best=None
    for start in range(3):
        x=np.zeros(25);x[18:24]=np.array([1/(r+1) for r in range(3,9)])*.9;x[24]=.01
        if start:x[0:4]=np.array([.04,.025,.015,.01]);x[9:13]=x[:4]* (1 if start==1 else .5); x[18:24]*=.8
        ans=minimize(objective,x,bounds=[(0,1)]*25,constraints=constraints,method='SLSQP',options={'ftol':1e-12,'maxiter':1000})
        if best is None or ans.fun<best.fun:best=ans
    return {'mode':mode,'success':bool(best.success),'value':float(-best.fun),'gap':float(gap(best.x)), 'muU':best.x[:9].tolist(),'muV':best.x[9:18].tolist(),'w':best.x[18:24].tolist(),'z':float(best.x[24])}
if __name__=='__main__':
 st=time.time();out=[build(m) for m in ['full','0','1','2']]
 (root/'evidence/mask_cost_probe.json').write_text(json.dumps({'seconds':time.time()-st,'results':out},indent=2))
 for r in out:print(r)
