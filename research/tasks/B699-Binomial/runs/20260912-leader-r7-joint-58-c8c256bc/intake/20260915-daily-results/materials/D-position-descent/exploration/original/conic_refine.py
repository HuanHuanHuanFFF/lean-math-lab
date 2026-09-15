from flow_test import *
from pathlib import Path

def signcert(d,deg,f):
 if deg==1:
  a,b,c=f
  # j=d+1+x, k=d+1+x+y
  vals=(a+b,b,(a+b)*(d+1)+c)
 else:
  a,b,c,D,E,F=f;h=d+1
  vals=(a+b+c,b+2*c,c,2*h*(a+b+c)+D+E,h*(b+2*c)+E,h*h*(a+b+c)+h*(D+E)+F)
 return (all(v>=0 for v in vals) and vals[-1]>0) or(all(v<=0 for v in vals) and vals[-1]<0)
for d,hcount in [(4,2),(6,2),(8,3)]:
 dat=json.loads(Path(__file__).with_name(f'conic_{d}_{hcount}.json').read_text());funcs=dat['functions']
 pts=[(b,r-b) for r in range(d) for b in range(r+1)]; rows=[sum(p) for p in pts]
 mat=np.array([[int(i in inds) for i in range(len(pts))] for deg,l,inds in funcs])
 rowmat=np.array([[int(rows[i]==r) for i in range(len(pts))] for r in range(d)])
 out=[]
 for H in combinations(range(d),hcount):
  rough=set(range(d))-set(H)
  eligible=[k for k,(deg,l,inds) in enumerate(funcs) if signcert(d,deg,l) or any(all(rows[i]!=r for i in inds) for r in rough)]
  L=np.concatenate([mat[eligible],-rowmat[list(rough)]],axis=0)
  b=np.array([funcs[k][0] for k in eligible]+[-1]*len(rough))
  res=linprog(np.zeros(len(pts)),A_ub=L,b_ub=b,bounds=(0,None),method='highs')
  out.append((H,res.status,None if res.x is None else res.x.tolist()))
 print('refined',d,hcount,'infeasible',[H for H,s,x in out if s==2],flush=True)
 Path(__file__).with_name(f'refined_{d}_{hcount}.json').write_text(json.dumps({'d':d,'hcount':hcount,'cases':out}))
