"""Exploratory LP. Rational primal/dual checks certify only the listed factor family."""
import json, sys, time
from collections import defaultdict
from fractions import Fraction
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
import numpy as np
from scipy.optimize import linprog
from scipy.sparse import csc_matrix

def run(i):
    nodes=[(b,a-b) for a in range(i) for b in range(a+1)]
    factors=[]; seen=set()
    for kind in ['b','c','a']:
        for v in range(i):
            ix=tuple(z for z,(b,c) in enumerate(nodes) if (b if kind=='b' else c if kind=='c' else b+c)==v)
            factors.append((1,[kind,v],ix));seen.add(ix)
    base=len(factors)
    for u,v in nodes:
        groups=defaultdict(list)
        for z,(b,c) in enumerate(nodes):
            x,y=b-u,c-v
            groups[x*x+x*y+y*y].append(z)
        for rad,ix in groups.items():
            # Only use nonsingular conics through >=5 of the rational nodes.
            ix=tuple(ix)
            if rad>0 and len(ix)>=5 and ix not in seen:
                factors.append((2,['hex_conic',u,v,rad],ix));seen.add(ix)
    rr=[];cc=[]
    for z,(_,_,ix) in enumerate(factors):rr.extend(ix);cc.extend([z]*len(ix))
    A=csc_matrix((np.ones(len(rr)),(rr,cc)),shape=(len(nodes),len(factors)))
    cost=np.array([f[0] for f in factors])
    out=linprog(cost,A_ub=-A,b_ub=-np.ones(len(nodes)),bounds=(0,None),method='highs')
    if not out.success:raise RuntimeError(out.message)
    w=[Fraction(float(z)).limit_denominator(10**6) for z in out.x]
    assert all(v>=0 for v in w)
    cov=[sum((w[z] for z,f in enumerate(factors) if a in f[2]),Fraction()) for a in range(len(nodes))]
    # Dual is also rationalized and checked independently against every actual incidence.
    y=[Fraction(float(-z)).limit_denominator(10**6) for z in out.ineqlin.marginals]
    primal=sum((f[0]*w[z] for z,f in enumerate(factors)),Fraction())
    dual=sum(y,Fraction())
    dual_ok=all(v>=0 for v in y) and all(sum((y[a] for a in f[2]),Fraction())<=f[0] for f in factors)
    loads=[sum((y[a] for a in f[2]),Fraction()) / f[0] for f in factors]
    repair=max([Fraction(1)]+loads)
    lower=dual/repair
    assert all(v>=0 for v in y)
    assert all(load<=repair for load in loads)
    good=min(cov)>=1 and dual_ok and primal==dual
    res={'i':i,'nodes':len(nodes),'line_factors':base,'conic_factors':len(factors)-base,
         'float_optimum':float(out.fun),'exact_optimum_if_certified':str(primal) if good else None,
         'min_exact_coverage':str(min(cov)), 'dual_scale_for_exact_feasibility':str(repair),
         'certified_lower_bound_for_this_factor_family':str(lower), 'exact_dual_ok':dual_ok,'exact_primal_dual_equal':primal==dual,
         'nonzero_weights':[{'factor':f[1],'weight':str(w[z])} for z,f in enumerate(factors) if w[z]],
         'dual_nodes':[{'point':nodes[z],'weight':str(v)} for z,v in enumerate(y) if v]}
    return res
if __name__=='__main__':
    data=[]
    for i in map(int,sys.argv[1:] or ['3','4','5','11','17','23','26','27','30','32','33']):
        t=time.time();r=run(i);r['elapsed_seconds']=time.time()-t;data.append(r)
        print(i,r['line_factors'],r['conic_factors'],r['exact_optimum_if_certified'],r['float_optimum'],flush=True)
        with open(ROOT/'outputs/conic_cover_probe.json','w') as f:json.dump(data,f,indent=2)
