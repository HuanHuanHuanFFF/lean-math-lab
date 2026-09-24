"""Finite field rank-25 pruning is a characteristic-zero certificate.
Rank-deficient survivors are resolved over Q; no mod-p inconsistency shortcut.
"""
import search_b22 as exact
from pathlib import Path
from numba import njit
import numpy as np
import time,json
P=10007;OUT=Path(__file__).parent/'fast';OUT.mkdir(exist_ok=True)
@njit
def power(a,n,p):
 b=1
 while n:
  if n&1:b=b*a%p
  a=a*a%p;n//=2
 return b
@njit
def extend_mod(basis,rank,eq):
 A=basis.copy()
 for i in range(eq.shape[0]):
  row=eq[i].copy()
  for p in range(25):
   c=row[p]
   if c==0:continue
   if A[p,p]:
    for k in range(p,25):row[k]=(row[k]-c*A[p,k])%P
   else:
    inv=power(c,P-2,P)
    for k in range(p,25):A[p,k]=row[k]*inv%P
    rank+=1
    if rank==25:return A,rank
    break
 return A,rank
OPTS={r:[(d,m,l,z,np.array(eq,dtype=np.int64)%P) for d,m,l,z,eq in v] for r,v in exact.OPTS.items()}
# RHS conditions remain homogeneous, including the X^4 coefficient.
S={k:0 for k in ('nodes','options','line_reject','rank25_reject','exact_inconsistent','forced_line','leaves')}
DEP=[0]*7;LEAVES=[];START=time.monotonic()
def visit(dep,deficit,A,rank,lines,z,ms):
 S['nodes']+=1;DEP[dep]+=1
 if dep==6:
  if deficit!=2 or z<14:return
  equations=[]
  for r,m in zip(range(3,9),ms):
   for v,mv in zip(exact.VR[r],m):
    for d in range(mv):
     for j in range(d+1):equations.append(exact.jet(r,v,d-j,j))
  B=exact.extend((),equations)
  if B is None:S['exact_inconsistent']+=1;return
  t=exact.forced_line(B)
  if t is not None:S['forced_line']+=1;return
  S['leaves']+=1;item=dict(m=ms,**exact.affine(B));LEAVES.append(item)
  (OUT/'leaves.json').write_text(json.dumps(dict(monomials=exact.MON,leaves=LEAVES),indent=2))
  print('LEAF',len(LEAVES),'dim',24-len(B),ms,flush=True);return
 r=3+dep
 for d,m,l,zz,eq in OPTS[r]:
  if deficit+d>2 or (dep==5 and deficit+d!=2):continue
  if z+zz+sum(len(exact.VR[k]) for k in range(r+1,9))<14:continue
  S['options']+=1;nl=tuple(a+b for a,b in zip(lines,l))
  if max(nl)>8:S['line_reject']+=1;continue
  B,rk=extend_mod(A,rank,eq)
  if rk==25:S['rank25_reject']+=1;continue
  visit(dep+1,deficit+d,B,rk,nl,z+zz,ms+[list(m)])
 if dep<=1:
  print('PROGRESS',ms,S,DEP,round(time.monotonic()-START,2),flush=True)
  (OUT/'checkpoint.json').write_text(json.dumps(dict(stats=S,depth=DEP,seconds=time.monotonic()-START)))
if __name__=='__main__':
 visit(0,0,np.zeros((25,25),dtype=np.int64),0,(0,)*9,0,[])
 (OUT/'result.json').write_text(json.dumps(dict(stats=S,depth=DEP,seconds=time.monotonic()-START,monomials=exact.MON,leaves=LEAVES),indent=2))
 print('FINAL',S,DEP,round(time.monotonic()-START,2),flush=True)
