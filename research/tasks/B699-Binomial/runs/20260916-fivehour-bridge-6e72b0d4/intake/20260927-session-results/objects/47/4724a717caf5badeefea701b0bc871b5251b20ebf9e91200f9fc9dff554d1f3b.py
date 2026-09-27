from math import gcd, isqrt
import json
MAX=12000
spf=list(range(MAX+1))
for i in range(2,isqrt(MAX)+1):
 if spf[i]==i:
  for j in range(i*i,MAX+1,i):
   if spf[j]==j:spf[j]=i

def blocks(m):
 a=[]
 while m>1:
  p=spf[m];q=1
  while m%p==0:m//=p;q*=p
  a.append(q)
 return a

def vp(v,p):
 e=0
 while v and v%p==0:v//=p;e+=1
 return e

def bv(n,j,p):
 s=0;k=n-j
 while n:n//=p;j//=p;k//=p;s+=n-j-k
 return s
rows=[];counts={}; tested=0
for p in (7,17,19,29,31,43):
 for e in (1,2):
  P=p**e
  for M in range(2,MAX+1):
   if M%p==0:continue
   # b = inv(P)*idempotent mod M from full first source
   res=[0];mod=1
   for q in blocks(M):
    inv=pow(mod,-1,q)
    res=[r+mod*((s-r)*inv%q) for r in res for s in (0,1)]
    mod*=q
   for x in res:
    b=x*pow(P,-1,M)%M
    if not b or 2*b>M:continue
    n=1+P*M;j=P*b
    U0=b*(1+P*(M-b)); assert U0%M==0
    U=U0//M;F=n*n-12*U
    f=vp(F,p)
    if f==0:continue
    tested+=1
    if p**f>n:
     g=gcd(n,j); z2=U//(10*g*g) if U%(10*g*g)==0 else -1
     row={'p':p,'e':e,'f':f,'M':M,'b':b,'n':n,'j':j,'U':U,'g':g,'p_f':p**f,'norm':z2>=0 and isqrt(z2)**2==z2,'source_v':bv(n,6,p),'target_v':bv(n,j,p)}
     if len(rows)<30:rows.append(row)
     counts[str((p,e))]=counts.get(str((p,e)),0)+1
print(json.dumps({'range_M':MAX,'tested_contact':tested,'counterexamples_to_p_f_le_n_without_full_norm':counts,'examples':rows},indent=2))
