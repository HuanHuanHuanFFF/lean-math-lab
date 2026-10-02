import numpy as np,itertools,json
from scipy.optimize import linprog
# variables w,u,v,e3,n3,e4,n4,e5,n5,c5
names=['w','u','v','e3','n3','e4','n4','e5','n5','c5']; ix={v:i for i,v in enumerate(names)}
def row(**kw):
 r=np.zeros(len(names))
 for k,v in kw.items():r[ix[k]]=v
 return r
A=[row(u=1,n3=1,c5=1,w=-2),row(v=1,n4=1,w=-2),row(e3=1,n5=1,w=-2),row(e4=1,w=-2),row(e5=1,w=-2),row(v=1,e3=1,e4=1,e5=1,w=2,u=1),row(n3=1,n4=1,n5=1,u=1)]
b=[0,0,0,0,0,2,2]
E=[row(e3=1,n3=1),row(e4=1,n4=1),row(e5=1,n5=1,c5=1)];h=[1,1,1]
for delt in [.216,.25,.3,.3333]:
 for orient in itertools.product([0,1],repeat=3):
  aa=A.copy();bb=b.copy()
  for edge,i in zip([['w','u'],['w','v'],['u','v']],orient):aa.append(row(**{edge[i]:-1}));bb.append(-delt)
  s=linprog(np.zeros(len(names)),A_ub=aa,b_ub=bb,A_eq=E,b_eq=h,bounds=[(0,1)]*len(names),method='highs')
  if s.success:print('delta',delt,'orient',orient,{k:round(v,5) for k,v in zip(names,s.x)})
