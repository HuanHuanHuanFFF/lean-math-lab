#!/usr/bin/env python3
"""Optional exact discovery check; not needed by the main proof replay."""
from pathlib import Path
from fractions import Fraction
from math import comb
import json
root=Path(__file__).resolve().parent
seed=json.loads((root/'interpolation_seed.json').read_text())
points=[(b,r-b) for r in range(6) for b in range(r+1)]
T=[10 if x+y in (0,1) else [10,7,6,5][x+y-2] for x,y in points]
for a,b,c in seed['peeled_lines']:
    T=[max(0,m-int(a*x+b*y+c==0)) for (x,y),m in zip(points,T)]
d=seed['remainder_degree'];mon=[(i,j) for i in range(d+1)for j in range(d-i+1)]
rows=[]
for (x,y),m in zip(points,T):
    for u in range(m):
        for v in range(m-u):
            rows.append([Fraction(comb(i,u)*comb(j,v)*x**(i-u)*y**(j-v)) if i>=u and j>=v else Fraction(0) for i,j in mon])
coeff={(i,j):c for i,j,c in seed['remainder_terms']};vector=[coeff.get(m,0) for m in mon]
assert all(sum(c*v for c,v in zip(row,vector))==0 for row in rows)
r=0
for col in range(len(mon)):
    piv=next((i for i in range(r,len(rows)) if rows[i][col]),None)
    if piv is None:continue
    rows[r],rows[piv]=rows[piv],rows[r]
    q=rows[r][col];rows[r]=[v/q for v in rows[r]]
    for i in range(len(rows)):
        if i!=r and rows[i][col]:
            q=rows[i][col];rows[i]=[a-q*b for a,b in zip(rows[i],rows[r])]
    r+=1
assert (len(rows),len(mon),r)==(33,28,27)
print(json.dumps({'status':'PASS_C24_EXACT_DISCOVERY_SEED','equations':33,'unknowns':28,'rank':27,'kernel_dimension':1},indent=2))
