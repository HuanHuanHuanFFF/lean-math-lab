"""SymPy-free exact checker for square-at-infinity and ideal-membership DAGs."""
from fractions import Fraction as F
import json,sys,time,math
from pathlib import Path
if not __debug__:
    raise RuntimeError('Certificate validation requires assertions: do not use python -O.')
sys.set_int_max_str_digits(0)

class Poly:
 def __init__(self,n,d=None):self.n=n;self.d={tuple(m):F(c) for m,c in (d or {}).items() if c}
 @classmethod
 def constant(cls,n,c):return cls(n,{(0,)*n:F(c)})
 @classmethod
 def variable(cls,n,i):m=[0]*n;m[i]=1;return cls(n,{tuple(m):F(1)})
 def cp(self,a):return a if isinstance(a,Poly) else Poly.constant(self.n,a)
 def __add__(self,a):
  a=self.cp(a);d=dict(self.d)
  for m,c in a.d.items():
   d[m]=d.get(m,F(0))+c
   if not d[m]:del d[m]
  return Poly(self.n,d)
 __radd__=__add__
 def __neg__(self):return Poly(self.n,{m:-c for m,c in self.d.items()})
 def __sub__(self,a):return self+-self.cp(a)
 def __rsub__(self,a):return self.cp(a)+-self
 def __mul__(self,a):
  a=self.cp(a);d={}
  for m,c in self.d.items():
   for mm,cc in a.d.items():
    k=tuple(x+y for x,y in zip(m,mm));d[k]=d.get(k,F(0))+c*cc
  return Poly(self.n,d)
 __rmul__=__mul__
 def __truediv__(self,a):return self*F(1,a) if isinstance(a,int) else self*(1/F(a))
 def __pow__(self,k):
  assert k>=0;r=Poly.constant(self.n,1);p=self
  while k:
   if k&1:r=r*p
   k//=2
   if k:p=p*p
  return r
 def coeff(self,i,e):
  d={}
  for m,c in self.d.items():
   if m[i]==e:
    mm=list(m);mm[i]=0;d[tuple(mm)]=c
  return Poly(self.n,d)
 def drop(self,i):
  assert all(m[i]==0 for m in self.d)
  return Poly(self.n-1,{m[:i]+m[i+1:]:c for m,c in self.d.items()})
 def var_div(self,i,e):
  assert all(m[i]>=e for m in self.d)
  d={}
  for m,c in self.d.items():
   mm=list(m);mm[i]-=e;d[tuple(mm)]=c
  return Poly(self.n,d)
 def exact_x_div(self,g):
  # monic univariate divisor in last variable only
  i=self.n-1;degree=max((m[i] for m in g.d),default=-1)
  lead=g.coeff(i,degree);assert lead==1
  r=self;q=Poly.constant(self.n,0);x=Poly.variable(self.n,i)
  while r.d and max(m[i] for m in r.d)>=degree:
   rd=max(m[i] for m in r.d);c=r.coeff(i,rd);qt=c*x**(rd-degree)
   q=q+qt;r=r-qt*g
  assert not r.d, 'nonzero exact-division remainder'
  return q
 def __eq__(self,a):return self.d==self.cp(a).d
 def serial(self):return [[list(m),c.numerator,c.denominator] for m,c in sorted(self.d.items())]
 @classmethod
 def load(cls,n,terms):
  seen={}
  for mon,num,den in terms:
   assert len(mon)==n and all(isinstance(e,int) and e>=0 for e in mon)
   assert den>0 and num!=0 and tuple(mon) not in seen
   assert math.gcd(num,den)==1
   seen[tuple(mon)]=F(num,den)
  return cls(n,seen)

def square_resid(P,N):
 n=P.n;idx=n-1;x=Poly.variable(n,idx)
 assert P.coeff(idx,2*N)==1 and max(m[idx] for m in P.d)==2*N
 B=x**N
 for deg in range(2*N-1,N-1,-1):
  B=B+(P-B*B).coeff(idx,deg)*x**(deg-N)/2
 R=P-B*B
 assert not R.d or max(m[idx] for m in R.d)<N
 return [R.coeff(idx,i).drop(idx) for i in range(N-1,-1,-1)]

