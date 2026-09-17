"""Discovery-only exact/modular Hermite probe; does not establish a number-theoretic theorem."""
import math,heapq,json,time
from pathlib import Path
import numpy as np
ROOT=Path(__file__).resolve().parents[1]
P=1000003

def weights(D,rows):
 q=[(r+1,r) for r in rows];heapq.heapify(q);w=dict.fromkeys(rows,0)
 for _ in range(D+1):
  _,r=heapq.heappop(q);w[r]+=1;heapq.heappush(q,((r+1)*(w[r]+1),r))
 return w

def matrix(D,w,peel=3,p=P,antidiagonal=None,origin=0):
 d=D-2*peel
 basis=[(a,b) for b in range(d//2+1) for a in range(d-2*b+1) if a+2*b>=origin and (antidiagonal is None or a>0 or b==antidiagonal)]
 rows=[];spec=[]
 for r,W in w.items():
  for s in range(r//2+1):
   t=r-s;z=int(s<peel)+int(t<peel);m=max(0,W-z)
   for v in range(m if s!=t else (m+1)//2):
    for u in range(m-v if s!=t else m-2*v):
     row=[]
     for a,b in basis:
      if b<v:row.append(0);continue
      if s!=t:
       c=math.comb(a,u)*math.comb(b,v)*pow(r,a-u,p)*pow(s*t,b-v,p)%p if a>=u else 0
      else:
       c=0
       for h in range(max(0,u-a),min(b-v,u)+1):
        c+=math.comb(b-v,h)*math.comb(a,u-h)*pow(s*t,b-v-h,p)*pow(s,h,p)*pow(r,a-u+h,p)
       c=c*math.comb(b,v)%p
      row.append(c)
     rows.append(row);spec.append((r,s,u,v))
 return np.array(rows,dtype=np.int64),basis,spec

def rref(A,p=P):
 A=A.copy();nr,nc=A.shape;row=0;piv=[]
 for col in range(nc):
  poss=np.flatnonzero(A[row:,col])
  if not len(poss):continue
  ix=row+int(poss[0]);A[[row,ix]]=A[[ix,row]]
  A[row,col:]=A[row,col:]*pow(int(A[row,col]),-1,p)%p
  # Eliminate rows below only, for a rank diagnostic.
  if row+1<nr:
   for st in range(row+1,nr,128):
    en=min(nr,st+128)
    A[st:en,col:] = (A[st:en,col:]-A[st:en,col,None]*A[row,None,col:])%p
  piv.append(col);row+=1
  if row==nr:break
 return A,piv

if __name__=='__main__':
 import argparse
 ar=argparse.ArgumentParser();ar.add_argument('--degrees',default='24,32,40,48,56,62,68');args=ar.parse_args()
 results=[]
 for D in map(int,args.degrees.split(',')):
  w=weights(D,[2,4,5,6,7,8]);start=time.time()
  A,bs,spec=matrix(D,w,peel=3,antidiagonal=0)
  # Put constant last, so its being a nonpivot detects an inhomogeneous solution.
  idx=bs.index((0,0));perm=list(range(1,len(bs)))+[0];A=A[:,perm];bsp=[bs[i] for i in perm]
  _,piv=rref(A)
  result={'D':D,'weights':w,'shape':A.shape,'rank_mod':len(piv),'constant_in_span':len(bs)-1 not in piv,'seconds':time.time()-start}
  results.append(result);print(json.dumps(result),flush=True)
  (ROOT/'logs/kernel_probe.json').write_text(json.dumps(results,indent=2))
