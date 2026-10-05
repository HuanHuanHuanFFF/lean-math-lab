"""Exact finite-algebra computations; no floating point and no assumption that q is irreducible."""
from fractions import Fraction as F
from pathlib import Path
import hashlib, json, time, importlib.util

def trim(a):
 a=list(a)
 while a and not a[-1]:a.pop()
 return a

def qa(a,b):
 c=[F(0)]*max(len(a),len(b))
 for i,x in enumerate(a):c[i]+=x
 for i,x in enumerate(b):c[i]+=x
 return trim(c)
def qn(a):return [-x for x in a]
def qm(a,b):
 c=[F(0)]*max(0,len(a)+len(b)-1)
 for i,x in enumerate(a):
  for j,y in enumerate(b):c[i+j]+=x*y
 return trim(c)
def qd(a,b):
 a=trim(a);out=[F(0)]*max(0,len(a)-len(b)+1)
 while a and len(a)>=len(b):
  j=len(a)-len(b);x=a[-1]/b[-1];out[j]+=x
  for i,y in enumerate(b):a[i+j]-=x*y
  a=trim(a)
 return trim(out),a

def qinv(a,q):
 r0,r1=q,a;s0,s1=[],[F(1)]
 while r1:
  d,r=qd(r0,r1);r0,r1=r1,r;s0,s1=s1,qa(s0,qn(qm(d,s1)))
 assert len(r0)==1,('nonunit',r0)
 return qd([x/r0[0] for x in s0],q)[1]

class Alg:
 def __init__(self,q):self.q=list(map(F,q));self.zero=();self.one=(F(1),);self.inv_count=0
 def val(self,a):
  if isinstance(a,(int,F)):a=[F(a)]
  return tuple(qd(list(map(F,a)),self.q)[1])
 def add(self,a,b):return tuple(qa(a,b))
 def neg(self,a):return tuple(qn(a))
 def sub(self,a,b):return self.add(a,self.neg(b))
 def mul(self,a,b):return self.val(qm(a,b))
 def inv(self,a):
  self.inv_count+=1; z=tuple(qinv(list(a),self.q));assert self.mul(z,a)==self.one;return z
 def pow(self,a,n):
  z=self.one
  while n:
   if n&1:z=self.mul(z,a)
   a=self.mul(a,a);n//=2
  return z

def pa(K,a,b):
 c=[K.zero]*max(len(a),len(b))
 for i,x in enumerate(a):c[i]=K.add(c[i],x)
 for i,x in enumerate(b):c[i]=K.add(c[i],x)
 return trim(c)
def pn(K,a):return [K.neg(x) for x in a]
def pm(K,a,b):
 c=[K.zero]*max(0,len(a)+len(b)-1)
 for i,x in enumerate(a):
  for j,y in enumerate(b):c[i+j]=K.add(c[i+j],K.mul(x,y))
 return trim(c)
def pd(K,a,b):
 a=trim(a);out=[K.zero]*max(0,len(a)-len(b)+1);iv=K.inv(b[-1])
 while a and len(a)>=len(b):
  j=len(a)-len(b);x=K.mul(a[-1],iv);out[j]=K.add(out[j],x)
  for i,y in enumerate(b):a[i+j]=K.sub(a[i+j],K.mul(x,y))
  a=trim(a)
 return trim(out),a

def xgcd(K,a,b):
 r0,r1=a,b;s0,s1=[K.one],[];t0,t1=[],[K.one]
 while r1:
  d,r=pd(K,r0,r1);r0,r1=r1,r
  s0,s1=s1,pa(K,s0,pn(K,pm(K,d,s1)))
  t0,t1=t1,pa(K,t0,pn(K,pm(K,d,t1)))
 z=K.inv(r0[-1]);sc=lambda p:[K.mul(z,x) for x in p]
 return sc(r0),sc(s0),sc(t0)

