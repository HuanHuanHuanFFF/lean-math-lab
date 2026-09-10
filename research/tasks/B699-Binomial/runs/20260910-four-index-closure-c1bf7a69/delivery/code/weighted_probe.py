import sys,math,json,itertools
from pathlib import Path
import numpy as np
from scipy.optimize import linprog
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'baseline/low/code'))
from graph_diagnostic import EXPLICIT,EFFECTIVE

def vectors(edges,den):
 vs=set()
 for perm in itertools.permutations([2,3,5,7,11,13]):
  z=[]
  for p in perm:
   z.append(max([0]+z[-1:]+[edges.get(tuple(sorted([p,q])),0) for q in perm[:len(z)]]))
  vs.add(tuple(z))
 return [[v/den for v in row] for row in sorted(vs)]

def run(i,edges=EXPLICIT,den=1000):
 t=sum(all(p%d for d in range(2,math.isqrt(p)+1)) for p in range(2,i))
 # variables w_0..w_i-1, B_0..B_i-1, gain
 N=2*i+1;rows=[];rhs=[]
 for a in range(i):
  for b in range(a+1):
   r=np.zeros(N);r[a]=1;r[i+b]-=1;r[i+a-b]-=1;rows.append(r);rhs.append(0)
 for a in range(i-1):
  r=np.zeros(N);r[a+1]=1;r[a]=-1;rows.append(r);rhs.append(0)
 for z in vectors(edges,den):
  zz=[0]*(t-6)+z
  row=np.zeros(N);row[-1]=1;row[:i]=-1;row[:t]+=1-np.array(zz);row[i:2*i]=2
  rows.append(row);rhs.append(0)
 obj=np.zeros(N);obj[-1]=-1
 res=linprog(obj,A_ub=np.array(rows),b_ub=np.array(rhs),bounds=[(1,1)]+[(0,1)]*(i-1)+[(0,None)]*i+[(None,None)],method='highs')
 return dict(i=i,t=t,success=res.success,gain=res.x[-1],weights=list(res.x[:i]),B=list(res.x[i:2*i]),vectors=len(vectors(edges,den)))
if __name__=='__main__':
 out=[run(i) for i in [16,19,22,25]]
 for x in out:print(x)
 (ROOT/'outputs/weighted_probe.json').write_text(json.dumps(out,indent=2))
