#!/usr/bin/env python3
"""Independent pure-Python receiver for the two F_121 witnesses.
Uses characteristic-11 Frobenius with coefficient conjugation, not DDF.
"""
import json,sys,time
from pathlib import Path
P=11; Q=121
ADD=[[((a%P+b%P)%P)+P*((a//P+b//P)%P) for b in range(Q)]for a in range(Q)]
SUB=[[((a%P-b%P)%P)+P*((a//P-b//P)%P) for b in range(Q)]for a in range(Q)]
MUL=[[((a%P*(b%P)-a//P*(b//P))%P)+P*((a%P*(b//P)+a//P*(b%P))%P) for b in range(Q)]for a in range(Q)]
CONJ=[a%P+P*((-(a//P))%P) for a in range(Q)]
def fpow(a,k):
 z=1
 while k:
  if k&1:z=MUL[z][a]
  a=MUL[a][a];k//=2
 return z
INV=[0]+[fpow(a,Q-2) for a in range(1,Q)]
assert all(MUL[a][INV[a]]==1 for a in range(1,Q))
assert all((a*a+1)%P for a in range(P))
assert all(CONJ[a]==fpow(a,P) for a in range(Q))
def trim(a):
 while a and not a[-1]:a.pop()
 return a
def product(a,b):
 if not a or not b:return []
 z=[0]*(len(a)+len(b)-1)
 for i,x in enumerate(a):
  if x:
   mx=MUL[x]
   for j,y in enumerate(b):z[i+j]=ADD[z[i+j]][mx[y]]
 return trim(z)
def rem(a,b):
 a=a[:];inv=INV[b[-1]]
 for k in range(len(a)-len(b),-1,-1):
  v=MUL[a[k+len(b)-1]][inv]
  if v:
   mv=MUL[v]
   for j,x in enumerate(b):a[k+j]=SUB[a[k+j]][mv[x]]
 return trim(a[:len(b)-1])
def monic(a):return [MUL[x][INV[a[-1]]]for x in a] if a else []
def gcd(a,b):
 while b:a,b=b,rem(a,b)
 return monic(a)
def diff(a,b):return trim([SUB[a[i] if i<len(a) else 0][b[i] if i<len(b) else 0]for i in range(max(len(a),len(b)))])
def frob11(a,f):
 b=[0]*(P*(len(a)-1)+1) if a else []
 for i,x in enumerate(a):b[P*i]=CONJ[x]
 return rem(b,f)
def prime_divisors(n):
 z=[];d=2
 while d*d<=n:
  if n%d==0:
   z.append(d)
   while n%d==0:n//=d
  d+=1
 if n>1:z.append(n)
 return z
def pure_degree(f,d):
 assert f and f[-1]==1 and (len(f)-1)%d==0
 x=rem([0,1],f);a=x;ks={d//r for r in prime_divisors(d)}
 for k in range(1,d+1):
  a=frob11(frob11(a,f),f)
  if k in ks:assert gcd(f,diff(a,x))==[1]
 assert a==x

def basis(path):
 lines=Path(path).read_text().splitlines();head=lines[0].split();h=int(head[3]);dim=int(head[5]);out=[];k=1
 for _ in range(dim):
  assert lines[k].startswith('BASIS ');k+=1;poly=[]
  for b in range(h+1):
   bb,d,*a=map(int,lines[k].split());k+=1;assert bb==b and len(a)==d+1;poly.append(a)
  out.append(poly)
 assert k==len(lines)
 return h,out

def check(bpath,cpath):
 h,base=basis(bpath);lines=Path(cpath).read_text().splitlines();vline=lines[1].split();i=vline.index('AT');vec=list(map(int,vline[1:i]));n=int(vline[i+1]);bound=int(vline[i+3]);degree=int(vline[i+5]);lc=int(vline[i+7]);nb=int(vline[i+9]);assert len(vec)==len(base) and 11<=n<121
 f=[0]*(h+1)
 for b in range(h+1):
  for v,B in zip(vec,base):
   z=0
   for c in reversed(B[b]):z=ADD[MUL[z][n]][c]
   f[b]=ADD[f[b]][MUL[v][z]]
 f=trim(f);assert len(f)-1==degree and f[-1]==lc
 prod=[1];omega=0;degrees=[]
 assert len(lines)==2+nb
 for line in lines[2:]:
  d,m,D,*fac=map(int,line.split());assert d>=1 and m>=1 and len(fac)==D+1 and all(0<=x<Q for x in fac)
  pure_degree(fac,d);omega+=m*(D//d);degrees.extend([d]*(m*(D//d)))
  for _ in range(m):prod=product(prod,fac)
 assert [MUL[lc][x]for x in prod]==f
 assert bound==omega+(h-degree)//3 and bound<8
 return dict(point=vec,N_encoded=n,field_size=Q,degree=degree,omega=omega,bound=bound,irreducible_degrees=sorted(degrees),block_count=nb)
if __name__=='__main__':
 t=time.time();z=[check(sys.argv[1],p)for p in sys.argv[2:]];print(json.dumps(dict(status='PASS_INDEPENDENT_EXTENSION_COVERS',records=z,seconds=time.time()-t),sort_keys=True))
