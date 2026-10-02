import itertools,math,json
import numpy as np
from scipy.optimize import linprog
from fractions import Fraction
pts=[(b,r-b) for r in range(6) for b in range(r+1)]
lines=set()
for (x,y),(u,v) in itertools.combinations(pts,2):
 A=y-v;B=u-x;C=-(A*x+B*y);g=math.gcd(math.gcd(A,B),C)
 A//=g;B//=g;C//=g
 if A<0 or (A==0 and B<0):A,B,C=-A,-B,-C
 if A*B>=0 or (A==-B and abs(C)<=6):lines.add((A,B,C))
lines=sorted(lines)
for L in lines:print('line',L)
na=len(lines);nv=na+5
T=np.array([int(c==0) for a,b,c in lines]);dd=np.array([int(a==-b) for a,b,c in lines]);nd=1-dd
rows=[]
for r in range(1,6):
 for x in range(r+1):
  y=r-x;m=np.zeros(nv);m[:na]=[-int(a*x+b*y+c==0) for a,b,c in lines];m[na+r-1]=1;rows.append(m)
for active in [(1,),(2,),(1,2),(1,3),(1,4),(1,5),(2,3),(2,4)]:
 a=np.r_[-nd,np.ones(5)]
 for r in active:a[na+r-1]=0
 b=np.r_[T-dd,np.zeros(5)]
 ob=np.r_[dd,np.zeros(5)]
 mm=np.vstack([rows,-a,-a-b]);bb=np.r_[np.zeros(len(rows)),-1,-1]
 sol=linprog(ob,A_ub=mm,b_ub=bb,bounds=(0,None),method='highs')
 if sol.success:
  v=sol.x
  print(active,'ddegree',ob@v,'a',a@v,'a+b',(a+b)@v, 'atoms',{str(L):str(Fraction(float(c)).limit_denominator(1000)) for L,c in zip(lines,v[:na]) if c>1e-6},'weights',v[na:])
 else: print(active,sol.message)
