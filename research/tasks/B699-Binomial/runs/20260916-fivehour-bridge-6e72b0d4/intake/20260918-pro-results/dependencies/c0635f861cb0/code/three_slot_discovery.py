"""Exploratory i5 three-slot kernel. No claim before full sign/zero analysis."""
import json,sys,time
from math import comb,gcd
from pathlib import Path
import sympy as S
from sympy.polys.matrices import DomainMatrix
root=Path(__file__).resolve().parents[1]
slots=tuple(map(int,sys.argv[1].split(','))) if len(sys.argv)>1 else (1,2,4)
D=25; mon=[(a,b) for a in range(14) for b in range(14) if a+b<=D]
rows=[]
for r,w,ss in ((3,6,range(4)),(4,8,slots)):
 d=r-1
 for x0 in ss:
  y0=r-x0
  for order in range(w):
   for u in range(order+1):
    v=order-u
    row=[comb(a,u)*comb(b,v)*x0**(a-u)*y0**(b-v)*d**(D-a-b) if a>=u and b>=v else 0 for a,b in mon]
    gg=gcd(*row);rows.append([x//gg for x in row])
print('case',slots,'matrix',len(rows),len(mon),flush=True)
t=time.time();M=S.Matrix(rows);K=DomainMatrix.from_Matrix(M).nullspace().to_Matrix()
print('nullity',K.rows,'seconds',time.time()-t,flush=True)
vecs=[]
for v in K.tolist():
 g=gcd(*(int(x) for x in v));v=[int(x)//g for x in v];vecs.append(v)
print('max bits',max(abs(x).bit_length() for v in vecs for x in v),flush=True)
(root/'evidence'/('three_slot_'+''.join(map(str,slots))+'_seed.json')).write_text(json.dumps({'monomials':mon,'vectors':vecs,'slots':slots,'degree':D,'weights':{'1':12,'3':6,'4':8}},indent=2)+'\n')
