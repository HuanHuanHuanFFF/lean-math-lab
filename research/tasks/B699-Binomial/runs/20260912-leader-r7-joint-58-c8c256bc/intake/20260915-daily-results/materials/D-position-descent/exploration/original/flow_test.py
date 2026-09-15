from itertools import combinations
from math import gcd
import numpy as np
from scipy.optimize import linprog
import json,time

def norm(a,b,c):
 g=gcd(gcd(abs(a),abs(b)),abs(c));a,b,c=a//g,b//g,c//g
 if a<0 or a==0 and b<0:a,b,c=-a,-b,-c
 return a,b,c

def run(d,hcount):
 pts=[(b,r-b) for r in range(d) for b in range(r+1)]
 rows=[x+y for x,y in pts]
 lines={norm(y-v,u-x,x*v-u*y) for (x,y),(u,v) in combinations(pts,2)}
 linepts={l:[i for i,(x,y) in enumerate(pts) if l[0]*x+l[1]*y+l[2]==0] for l in lines}
 mat=np.array([[int(i in inds) for i in range(len(pts))] for l,inds in linepts.items()])
 rowmat=np.array([[int(rows[i]==r) for i in range(len(pts))] for r in range(d)])
 out=[]
 for H in combinations(range(d),hcount):
  rough=set(range(d))-set(H)
  eligible=[k for k,(l,inds) in enumerate(linepts.items()) if any(all(rows[i]!=r for i in inds) for r in rough)]
  A=mat[eligible];L=np.concatenate([A,-rowmat[list(rough)]],axis=0)
  b=np.array([1]*len(A)+[-1]*len(rough))
  res=linprog(np.zeros(len(pts)),A_ub=L,b_ub=b,bounds=(0,None),method='highs')
  out.append((H,res.status))
 print(d,hcount,'points',len(pts),'lines',len(lines),'infeasible',[x for x,s in out if s==2],flush=True)
 return out
if __name__=='__main__':
 for d,h in [(4,2),(6,2),(6,3),(8,3),(8,4)]:run(d,h)
