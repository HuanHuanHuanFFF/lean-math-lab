from itertools import combinations_with_replacement,product
from fractions import Fraction as Q
from math import comb,factorial
import json,time
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
def b(d):return sum(d-2*j+1 for j in range(d//2+1)) if d>=0 else 0
def tau(m):return m*(m+1)//2 if m>0 else 0
def profiles(q,mu_max):
 out=[]
 def rec(i,counts,z,mu):
  if i==q:
   if 14<=z<=21:out.append(tuple(counts))
   return
  for v in range(min(21-z,(mu_max-mu)//(i+1))+1):rec(i+1,counts+[v],z+v,mu+(i+1)*v)
 rec(0,[],0,0)
 return out
prof=profiles(5,29)
results=[]
for m in range(14,36):
 d=6*m-1;f=b(d);k=b(d-10)
 R=21*tau(m);Lmax=21*tau(m-1);U=f+Lmax
 c=((R*9**(2*d)).bit_length()+1)//2
 A=c*R+(U+1)//2
 v=(f*(f-1).bit_length()+1)//2
 eta=15
 ratios=[];smin=10**9
 for p in prof:
  z=sum(p);mu=sum((i+1)*x for i,x in enumerate(p));delta=sum(i*(i+1)//2*x for i,x in enumerate(p))
  C=m*mu-delta;L=sum(tau(m-i-1)*x for i,x in enumerate(p));s=f-C-k
  if s<=0:break
  smin=min(smin,s);ratios.append(Q(L-k,s))
 else:
  power=max(1, max(ratios).__ceil__());const=(A+v+eta*k)//smin+1
  extra=((f-1).bit_length()+1)//2
  hf=const+power*17000+extra
  val=hf+6*m*11+7*m*(17000+30)
  res=(d//2)*17000+5*hf+(factorial(d//2+5)-1).bit_length()
  results.append(dict(m=m,d=d,f=f,k=k,Rmax=R,Lmax=Lmax,Umax=U,column_bits=c,A=A,volume_bits=v,smin=smin,power=power,const=const,extra=extra,Fbits=hf,value=val,resultant=res))
print('profiles',len(prof),'best',min(results,key=lambda x:max(x['value'],x['resultant'])))
(ROOT/'evidence/quintic_height_gate.json').write_text(json.dumps({'profiles':len(prof),'results':results},indent=2))
# Saturated roots: sums interpolate degree<=2; e2 interpolate degree<=4.
V=[sorted({s*(r-s) for s in range(r//2+1)}) for r in range(3,9)]
roots=[list(combinations_with_replacement(v,5)) for v in V]
buckets=[]
for rr in roots:
 D={}
 for rt in rr:D.setdefault(sum(rt),[]).append(rt)
 buckets.append(D)
out=[];n_sum=0;n_z=0
st=time.monotonic()
for abc in product(*roots[:3]):
 a,bv,c=map(sum,abc)
 pred=[a-3*bv+3*c,3*a-8*bv+6*c,6*a-15*bv+10*c]
 tails=[buckets[i+3].get(s,[]) for i,s in enumerate(pred)]
 for tail in product(*tails):
  full=abc+tail;n_sum+=1
  if sum(len(set(rt)) for rt in full)<14:continue
  n_z+=1
  e2=[sum(x*y for j,x in enumerate(rt) for y in rt[j+1:]) for rt in full]
  if sum(c*v for c,v in zip([-1,5,-10,10,-5,1],e2))!=0:continue
  out.append(full)
print('sat',len(roots[0]),[len(rr) for rr in roots], 'after_sum',n_sum,'after_z',n_z,'after_e2',len(out),'seconds',time.monotonic()-st)
(ROOT/'evidence/quintic_saturation_gate.json').write_text(json.dumps({'root_counts':list(map(len,roots)),'after_sum':n_sum,'after_z':n_z,'shapes':out},indent=2))
