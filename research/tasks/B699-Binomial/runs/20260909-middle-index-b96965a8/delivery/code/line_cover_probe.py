from math import gcd
from fractions import Fraction
from scipy.optimize import linprog
from scipy.sparse import lil_matrix
import json
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]

def solve(i,R):
    points=[(b,c) for b in range(i) for c in range(i-b)]
    directions=[(a,b) for a in range(-R,R+1) for b in range(-R,R+1) if gcd(a,b)==1 and (a>0 or a==0 and b>0)]
    lines={}
    for a,b in directions:
        for ix,(x,y) in enumerate(points):
            lines.setdefault((a,b,a*x+b*y),[]).append(ix)
    # retain all lines, including singletons: an exact model, not a heuristic.
    keys=list(lines)
    A=lil_matrix((len(points),len(keys)),dtype=float)
    for col,key in enumerate(keys):
        for row in lines[key]: A[row,col]=-1.0
    res=linprog([1.0]*len(keys),A_ub=A.tocsr(),b_ub=[-1.0]*len(points),bounds=(0,None),method='highs')
    assert res.success
    active=[(k,str(Fraction(float(v)).limit_denominator(100000))) for k,v in zip(keys,res.x) if v>1e-8]
    return {'i':i,'R':R,'cost_diagnostic':float(res.fun),'active':active,'dual':[(p,str(Fraction(float(-v)).limit_denominator(100000))) for p,v in zip(points,res.ineqlin.marginals) if v< -1e-8]}

if __name__=='__main__':
    result=[]
    for i in [3,4,5,6,7,8,9,10,11,13,16,19,22,25,27,28,30,32,33]:
        row=[]
        for R in [1,2,3]:
            out=solve(i,R); result.append(out);row.append(out['cost_diagnostic'])
        print(i,row,flush=True)
    with open(ROOT/'outputs'/'line_cover_probe.json','w') as f:json.dump(result,f,indent=2)
