from kernel_algebra import *
from pathlib import Path
import json,time
ROOT=Path(__file__).resolve().parents[1]
D=80;T=13;mu=[5,4,3,2];weights={3:20,4:16,5:13,6:11,7:10,8:8}
def specifications():
 bs=basis(D-2*sum(mu),T-2*mu[0]);rows=[]
 for r,w in weights.items():
  for s in range(r//2+1):
   m=w-(mu[s] if s<len(mu) else 0)-(mu[r-s] if r-s<len(mu) else 0)
   for v in range(m):
    for u in range(max(0,m-(2 if 2*s==r else 1)*v)):rows.append((r,s,u,v))
 return bs,rows

def get_matrix():
 bs,rows=specifications();A=[[entry(a,b,row) for a,b in bs] for row in rows];contents=[]
 for i,row in enumerate(A):
  d=reduce(gcd,row);contents.append(d)
  if d>1:A[i]=[x//d for x in row]
 return A,bs,rows,contents

if __name__=='__main__':
 st=time.time();A,bs,rows,cont=get_matrix();rr=rref_mod(A);p=1000003
 C=(sum(sum(x*x for x in A[i]).bit_length() for i in rr['rows'])+1)//2
 print('SHAPE',len(rows),len(bs),'RANK',rr['rank'],'LEFTNULL',len(rows)-rr['rank'],'RIGHTNULL',len(bs)-rr['rank'],'Cbits',C,flush=True)
 # restriction at N=9 strips no further known factors
 import sympy as s
 X=s.symbols('X');fs=[]
 for v in rr['kernel']:
  f=[0]*27
  for z,(a,b) in zip(v,bs):f[b]=(f[b]+z*pow(9,a,p))%p
  fs.append(f)
 print('FREE',[bs[x] for x in rr['free']],flush=True)
 pol=[s.Poly.from_list(f[::-1],X,modulus=p) for f in fs]
 print('GCD',s.gcd(pol[0],pol[1]),flush=True)
 res=sylvester_mod(fs[0],fs[1],26,p);print('RESULTANT',res,flush=True)
 rr.update(D=D,T=T,mu=mu,weights=weights,prime=p,matrix_shape=[len(rows),len(bs)],row_content=cont,coefficient_bound_bits=C,resultant_at_9=res,basis=bs,equations=rows,seconds=time.time()-st)
 (ROOT/'evidence/h012_reduced_mod.json').write_text(json.dumps(rr,indent=2))
 print('DONE',time.time()-st,flush=True)
