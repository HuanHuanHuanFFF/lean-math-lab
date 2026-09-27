from math import isqrt,gcd
import json
MAX=1500000
spf=list(range(MAX+1))
for i in range(2,isqrt(MAX)+1):
 if spf[i]==i:
  for j in range(i*i,MAX+1,i):
   if spf[j]==j:spf[j]=i

def fac(m):
 out=[]
 while m>1:
  p=spf[m];q=1;e=0
  while m%p==0:m//=p;q*=p;e+=1
  out.append((p,e,q))
 return out

def vp(m,p):
 e=0
 while m and m%p==0:m//=p;e+=1
 return e

def binv(n,j,p):
 k=n-j;s=0
 while n:n//=p;j//=p;k//=p;s+=n-j-k
 return s
counts={'first_inputs':0,'near_inputs':0,'contacts':0,'overflow_contacts':0};rows=[]
for n in range(30,MAX+1,30):
 fs=fac(n-1);roots=[0];d=1
 for p,e,q in fs:
  iv=pow(d,-1,q);roots=[r+d*((x-r)*iv%q) for r in roots for x in (0,1)];d*=q
 S=1;q=n-5
 while q%5==0:q//=5;S*=5
 for j in roots:
  if j<7 or 2*j>n:continue
  counts['first_inputs']+=1
  U=j*(n-j)//(n-1)
  if (U-1)%q:continue
  counts['near_inputs']+=1
  R=(U-1)//q;F=n*n-12*U
  for p,e,P in fs:
   f=vp(F,p)
   if not f:continue
   counts['contacts']+=1
   if f<=e or p==11:continue
   counts['overflow_contacts']+=1
   sig=j if j%P==0 else n-j
   rows.append({'n':n,'j':j,'U':U,'S':S,'q5':q,'R5':R,'p':p,'e':e,'f':f,'M':(n-1)//P,'b':sig//P,'source_v':binv(n,6,p),'target_v':binv(n,j,p)})
print(json.dumps({'MAX':MAX,'scope':'search for examples of wider original-input R5-carry lemma, NOT current B models','counts':counts,'rows':rows[:30]},indent=2))
