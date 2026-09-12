from pathlib import Path
from math import comb,gcd
from datetime import datetime,timezone
from hashlib import sha256
import json

def choose(n,k):return comb(n,k) if 0<=k<=n else 0
def qm(u,v,r):return choose(max(2*u-r,0),u)*choose(v+r,r)
def pm(u,v,r):return choose(2*u+v+1,r)*choose(max(2*u-r,0),u)
def pq(u,v):return ([(-1)**(u+r)*pm(u,v,r) for r in range(u+1)],[(-1)**u*qm(u,v,r) for r in range(u+1)])
def clean(a):
 while len(a)>1 and a[-1]==0:a.pop()
 return a

def add(a,b,sgn=1):
 c=[0]*max(len(a),len(b))
 for i,x in enumerate(a):c[i]+=x
 for i,x in enumerate(b):c[i]+=sgn*x
 return clean(c)
def scale(a,s):return clean([s*x for x in a])
def mul(a,b):
 c=[0]*(len(a)+len(b)-1)
 for i,x in enumerate(a):
  for j,y in enumerate(b):c[i+j]+=x*y
 return clean(c)
def hval(a,u,x,y):return sum(c*x**r*y**(u-r) for r,c in enumerate(a))
def K(u,v):return choose(2*u+v,2*u-1)*choose(2*u,u)
def D(u,v):return (-1)**(u+1)*K(u,v)
counts={'guarded_magnitude_equalities':0,'weighted_constant_relations':0,'whole_polynomial_recurrences':0,'full_determinant_equalities':0,'raw_and_normalized_integer_values':0,'base_rows':0}
for u in range(1,21):
 for v in range(17):
  p0,q0=pq(u,v);p1,q1=pq(u-1,v+1)
  if u==1:
   assert p0==[-2,v+3] and q0==[-2,-(v+1)] and p1==q1==[1]
   assert D(1,v)==2*(v+2)
   counts['base_rows']+=1
  if u>=2:
   n=u*(u-1);A=(u-1)*(2*u-1);B=(v+2)*(2*u+v)
   for r in range(u+1):
    q1m=qm(u-1,v+1,r-1) if r>=1 else 0
    q2m=qm(u-2,v+2,r-2) if r>=2 else 0
    p1m=pm(u-1,v+1,r-1) if r>=1 else 0
    p2m=pm(u-2,v+2,r-2) if r>=2 else 0
    assert n*qm(u,v,r)+A*q1m==2*A*qm(u-1,v+1,r)+B*q2m
    assert n*pm(u,v,r)==2*A*pm(u-1,v+1,r)+A*p1m+B*p2m
    counts['guarded_magnitude_equalities']+=2
   assert choose(2*u+v-1,2*u-3)*(2*u+v)*(v+2)==choose(2*u+v,2*u-1)*(2*u-1)*(2*u-2)
   assert choose(2*u-2,u-1)*2*(2*u-1)==choose(2*u,u)*u
   assert n*K(u,v)==B*K(u-1,v+1)
   assert n*D(u,v)==-B*D(u-1,v+1)
   counts['weighted_constant_relations']+=4
   p2,q2=pq(u-2,v+2)
   for f0,f1,f2 in [(p0,p1,p2),(q0,q1,q2)]:
    assert scale(f0,n)==add(scale(mul([2,-1],f1),-A),scale(mul([0,0,1],f2),B))
    counts['whole_polynomial_recurrences']+=1
  raw=add(mul(p0,q1),mul(p1,q0),-1)
  assert raw==[0]*(2*u-1)+[D(u,v)]
  counts['full_determinant_equalities']+=1
  g0=gcd(*q0);g1=gcd(*q1)
  assert g0>0 and g1>0
  assert all(c%g0==0 for c in p0) and all(c%g1==0 for c in p1)
  pp0=[c//g0 for c in p0];qq0=[c//g0 for c in q0]
  pp1=[c//g1 for c in p1];qq1=[c//g1 for c in q1]
  for x in [-3,-1,0,1,2]:
   for y in [-2,-1,1,5]:
    rh=hval(p0,u,x,y)*hval(q1,u-1,x,y)-hval(p1,u-1,x,y)*hval(q0,u,x,y)
    nd=hval(pp0,u,x,y)*hval(qq1,u-1,x,y)-hval(pp1,u-1,x,y)*hval(qq0,u,x,y)
    assert rh==D(u,v)*x**(2*u-1)
    assert g0*g1*nd==rh
    assert (nd!=0)==(x!=0)
    counts['raw_and_normalized_integer_values']+=1
rec={'status':'PASS','utc':datetime.now(timezone.utc).isoformat(),'range':'u=1..20, v=0..16; all guarded coefficient indices; whole polynomials; x in {-3,-1,0,1,2}, y in {-2,-1,1,5}','counts':counts,'scope':'finite exact integer corroboration of every stage in the complete candidate chain; NOT Lean compilation, axiom acceptance, or unrestricted proof','script_sha256':sha256(Path(__file__).read_bytes()).hexdigest()}
Path(__file__).with_name('actual-recurrence-chain-check.json').write_text(json.dumps(rec,indent=2)+'\n',encoding='utf-8')
print(json.dumps(rec))