def evaluate(K,ts,u,y):
 a=[K.zero]*(1+max(e[2] for e in ts));up=[K.pow(u,j) for j in range(1+max(e[0] for e in ts))];yp=[K.pow(y,j) for j in range(1+max(e[1] for e in ts))]
 for (i,j,k),c in ts.items():a[k]=K.add(a[k],K.mul(K.val(int(c)),K.mul(up[i],yp[j])))
 return trim(a)
def enc(p):return [[str(v) for v in c] for c in p]

def source():
 root=Path.cwd();run=root/'research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702'
 spec=importlib.util.spec_from_file_location('rs',run/'experiments/b/reg3_source.py');rs=importlib.util.module_from_spec(spec);spec.loader.exec_module(rs)
 fs,gs,pr=rs.sources();u,y,r=rs.u,rs.y,rs.r
 gs['D']=8*r*u*u*y*y-6*(u-1)**2*(y-1)**2
 return rs,fs,gs,pr

if __name__=='__main__':
 rs,fs,gs,pr=source();out=Path(__file__).parent;start=time.monotonic();mem=rs.memory()
 cases=[('rational-generic',[0,1],[2],[2],None),('four-boundary-base-fibers',[3,-4,4,16,8],[0,1],[F(1,3),F(-2,3),F(4,3),F(4,3)],[F(-1,6),F(-4,9),F(-4,3),F(-8,9)]),('F0-complex-fiber',[1,0,1],[0,1],[2],[0])]
 results=[]
 for name,q,uu,yy,r0 in cases:
  K=Alg(q);u,y=K.val(uu),K.val(yy);print('start',name,flush=True)
  assert K.inv(u) and K.inv(y) and K.inv(K.sub(u,K.one)) and K.inv(K.sub(y,K.one))
  E=K.add(K.sub(K.mul(u,y),y),K.one);K.inv(E)
  pp={n:evaluate(K,f,u,y) for n,f in (fs|gs).items()};names=['V0','P5','V4','V3','V2','V1']
  d=pp['V0'];coefs=[[K.one]]+[[] for _ in names[1:]]
  for i,name2 in enumerate(names[1:],1):
   d,a,b=xgcd(K,d,pp[name2]);coefs=[pm(K,a,c) for c in coefs];coefs[i]=pa(K,coefs[i],b)
   print(name,name2,'gcd-degree',len(d)-1,flush=True)
   if len(d)==1:break
  check=[]
  for c,n in zip(coefs,names):check=pa(K,check,pm(K,c,pp[n]))
  assert check==d
  rems={n:pd(K,pp[n],d)[1] for n in names};assert all(not x for x in rems.values())
  s=pm(K,[K.zero,K.one],pm(K,pp['D'],pm(K,pp['N'],pp['K'])))
  s9=[K.one]
  for j in range(9):s9=pd(K,pm(K,s9,s),pp['V0'])[1]
  ds,aa,bb=xgcd(K,d,s9);allowed=pd(K,d,ds)[0];assert not pd(K,d,ds)[1]
  record={'name':name,'base_modulus':[str(x) for x in q],'u':[str(x) for x in uu],'y':[str(x) for x in yy], 'gcd':enc(d),'gcd_bezout_names':names,'gcd_bezout':[enc(c) for c in coefs],'s9_gcd':enc(ds),'s9_bezout':[enc(aa),enc(bb)],'allowed_fiber_polynomial':enc(allowed),'common_fiber_degree':len(d)-1,'allowed_fiber_degree':len(allowed)-1,'inversions_verified':K.inv_count}
  if r0 is not None:record['expected_root']=[str(x) for x in r0];record['root_matches']=d==[K.neg(K.val(r0)),K.one]
  path=out/(name+'-certificate.json');path.write_text(json.dumps(record,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
  results.append({k:record[k] for k in ['name','common_fiber_degree','allowed_fiber_degree','inversions_verified']}|{'certificate_bytes':path.stat().st_size,'sha256':hashlib.sha256(path.read_bytes()).hexdigest()})
  print(results[-1],flush=True)
 (out/'fiber-author-receipt.json').write_text(json.dumps({'resource':mem,'source_provenance':pr,'cases':results,'seconds':time.monotonic()-start},ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
