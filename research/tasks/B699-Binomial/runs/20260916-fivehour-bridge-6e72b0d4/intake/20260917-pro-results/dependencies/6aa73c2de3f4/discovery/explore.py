from fractions import Fraction
from itertools import combinations
from math import gcd
import numpy as np
from scipy.optimize import linprog

def norm(a,b,c):
 g=gcd(gcd(abs(a),abs(b)),abs(c)); a,b,c=a//g,b//g,c//g
 if a<0 or (a==0 and b<0):a,b,c=-a,-b,-c
 return a,b,c

for missing in [0,1,2,3]:
 pts=[(r,b,b,r-b) for r in (1,3,4) for b in range(r+1) if (r,b)!=(3,missing)]
 xy=[(x,y) for r,b,x,y in pts]+[(0,0)]
 lines=set()
 for (x,y),(u,v) in combinations(xy,2):
  if (x,y)==(u,v):continue
  a,b,c=norm(y-v,u-x,x*v-u*y)
  if abs(c)>6 or (c==0 and abs(a-b)>9):continue
  lines.add((a,b,c))
 lines=sorted(lines)
 n=len(lines)
 costs=[1]*n+[0,0,0]
 Aub=[]
 for r,b,x,y in pts:
  row=[-int(a*x+bb*y+c==0) for a,bb,c in lines]+[int(r==t) for t in (1,3,4)]
  Aub.append(row)
 res=linprog(costs,A_ub=Aub,b_ub=[0]*len(Aub),A_eq=[[0]*n+[1,1,1]],b_eq=[1],bounds=(0,None),method='highs')
 print('missing',missing,'nlines',n,'opt',res.fun, 'w',res.x[-3:])
 print([(abc,str(Fraction(float(v)).limit_denominator(10000))) for abc,v in zip(lines,res.x) if v>1e-7])
