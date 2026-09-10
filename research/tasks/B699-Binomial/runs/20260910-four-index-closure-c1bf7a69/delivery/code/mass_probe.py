import numpy as np
from scipy.optimize import linprog

def run(i,x):
 terms=[(b,a-b) for a in range(i) for b in range(a+1)];L=len(terms)
 eq=np.zeros((i,L+1));up=np.zeros((2*i,L+1));up[:,-1]=-1
 for k,(b,c) in enumerate(terms):eq[b+c,k]=1;up[b,k]=1;up[i+c,k]=1
 ob=np.zeros(L+1);ob[-1]=1
 r=linprog(ob,A_eq=eq,b_eq=x,A_ub=up,b_ub=np.zeros(2*i),bounds=(0,None),method='highs')
 return r
if __name__=='__main__':
 for i in [16,19,22,25]:
  t=(i+2)//3
  x=[0]*(t-6)+[0,0,.098,.227,.259,.329]+[1]*(i-t)
  r=run(i,x);print(i,r.fun,r.eqlin.marginals)
