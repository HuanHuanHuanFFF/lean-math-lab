"""Small exact INTEGER sparse polynomial implementation, standard library only.
No symbolic engine is imported. Polynomials are exponent-tuples -> Python ints.
"""
from fractions import Fraction
from math import gcd

def const(n,c):return {(0,)*n:int(c)} if c else {}
def var(n,i):
 m=[0]*n;m[i]=1;return {tuple(m):1}
def add(a,b):
 out=dict(a)
 for m,c in b.items():
  v=out.get(m,0)+c
  if v:out[m]=v
  else:out.pop(m,None)
 return out
def scale(a,c):return {m:v*c for m,v in a.items() if v*c}
def divscalar(a,d):
 if not d:raise ZeroDivisionError
 assert all(c%d==0 for c in a.values()),'non-exact integer scalar division'
 return {m:c//d for m,c in a.items()}
def sub(a,b):return add(a,scale(b,-1))
def mul(a,b):
 if not a or not b:return {}
 if len(a)>len(b):a,b=b,a
 n=len(next(iter(a)));out={}
 if n==3:
  for (i,j,k),c in a.items():
   for (v,w,z),d in b.items():
    m=(i+v,j+w,k+z);out[m]=out.get(m,0)+c*d
 else:
  for m,c in a.items():
   for v,d in b.items():
    k=tuple(x+y for x,y in zip(m,v));out[k]=out.get(k,0)+c*d
 return {m:c for m,c in out.items() if c}
def power(a,k,n=3):
 if k<0:raise ValueError('nonnegative powers only')
 out=const(n,1)
 while k:
  if k&1:out=mul(out,a)
  k//=2
  if k:a=mul(a,a)
 return out
def product(*items):
 if any(not p for p in items):return {}
 out=const(len(next(iter(next(p for p in items if p)))),1) if items else const(3,1)
 for p in items:out=mul(out,p)
 return out
def degree(p,i):return max((m[i] for m in p),default=-1)
def unpack(ts,n):
 p={}
 for m,c in ts:
  if len(m)!=n or any(not isinstance(e,int) or e<0 for e in m):raise ValueError('invalid exponent')
  cc=Fraction(c)
  if cc.denominator!=1:raise ValueError('nonintegral certificate coefficient')
  m=tuple(m)
  if m in p:raise ValueError('duplicate monomial')
  if cc:p[m]=cc.numerator
 return p
def drop_last(ts):
 p=unpack(ts,4)
 if any(m[3] for m in p):raise ValueError('expected scalar polynomial')
 return {m[:3]:c for m,c in p.items()}
def coeff_last(ts,j):return {m[:3]:c for m,c in unpack(ts,4).items() if m[3]==j}
def heval(ts,N,K,d):
 kp=[const(3,1)]
 for i in range(d):kp.append(mul(kp[-1],K))
 ans={}
 for i in range(d,-1,-1):ans=add(mul(ans,N),mul(coeff_last(ts,i),kp[d-i]))
 return ans
def evaluate(p,values):
 n=len(values);pp=[]
 for i,v in enumerate(values):
  row=[1]
  for _ in range(degree(p,i)):row.append(row[-1]*v)
  pp.append(row)
 return sum(c*__import__('functools').reduce(lambda x,y:x*y,(pp[i][e] for i,e in enumerate(m)),1) for m,c in p.items())
def eval_mod(p,values,prime):
 ans=0
 for m,c in p.items():
  t=c%prime
  for v,e in zip(values,m):t=t*pow(v,e,prime)%prime
  ans=(ans+t)%prime
 return ans

def det_int(mat):
 a=[row[:] for row in mat];n=len(a);prev=1;sign=1
 if n==0:return 1
 for k in range(n-1):
  if not a[k][k]:
   p=next((i for i in range(k+1,n) if a[i][k]),None)
   if p is None:return 0
   a[k],a[p]=a[p],a[k];sign=-sign
  pivot=a[k][k]
  for i in range(k+1,n):
   q=a[i][k]
   for j in range(k+1,n):
    v=a[i][j]*pivot-q*a[k][j]
    if v%prev:raise AssertionError('non-exact Bareiss division')
    a[i][j]=v//prev
   a[i][k]=0
  prev=pivot
 return sign*a[-1][-1]
def sylvester(a,b):
 m,n=len(a)-1,len(b)-1
 return [[0]*j+list(reversed(a))+[0]*(n-1-j) for j in range(n)]+[[0]*j+list(reversed(b))+[0]*(m-1-j) for j in range(m)]
def coeff_specialize(p,idx,values):
 out=[0]*(degree(p,idx)+1)
 for m,c in p.items():
  e=m[idx];v=c
  for i,a in enumerate(m):
   if i!=idx:v*=values[i]**a
  out[e]+=v
 return out
