from flow_test import *

def run2(d,hcount):
 pts=[(b,r-b) for r in range(d) for b in range(r+1)];rows=[sum(p) for p in pts]
 lines=sorted({norm(y-v,u-x,x*v-u*y) for (x,y),(u,v) in combinations(pts,2)})
 funcs=[(1,l,[i for i,(x,y) in enumerate(pts) if l[0]*x+l[1]*y+l[2]==0]) for l in lines]
 for a in range(-d,d+1):
  for b in range(-d,d+1):
   values={}
   for i,(x,y) in enumerate(pts):values.setdefault((x-a)*(y-b),[]).append(i)
   for c,inds in values.items():
    if c and len(inds)>=3:funcs.append((2,(a,b,c),inds))
 print('funcs',d,len(funcs),flush=True)
 mat=np.array([[int(i in inds) for i in range(len(pts))] for deg,l,inds in funcs])
 rowmat=np.array([[int(rows[i]==r) for i in range(len(pts))] for r in range(d)])
 out=[]
 for H in combinations(range(d),hcount):
  rough=set(range(d))-set(H)
  eligible=[k for k,(deg,l,inds) in enumerate(funcs) if any(all(rows[i]!=r for i in inds) for r in rough)]
  A=mat[eligible];L=np.concatenate([A,-rowmat[list(rough)]],axis=0)
  b=np.array([funcs[k][0] for k in eligible]+[-1]*len(rough))
  res=linprog(np.zeros(len(pts)),A_ub=L,b_ub=b,bounds=(0,None),method='highs')
  out.append((H,res.status))
 print(d,hcount,'infeasible',[x for x,s in out if s==2],flush=True)
 return out
if __name__=='__main__':
 for d,h in [(4,2),(6,2),(6,3),(8,3),(8,4)]:run2(d,h)
