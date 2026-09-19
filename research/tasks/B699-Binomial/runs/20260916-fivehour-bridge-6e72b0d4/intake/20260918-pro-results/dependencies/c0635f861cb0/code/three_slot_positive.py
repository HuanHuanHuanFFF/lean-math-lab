import json,math
from fractions import Fraction
from pathlib import Path
import numpy as np
from scipy.optimize import linprog
r=Path(__file__).resolve().parents[1]
d=json.loads((r/'evidence/three_slot_234_basis.json').read_text());polys=d['polynomials']
sh=[]
for terms in polys:
 ss={}
 for a,b,c in terms:
  for u in range(a+1):
   for v in range(b+1):
    uv=u,v;ss[uv]=ss.get(uv,0)+c*math.comb(a,u)*math.comb(b,v)*6**(a+b-u-v)
 sh.append(ss)
mons=sorted(set().union(*(set(s) for s in sh)))
mat=[[s.get(ab,0) for s in sh] for ab in mons]
mat=[row for row in mat if any(row)]
A=np.array([[float(Fraction(-x,max(map(abs,row)))) for x in row] for row in mat])
b=np.zeros(len(mat));b[0]=-1 # first is constant
res=linprog(np.zeros(len(polys)),A_ub=A,b_ub=b,bounds=[(None,None)]*len(polys),method='highs')
print('status',res.status,'message',res.message,flush=True)
if res.success:
 print('coefficients',res.x,flush=True)
 for lim in [10**3,10**6,10**9]:
  vs=[Fraction(float(x)).limit_denominator(lim) for x in res.x];den=math.lcm(*(v.denominator for v in vs));vs=[int(v*den) for v in vs]
  sums=[sum(a*b for a,b in zip(row,vs)) for row in mat]
  if min(sums)>=0 and sums[0]>0:
   terms={}
   for v,poly in zip(vs,polys):
    for a,b,c in poly:terms[a,b]=terms.get((a,b),0)+v*c
   g=math.gcd(*terms.values());terms=[[a,b,c//g] for (a,b),c in sorted(terms.items()) if c]
   print('accepted',vs,'terms',len(terms),'normbits',sum(abs(c) for a,b,c in terms).bit_length())
   (r/'evidence/three_slot_234_positive.json').write_text(json.dumps({'combination':vs,'terms':terms,'shift':6},indent=2)+'\n');break
 else:print('rational acceptance failed')
