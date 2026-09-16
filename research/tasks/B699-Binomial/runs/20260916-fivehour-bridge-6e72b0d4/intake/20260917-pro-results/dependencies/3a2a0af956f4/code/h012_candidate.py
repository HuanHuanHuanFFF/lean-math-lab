from kernel_algebra import *
from pathlib import Path
import json,time,math
ROOT=Path(__file__).resolve().parents[1];t=time.time()
D=80;T=13;l=1;w=dict(zip(range(3,9),[20,16,13,11,10,8]))
A,bs,rows=build(D,w,l,T)
content=[]
for i,row in enumerate(A):
 d=reduce(gcd,row);content.append(d)
 if d>1:A[i]=[x//d for x in row]
print('BUILT',len(rows),len(bs),'maxbits',max(abs(z).bit_length() for row in A for z in row),time.time()-t,flush=True)
rr=rref_mod(A)
# Hadamard bit bound for any replaced column: row Euclidean norm over ALL columns.
rowbits=[sum(x*x for x in row).bit_length() for row in A]
C=(sum(rowbits[i] for i in rr['rows'])+1)//2
print('RANK',rr['rank'],'LEFTDEF',len(rows)-rr['rank'],'KERNEL',len(rr['kernel']),'HADAMARD_BITS',C,'ZERO_EST',80*C,flush=True)
res=[]
import sympy as s
X=s.symbols('X')
for N in [0,9,10,11,20]:
 fs=[]
 for v in rr['kernel']:
  f=[0]*(D//2+1)
  for z,(a,b) in zip(v,bs):f[b]=(f[b]+z*pow(N,a,1000003))%1000003
  fs.append(f)
 pol=[s.Poly.from_list(f[::-1],X,modulus=1000003) for f in fs]
 gcdpoly=s.gcd(pol[0],pol[1]);out={'N':N,'degrees':[p.degree() for p in pol],'gcddegree':gcdpoly.degree(),'gcd':str(gcdpoly.as_expr())}
 print(out,flush=True);res.append(out)
rr.update(D=D,T=T,l=l,weights=w,basis=bs,equations=rows,row_content=content,coefficient_bound_bits=C,row_norm_bits=rowbits,restrictions=res,seconds=time.time()-t)
(ROOT/'evidence/h012_candidate.json').write_text(json.dumps(rr,indent=2))
print('DONE',time.time()-t,flush=True)
