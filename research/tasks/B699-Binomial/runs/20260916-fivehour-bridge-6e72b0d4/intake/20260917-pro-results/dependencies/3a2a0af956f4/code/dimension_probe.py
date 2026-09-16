from math import inf
import json
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
def cnt(D):
 return sum(D-2*b+1 for b in range(D//2+1)) if D>=0 else 0

def cost(r,w,l):
 s=0
 for t in range(r//2+1):
  m=max(0,w-int(t<l)-int(r-t<l))
  s+= cnt(m-1) if 2*t==r else m*(m+1)//2
 return s

def minweights(W,l,rs=(3,4,5,6,7,8)):
 dp=[(0,[])]+[(10**10,[]) for _ in range(W)]
 for r in rs:
  new=[(10**10,[]) for _ in range(W+1)]
  for k in range(W+1):
   for w in range(k+1):
    c=dp[k-w][0]+cost(r,w,l)
    if c<new[k][0]:new[k]=(c,dp[k-w][1]+[w])
  dp=new
 return dp[W]

if __name__ == "__main__":
 out=[]
 for D in range(10,161):
  for l in range(1,7):
   if 2*l>D:continue
   for delta in [0,1,2,3]:
    W=D-delta
    eq,ww=minweights(W,l)
    T=6*delta+1 if delta else 1
    # Z_l has exact origin multiplicity 2
    cols=cnt(D-2*l)-cnt(T-3)
    excess=cols-eq
    if excess>=1:
     out.append(dict(D=D,l=l,delta=delta,T=T,weights=ww,rows=eq,cols=cols,excess=excess))
  if D%20==0:
   print('D',D,'hits',len(out),flush=True)
 (ROOT/'evidence/dimension_probe.json').write_text(json.dumps(out,indent=2))
 print('FIRST',out[:20])
