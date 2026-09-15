from flow_test import *
from itertools import product
from pathlib import Path

def run3(d,hcount):
 pts=[(b,r-b) for r in range(d) for b in range(r+1)]; rows=[sum(p) for p in pts]
 lines=sorted({norm(y-v,u-x,x*v-u*y) for (x,y),(u,v) in combinations(pts,2)})
 funcs=[(1,l,[i for i,(x,y) in enumerate(pts) if l[0]*x+l[1]*y+l[2]==0]) for l in lines]
 patterns={}
 for a,b,c in product(range(-2,3),repeat=3):
  if (a,b,c)==(0,0,0): continue
  if next(v for v in (a,b,c) if v)!=abs(next(v for v in (a,b,c) if v)):continue
  for D,E in product(range(-12,13),repeat=2):
   values={}
   for i,(x,y) in enumerate(pts):values.setdefault(a*x*x+b*x*y+c*y*y+D*x+E*y,[]).append(i)
   for F,inds in values.items():
    if len(inds)>=5:patterns.setdefault(tuple(inds),(a,b,c,D,E,-F))
 funcs += [(2,f,list(inds)) for inds,f in patterns.items()]
 print('functions',d,len(funcs),flush=True)
 mat=np.array([[int(i in inds) for i in range(len(pts))] for deg,l,inds in funcs])
 rowmat=np.array([[int(rows[i]==r) for i in range(len(pts))] for r in range(d)])
 out=[]
 for H in combinations(range(d),hcount):
  rough=set(range(d))-set(H)
  eligible=[k for k,(deg,l,inds) in enumerate(funcs) if any(all(rows[i]!=r for i in inds) for r in rough)]
  A=mat[eligible];L=np.concatenate([A,-rowmat[list(rough)]],axis=0)
  b=np.array([funcs[k][0] for k in eligible]+[-1]*len(rough))
  res=linprog(np.zeros(len(pts)),A_ub=L,b_ub=b,bounds=(0,None),method='highs')
  out.append((H,res.status, None if res.x is None else res.x.tolist()))
 print(d,hcount,'infeasible',[x for x,s,z in out if s==2],flush=True)
 Path(__file__).with_name(f'conic_{d}_{hcount}.json').write_text(json.dumps({'d':d,'hcount':hcount,'functions':funcs,'cases':out}))
 return out
if __name__=='__main__':
 for d,h in [(4,2),(6,2),(8,3)]:run3(d,h)
