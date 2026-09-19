from pathlib import Path
import json,math,time,sys
import sympy as sp
from sympy.polys.matrices import DomainMatrix
root=Path(__file__).parents[1]
pts=[(r,s*(r-s))for r in range(3,9)for s in range(r//2+1)]
records=[(210927,[5,5,3,3,5,5]),(226287,[5,5,3,5,3,5]),(242671,[5,5,3,5,3,5]),(829423,[5,5,3,3,5,5])]
b=[(a,c)for c in range(12)for a in range(24-2*c)]
for mask,ms in records:
 out=root/f'evidence/four_kernel_{mask}.json'
 if out.exists():continue
 t0=time.monotonic();rows=[]
 for idx,(r,v)in enumerate(pts):
  if not(mask>>idx&1):continue
  m=ms[r-3]
  for i in range(m):
   for h in range(m-i):
    rows.append([math.comb(a,i)*math.comb(c,h)*r**(a-i)*v**(c-h)if a>=i and c>=h else 0 for a,c in b])
 print('START',mask,len(rows),len(b),flush=True)
 M=DomainMatrix.from_list_sympy(len(rows),len(b),rows).to_field()
 ns=M.nullspace().to_Matrix();assert ns.rows
 vec=list(ns.row(0));den=sp.ilcm(*[x.q for x in vec]);vec=[int(x*den)for x in vec];g=math.gcd(*vec);vec=[x//g for x in vec]
 if next(x for x in vec if x)!=abs(next(x for x in vec if x)):vec=[-x for x in vec]
 assert all(sum(a*c for a,c in zip(row,vec))==0 for row in rows)
 data={'mask':mask,'degree':23,'weights':ms,'rows':len(rows),'columns':len(b),'vector':vec,'l1_bits':sum(map(abs,vec)).bit_length(),'kernel_dimension_discovery':ns.rows,'elapsed':time.monotonic()-t0}
 out.write_text(json.dumps(data,indent=2));print('DONE',mask,data['l1_bits'],data['elapsed'],flush=True)
