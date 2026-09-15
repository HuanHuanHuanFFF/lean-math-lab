"""Exact sparse-polynomial identities; no CAS, no numerical interpolation."""
import json,sys
from pathlib import Path

def add(a,b):
 d=a.copy()
 for k,v in b.items():
  d[k]=d.get(k,0)+v
  if not d[k]:del d[k]
 return d

def neg(a):return {k:-v for k,v in a.items()}
def sub(a,b):return add(a,neg(b))
def mul(a,b):
 d={}
 for I,x in a.items():
  for J,y in b.items():
   k=tuple(i+j for i,j in zip(I,J));d[k]=d.get(k,0)+x*y
 return {k:v for k,v in d.items() if v}
def scale(a,t):return {k:v*t for k,v in a.items() if v*t}
def pw(a,n):
 d={(0,)*len(next(iter(a))):1}
 for _ in range(n):d=mul(d,a)
 return d

def vars_(n):return [{tuple(int(i==j) for i in range(n)):1} for j in range(n)]
def const(n,a):return {(0,)*n:a} if a else {}
records=[]
D,a,b=vars_(3)
F=scale(mul(mul(a,sub(a,mul(b,D))),sub(a,scale(mul(b,D),2))),6)
left=sub(sub(scale(mul(pw(b,3),pw(D,3)),6),scale(F,2)),scale(mul(mul(a,pw(b,2)),pw(D,2)),3))
right=scale(mul(sub(scale(mul(b,D),2),a),pw(sub(scale(a,2),mul(b,D)),2)),3)
assert left==right;records.append('general nonnegative cubic complement')
for eps in [-1,1]:
 lhs=sub(scale(pw(a,3),12),scale(mul(a,pw(b,2)),3))
 rhs=scale(mul(mul(a,sub(scale(a,2*eps),b)),add(scale(a,2*eps),b)),3)
 assert lhs==rhs;records.append('first-window cubic cancellation '+str(eps))
 x,u,m,h=vars_(4);one=const(4,1);d=sub(x,scale(one,eps));a_=mul(pw(m,2),u);rho=scale(mul(pw(m,2),h),3);T=sub(pw(x,2),scale(one,2))
 original=sub(scale(mul(mul(a_,sub(a_,scale(d,3))),sub(a_,scale(d,6))),12),mul(sub(mul(rho,d),scale(a_,27)),T))
 reduced=sub(scale(mul(mul(u,sub(a_,scale(d,3))),sub(a_,scale(d,6))),4),mul(sub(mul(h,d),scale(u,9)),T))
 assert original==scale(mul(pw(m,2),reduced),3);records.append('exact cancelled residual '+str(eps))
# Special rational local seed and dyadic lift polynomial: double the numerator avoids Fraction.
u=vars_(1)[0];one=const(1,1)
p0=sub(add(add(scale(pw(u,3),2500),scale(pw(u,2),900)),scale(u,54)),scale(one,2))
f=sub(add(add(scale(pw(u,3),1250),scale(pw(u,2),450)),scale(u,27)),one)
assert p0==scale(f,2);records.append('dyadic Hensel polynomial')
from fractions import Fraction
x=5;v=Fraction(1,2);D=x-1
assert 4*v*(25*v-3*D)*(25*v-6*D)-(D-9*v)*(x*x-2)==0
records.append('rational forbidden-endpoint local seed')
res={'status':'PASS','identities':records,'count':len(records)}
out=Path(sys.argv[1]);(out/'algebra.json').write_text(json.dumps(res,sort_keys=True,indent=2)+'\n');print(json.dumps({'identities':len(records)}))
