from math import isqrt,gcd

def mul(a,b,M=None):
 u,x=a;v,y=b
 z=(u*v+3*x*y,u*y+x*v)
 return z if M is None else (z[0]%M,z[1]%M)
def pw(n,M=None):
 a=(2,1);out=(1,0)
 while n:
  if n&1:out=mul(out,a,M)
  a=mul(a,a,M);n>>=1
 return out

def row(q):
 V,X=pw(4*q);U=2*V+3*X
 d=1+3*U*X;y=U*V-1;v=4*y;B=3*(d-1)//4;W=B*y;Q=d+v
 S=v**4+5*d*v**3+10*d*d*v*v+10*d**3*v+5*d**4+d*d*W
 R=Q**10-12*Q**7+15*d*Q**6-4*d*d*Q**5-4*d*Q**3+12*d*d*Q**2-12*d**3*Q+4*d**4
 vv=(R&-R).bit_length()-1
 return d,y,v,Q,S,vv
for q in range(1,21):
 d,y,v,Q,S,e=row(q)
 print(q,'qmod3',q%3,'R_v2',e,'s_forced',e-3,'Smod256',S%256,'sqrt?',isqrt(S)**2==S,'Qmod3',Q%3)
print('v2_R(1,4)',row(0)[-1])
# scan full Pell period and square obstructions for A=4; do not use n-bound yet
for m in (3,5,7,11,13,17,19,23,31,37,41,43,47,53,59,61,67,71,73,79,89,97,101,103,109,113,127,131,137,139):
 squares={i*i%m for i in range(m)}
 st=(1,0); gen=(97%m,56%m);q=0;good=[];bad=[]
 while True:
  V,X=st;U=(2*V+3*X)%m;d=(1+3*U*X)%m;y=(U*V-1)%m;v=4*y%m;B=(3*(d-1)*pow(4,-1,m))%m;W=B*y%m
  S=(v**4+5*d*v**3+10*d*d*v*v+10*d**3*v+5*d**4+d*d*W)%m
  (good if S in squares else bad).append(q)
  q+=1;st=mul(st,gen,m)
  if st==(1,0):break
 print('prime',m,'period',q,'good',good if len(good)<=30 else str(len(good)))
