"""Diagnostic only. Exact primal/dual checking is added only for retained outputs.
No binomial (n,i,j) scan. LP over stated families of degree-1/2 factors.
"""
from pathlib import Path
import json, math, time, argparse
from collections import defaultdict
import numpy as np
from scipy.optimize import linprog
from scipy.sparse import csc_matrix
ROOT=Path(__file__).resolve().parents[1]

def solve(i,mode=0):
    pts=[(x,a-x) for a in range(i) for x in range(a+1)]
    facts=[];seen=set()
    for k in range(3):
        for v in range(i):
            ix=tuple(t for t,(x,y) in enumerate(pts) if (x,y,x+y)[k]==v)
            facts.append((1,[['x','y','sum'][k],v],ix));seen.add(ix)
    quadratic=[(1,1,1)] if mode==0 else [(1,b,1) for b in [-2,-1,0,1]]
    for a,b,c in quadratic:
        # This finite range is a design family, not an exhaustion of all conics.
        for A in range(-2*i,4*i+1):
            for B in range(-2*i,4*i+1):
                group=defaultdict(list)
                for k,(x,y) in enumerate(pts):
                    group[a*x*x+b*x*y+c*y*y-A*x-B*y].append(k)
                for const,ix in group.items():
                    if len(ix)<6:continue
                    ix=tuple(ix)
                    if ix in seen:continue
                    # Nonsingular projective quadratic discriminant.
                    matdet=4*a*c*(-const)+b*A*B-a*B*B-c*A*A-b*b*(-const)
                    if matdet==0:continue
                    facts.append((2,[a,b,c,-A,-B,-const],ix));seen.add(ix)
    rr=[];cc=[]
    for k,(_,_,ix) in enumerate(facts):rr.extend(ix);cc.extend([k]*len(ix))
    M=csc_matrix((np.ones(len(rr)),(rr,cc)),shape=(len(pts),len(facts)))
    res=linprog([f[0] for f in facts],A_ub=-M,b_ub=-np.ones(len(pts)),bounds=(0,None),method='highs')
    if not res.success:raise RuntimeError(res.message)
    out={'i':i,'mode':mode,'points':pts,'number_factors':len(facts),'float_objective':res.fun,
         'chosen':[{'degree':f[0],'polynomial':f[1],'points':list(f[2]),'weight':float(res.x[k])} for k,f in enumerate(facts) if res.x[k]>1e-9],
         'dual':list(-res.ineqlin.marginals),'status':'FLOAT_DESIGN_ONLY'}
    return out
if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('i',type=int,nargs='+');ap.add_argument('--mode',type=int,default=0);args=ap.parse_args()
    for i in args.i:
        t=time.monotonic();r=solve(i,args.mode);r['seconds']=time.monotonic()-t
        path=ROOT/'outputs'/f'conic_design_{i}_{args.mode}.json';path.write_text(json.dumps(r,indent=2)+'\n')
        print(i,r['number_factors'],r['float_objective'],len(r['chosen']),round(r['seconds'],2),flush=True)
