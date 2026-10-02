"""Complete nondecreasing exact-type multiset enumeration using suffix minima."""
from common import *
import collections,time,hashlib

def enumerate_types(ty,C,h):
 n=len(ty);sh=tuple(c+1 for c in C);suf=np.full((n+1,9,*sh),10000,dtype=np.int32);suf[:,0]=0
 for i in range(n-1,-1,-1):
  e,*c=ty[i];dst=tuple(slice(a,None) for a in c);src=tuple(slice(0,b-a) for a,b in zip(c,sh))
  for k in range(1,9):
   suf[i,k]=suf[i+1,k];suf[i,k][dst]=np.minimum(suf[i,k][dst],e+suf[i,k-1][src])
 out=[]
 def dfs(i,k,B,budget,path):
  if k==0:out.append((path,h-budget,B));return
  for j in range(i,n):
   e,*c=ty[j]
   if e>budget:break
   if any(a>b for a,b in zip(c,B)):continue
   rem=tuple(b-a for a,b in zip(c,B))
   if int(suf[j,k-1][rem])+e>budget:continue
   dfs(j,k-1,rem,budget-e,path+(j,))
 dfs(0,8,C,h,());return out,int(suf[0,8][C])

