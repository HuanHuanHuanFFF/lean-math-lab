from math import gcd,isqrt
import sympy as s,json

def unitary(n):
 ds=[1]
 for p,e in s.factorint(n).items():
  pe=int(p)**int(e);ds += [d*pe for d in ds[:]]
 return sorted(ds)

stats={};hits=[]
for fam in [1,2]:
 for q in [1,3,13,39]:
  bound=(27*q*q)//512+1 if fam==1 else (2187*q*q)//512+6
  counts={'d_bound':bound,'d_checked':0,'allocations':0,'squares':0,'W':0}
  if fam==2 and q%3==0:
   stats[f'{fam}:{q}']=counts;continue
  for d in range(3 if fam==1 else 5,bound+1,2):
   if fam==2 and d%3==0:continue
   M=d*d+(2*d-2 if fam==1 else 6*d-18)
   B=d*d+(d-3 if fam==1 else 3*d-27)
   # q|cB for I with c=1 or3, q|B for II
   cs=[c for c in ([1,3] if fam==1 else [1]) if c*B%q==0]
   if not cs:continue
   # sharper exact coefficient bound, including a later
   if (27 if fam==1 else 2187)*q*q*d*M <=512*B*B:continue
   counts['d_checked']+=1
   for a in unitary(d):
    if (27 if fam==1 else 2187)*q*q*d*M <=512*a**6*B*B:continue
    for m in unitary(M):
     # keep endpoints for self-containedness
     counts['allocations']+=1
     E=a*m;v=M//m
     disc=4*q*M*m-a*a*(3*d*d+(4*d-12 if fam==1 else 12*d-108))
     if disc<0:continue
     rt=isqrt(disc)
     if rt*rt!=disc:continue
     counts['squares']+=1
     for sign in [-1,1]:
      num=(d+(2 if fam==1 else 6))*a+sign*rt
      den=2*v
      if num<=0 or num%den:continue
      V=num//den;W=V if fam==1 else 3*V
      if W<=E or W%2==0 or gcd(W,E)!=1:continue
      counts['W']+=1
      # canonical norm integer normalization
      D=d*M//E
      x=(W-E)//2
      znum=x*D-(1 if fam==1 else 27)
      if znum<=0 or znum%(E*E):
       hits.append(dict(fam=fam,q=q,d=d,M=M,B=B,a=a,m=m,E=E,W=W,cs=cs,status='norm-fail',znum=znum));continue
      zz=znum//(E*E)
      n=2*q*((d*V+E)//(a**3)) if (d*V+E)%(a**3)==0 else None
      hits.append(dict(fam=fam,q=q,d=d,M=M,B=B,a=a,m=m,E=E,W=W,x=x,cs=cs,status='norm-pass',z=zz,n=n))
   stats[f'{fam}:{q}']=counts
  stats[f'{fam}:{q}']=counts
print(json.dumps({'stats':stats,'hits':hits},indent=2))
