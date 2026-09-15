import json,math,time
from pathlib import Path
import numpy as np
root=Path(__file__).parent;rec=json.loads((root/'symmetric_degree_probe.json').read_text())[0];D=rec['D'];rs=rec['rs'];ws=rec['weights'];exps=[(a,b)for a in range(D+1)for b in range(min(a,D-a)+1)];rows=[];t0=time.time()
for r,w in zip(rs,ws):
 for x in range(r//2+1):
  y=r-x
  for u in range(w):
   for v in range(w-u):
    if x==y and u>v:continue
    row=[]
    for a,b in exps:
     c=math.comb(a,u)*math.comb(b,v)*x**(a-u)*y**(b-v)if a>=u and b>=v else 0
     if a!=b and b>=u and a>=v:c+=math.comb(b,u)*math.comb(a,v)*x**(b-u)*y**(a-v)
     row.append(c)
    rows.append(row)
nr,nc=len(rows),len(exps)
def kernel(p):
 A=np.array([[v%p for v in row]for row in rows],dtype=np.int64);pivs=[];r=0
 for c in range(nc):
  ix=np.flatnonzero(A[r:,c]);
  if len(ix)==0:continue
  q=r+int(ix[0]);A[[r,q]]=A[[q,r]];A[r,c:]=(A[r,c:]*pow(int(A[r,c]),-1,p))%p
  ix=np.flatnonzero(A[:,c]);ix=ix[ix!=r]
  A[ix,c:]=(A[ix,c:]-A[ix,c,None]*A[r,None,c:])%p
  pivs.append(c);r+=1
  if r==nr:break
 free=[a for a in range(nc)if a not in pivs]
 if len(free)!=1:return None
 f=free[0];v=[0]*nc;v[f]=1
 for r,c in enumerate(pivs):v[c]=-int(A[r,f])%p
 return f,v

def rat(a,M):
 if a==0:return (0,1)
 B=math.isqrt(M//2);r0,r1=M,a;t0,t1=0,1
 while abs(r1)>B:
  q=r0//r1;r0,r1=r1,r0-q*r1;t0,t1=t1,t0-q*t1
 if t1<0:r1,t1=-r1,-t1
 if not(0<t1<=B and math.gcd(r1,t1)==1 and (r1-a*t1)%M==0):return None
 return r1,t1

def isprime(p):return p>=2 and all(p%d for d in range(2,math.isqrt(p)+1))
vcrt=[0]*nc;M=1;p=1000003;num=0;free0=None;final=None;mods=[]
while num<100:
 while not isprime(p):p+=2
 ans=kernel(p)
 if ans is None:p+=2;continue
 f,v=ans
 if free0 is None:free0=f
 if f!=free0:p+=2;continue
 inv=pow(M,-1,p);vcrt=[a+M*((b-a)*inv%p)for a,b in zip(vcrt,v)];M*=p;mods.append(p);num+=1;p+=2
 if num%5:continue
 ff=[rat(a,M)for a in vcrt]
 if any(t is None for t in ff):print('primes',num,'not reconstructed','sec',round(time.time()-t0,1),flush=True);continue
 L=math.lcm(*(b for a,b in ff));out=[a*(L//b)for a,b in ff];g=math.gcd(*out);out=[a//g for a in out]
 if all(sum(x*y for x,y in zip(row,out))==0 for row in rows):
  final=out;print('EXACT',num,'bits',max(abs(v).bit_length()for v in out),'secs',time.time()-t0,flush=True);break
 print('primes',num,'reconstruction not exact','sec',round(time.time()-t0,1),flush=True)
if final is None:raise RuntimeError('No verified integer kernel recovered')
poly={}
for(a,b),c in zip(exps,final):
 if not c:continue
 poly[a,b]=c
 if a!=b:poly[b,a]=c
z={}
for(a,b),c in poly.items():
 for u in range(a+1):
  for v in range(b+1):z[u,v]=z.get((u,v),0)+c*math.comb(a,u)*math.comb(b,v)*8**(a+b-u-v)
z={p:c for p,c in z.items()if c}
if all(c<0 for c in z.values()):poly={p:-c for p,c in poly.items()};z={p:-c for p,c in z.items()}
print('SIGN',len(z),sum(c>0 for c in z.values()),sum(c<0 for c in z.values()),flush=True)
rr=dict(H=rec['H'],degree=D,weights=dict(zip(rs,ws)),poly=[[a,b,c]for(a,b),c in sorted(poly.items())],shift=[[a,b,c]for(a,b),c in sorted(z.items())]);(root/'fat_symmetric024.json').write_text(json.dumps([rr],indent=2));(root/'modular_reconstruction024.json').write_text(json.dumps(dict(primes=mods,nrows=nr,ncols=nc,normalizing_coordinate=free0,seconds=time.time()-t0,exact_kernel_verified=True),indent=2))
