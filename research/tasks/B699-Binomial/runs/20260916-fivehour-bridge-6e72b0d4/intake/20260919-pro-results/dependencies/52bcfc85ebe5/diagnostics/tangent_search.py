import sympy as S, numpy as np, math, json, time
from pathlib import Path
out=Path('/mnt/data/res10_work'); N,J=S.symbols('N J')
P=32749

def monos(D):return [(a,b) for b in range(D//2+1) for a in range(D-2*b+1)]
def coeff(a,b,n0,j0,sl,u,v):
 if v>b:return 0
 z=0
 for ell in range(min(b-v,u)+1):
  k=u-ell
  if k<=a:
   z+=math.comb(b,v)*math.comb(b-v,ell)*math.comb(a,k)*n0**(a-k)*j0**(b-v-ell)*sl**ell
 return z

def block(ms,n0,j0,sl,wt,m):
 return [[coeff(a,b,n0,j0,sl,u,v) for a,b in ms] for v in range((m-1)//wt+1) for u in range(m-wt*v)] if m else []
def mat(ms,w):
 a,b,c=w
 return sum([block(ms,1,0,0,1,a),block(ms,3,0,0,2,b),block(ms,3,2,0,1,b),block(ms,4,0,0,1,c),block(ms,4,3,0,1,c),block(ms,4,4,2,2,c)],[])
def rankmod(A):
 A=np.array([[x%P for x in r] for r in A],dtype=np.int64);nr,nc=A.shape; rr=0
 for c in range(nc):
  nz=np.nonzero(A[rr:,c])[0]
  if len(nz)==0:continue
  piv=rr+int(nz[0]);A[[rr,piv]]=A[[piv,rr]]
  A[rr,c:]=A[rr,c:]*pow(int(A[rr,c]),-1,P)%P
  if rr+1<nr:A[rr+1:,c:]=(A[rr+1:,c:]-A[rr+1:,c,None]*A[rr,c:])%P
  rr+=1
  if rr==nr:break
 return rr
start=time.time();hits=[]
for D in range(3,23):
 ms=monos(D); best=[]
 for a in range(1,D):
  for b in range(1,D+1-a):
   c=D+1-a-b
   if c<1:continue
   # near optimal, but include all cost below modest overdetermination
   rows=a*(a+1)//2+(b+1)**2//4+b*(b+1)//2+c*(c+1)+(c+1)**2//4
   if rows>len(ms)+10:continue
   A=mat(ms,(a,b,c))
   rk=rankmod(A)
   if rk<len(ms):
    print('HIT',D,(a,b,c),len(A),len(ms),rk,'sec',time.time()-start,flush=True)
    vecs=S.polys.matrices.DomainMatrix.from_Matrix(S.Matrix(A)).convert_to(S.QQ).nullspace().to_Matrix()
    # DomainMatrix returns basis in rows
    exprs=[]
    for row in vecs.tolist()[:6]:
     f=S.factor(sum(v*N**i*J**j for v,(i,j) in zip(row,ms)))
     exprs.append(str(f));print(str(f)[:2500],flush=True)
    hits.append(dict(D=D,w=[a,b,c],basis=exprs))
    (out/'tangent_hits.json').write_text(json.dumps(hits,indent=2))
    if hits:raise SystemExit
 print('D',D,'done',round(time.time()-start,2),flush=True)
