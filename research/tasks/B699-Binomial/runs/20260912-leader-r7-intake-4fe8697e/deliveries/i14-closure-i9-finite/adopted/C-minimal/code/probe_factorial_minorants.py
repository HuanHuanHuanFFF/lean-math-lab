"""FLOAT DISCOVERY ONLY. Exact acceptance, if any, must be separate."""
from pathlib import Path
from fractions import Fraction as F
import numpy as np
from scipy.optimize import linprog
import json,math,time
ROOT=Path(__file__).resolve().parents[1]

def run(triple,K):
    ts=sorted({F(a,b) for b in range(1,K+1) for a in range(b)})
    mat=np.array([[k*t.numerator//t.denominator for k in range(1,K+1)] for t in ts],dtype=float)
    rhs=np.array([int(sum(triple)*t.numerator//t.denominator-sum(k*t.numerator//t.denominator for k in triple)==2) for t in ts],dtype=float)
    obj=np.array([k*math.log(k) for k in range(1,K+1)])
    res=linprog(-obj,A_ub=mat,b_ub=rhs,A_eq=[list(range(1,K+1))],b_eq=[0],bounds=[(-20,20)]*K,method='highs')
    out=dict(triple=triple,K=K,grid=len(ts),success=res.success)
    if res.success:
        out.update(rate=-res.fun,coefficients={str(k):str(F(float(v)).limit_denominator(10000)) for k,v in enumerate(res.x,1) if abs(v)>1e-8},sum_coeff=float(sum(res.x)))
    return out
if __name__=='__main__':
    outputs=[]
    for triple in [(5,7,14),(9,12,20),(5,6,15),(8,8,13),(9,11,18),(10,15,19)]:
        o=run(triple,64);outputs.append(o)
        print(json.dumps(o),flush=True)
    (ROOT/'evidence/factorial_minorants_DISCOVERY.json').write_text(json.dumps(outputs,indent=2)+'\n')
