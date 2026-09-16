"""Exact modular rank diagnostics, not a rational-kernel certificate."""
from math import comb,gcd
from functools import reduce
import numpy as np,json,time,re
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
P=1000003

def matrix(D,mu,w,z):
 L=D-2*sum(mu);bs=[(a,b) for b in range(L//2+1) for a in range(L-2*b+1)]
 spec=[]
 for r,ww in [(1,z),(2,z)]+list(zip(range(3,9),w)):
  for s in range(r//2+1):
   t=r-s;m=ww-(mu[s] if s<len(mu) else 0)-(mu[t] if t<len(mu) else 0)
   for v in range(max(m,0)):
    for u in range(max(m-(2*v if s==t else v),0)):spec.append((r,s,u,v))
 def entry(a,b,eq):
  r,s,u,v=eq;t=r-s
  if b<v:return 0
  if s!=t:
   if a<u:return 0
   return comb(a,u)*comb(b,v)*r**(a-u)*(s*t)**(b-v)
  return comb(b,v)*sum(comb(b-v,h)*comb(a,u-h)*(s*s)**(b-v-h)*s**h*r**(a-u+h) for h in range(max(0,u-a),min(b-v,u)+1))
 rows=[]
 for eq in spec:
  row=[entry(a,b,eq) for a,b in bs];g=reduce(gcd,row)
  if g:row=[v//g for v in row]
  rows.append(row)
 return rows,bs,spec

def modrank(rows,p=P):
 A=np.array([[v%p for v in row] for row in rows],dtype=np.int64);m,n=A.shape;rk=0;piv=[]
 for col in range(n):
  inds=np.flatnonzero(A[rk:,col])
  if len(inds)==0:continue
  i=rk+int(inds[0]);A[[rk,i]]=A[[i,rk]]
  A[rk,col:]=A[rk,col:]*pow(int(A[rk,col]),-1,p)%p
  for off in range(rk+1,m,128):
   block=A[off:off+128,col:];block[:]=(block-A[off:off+128,col,None]*A[rk,col:])%p
  piv.append(col);rk+=1
  if rk==m:break
 return rk,A,piv

if __name__=='__main__':
 candidates=[(50,[5,4,4,3],[13,10,8,7,6,5],11),(75,[6,5,4,3],[19,15,13,10,9,8],11),(100,[6,5,4,3],[25,20,17,14,12,11],11)]
 out=[]
 for D,mu,w,z in candidates:
  st=time.time();rows,bs,spec=matrix(D,mu,w,z);rank,_,_=modrank(rows)
  ans={'D':D,'mu':mu,'w':w,'z':z,'shape':[len(rows),len(bs)],'rank':rank,'nullity':len(bs)-rank,'seconds':time.time()-st};out.append(ans);print(ans,flush=True)
 (ROOT/'evidence/rank_probe.json').write_text(json.dumps(out,indent=2))
