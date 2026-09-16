"""Finite diagnostics only; infinite scope is proved in PROOFS.md."""
from pathlib import Path
from math import gcd, comb, isqrt, prod
import json,time
BASE=Path(__file__).resolve().parents[1]
def factors(x):
 d={};p=2
 while p*p<=x:
  while x%p==0:d[p]=d.get(p,0)+1;x//=p
  p=3 if p==2 else p+2
 if x>1:d[x]=d.get(x,0)+1
 return d

def small(n,i):
 z=n
 for p in (2,3):
  while z%p==0:z//=p
 s=n//z
 if i==5 and z%5==0 and z%25!=0:s*=5
 return s

def goodgcd(a,b,i):
 z=gcd(a,b)
 for p in (2,3,5):
  if p<i:
   while z%p==0:z//=p
 return z

def valbin(n,j,p):
 v=0;Q=p
 while Q<=n:
  v+=int(j%Q>n%Q);Q*=p
 return v

def fvalues(j,k):
 n=j+k;w=j*k;A=(j-1)*(k-1);B=j*j+j*k+k*k-4*n+3
 P=j*j-j*k+k*k-n;R=j*j+3*j*k+k*k-5*n+4;V=4*j*j+5*j*k+4*k*k-16*n+12
 Q=10*n**4-36*n*n*w+27*w*w-54*n**3+117*n*w+90*n*n-81*w-58*n+12
 return [w*A*A*P*P*R,w*w*A*B*V*V,A*B*Q*Q]

def run():
 t0=time.monotonic();cnt={k:0 for k in ['native4_inputs','native5_inputs','native4_accepted','native5_accepted','integer_t4','integer_t5','support_consumer5','bridge6_full_gcd','partial_avoidance_inputs','partial_avoidance_divisibilities','folded_partial_identities']}
 for n in range(18,2501):
  if n%72 not in (18,56):continue
  Bs={i:comb(n,i) for i in (4,5,6)};cs=[comb(n,j) for j in range(n//2+1)]
  for i in (4,5):
   ss=[small(n-r,i) for r in range(i)];qq=[(n-r)//ss[r] for r in range(i)]
   for j in range(i+1,n//2+1):
    k=n-j;g=gcd(n,j);cnt[f'native{i}_inputs']+=1
    W=goodgcd(Bs[i],cs[j],i)
    assert W>1
    guards=[gcd(qq[3],j*k)==1,gcd(qq[3],(j-1)*(k-1))==1]
    if i==5:guards.append(gcd(qq[4],j*k)==1)
    if any(guards):cnt[f'native{i}_accepted']+=1;assert W>1
    num=ss[1]*j*k;den=g*g*(n-1)
    if num%den==0:
     tt=num//den;L=g*g*tt;cnt[f'integer_t{i}']+=1
     assert ss[1]*j*k==(n-1)*L
     assert (j-1)*(k-1)==qq[1]*(L-ss[1])
     if i==5:
      fac=factors(tt);elig=sum(p>5 for p in fac)+int(fac.get(5,0)>=2)
      if elig<2:cnt['support_consumer5']+=1;assert W>1
      # Do not assume full NC. Use only genuine source-prime avoidance.
      for r in (2,3,4):
       part=1
       for p,e in factors(qq[r]).items():
        if cs[j]%p:part*=p**e
       if part>1:
        if r in (2,3):assert tt*(L-ss[1])%part==0
        else:assert tt*(L-ss[1])*(3*L-4*ss[1])%part==0
        cnt['folded_partial_identities']+=1
    if i==5 and n%25>=5 and j>=7 and (any(guards) or num%den==0 and (sum(p>5 for p in factors(num//den))+int(factors(num//den).get(5,0)>=2)<2)):
     assert W%5!=0 and Bs[6]%W==0;cnt['bridge6_full_gcd']+=1
 # Positive kernels are tested on genuine partial avoiding blocks, not NC instances.
 allowed=[{1:set(range(2)),3:{1,2},4:set(range(5))},
          {1:set(range(2)),3:{0,3},4:set(range(5))},
          {1:set(range(2)),3:set(range(4)),4:{1,2,3}}]
 weights=[[6,5,2],[6,5,2],[6,3,4]]
 for n in range(18,501):
  rowf={r:factors((n-r)//small(n-r,5)) for r in (1,3,4)}
  cj=1
  for j in range(n//2+1):
   if j:cj=cj*(n-j+1)//j
   if j<6:continue
   fs=fvalues(j,n-j);assert all(F>0 for F in fs)
   assert 256*fs[0]<5*n**12 and 4*fs[1]<n**12 and fs[2]<25*n**12
   nonempty=False
   for ell in range(3):
    div=1
    for r,w in zip((1,3,4),weights[ell]):
     for p,e in rowf[r].items():
      Q=p**e
      if cj%p and j%Q in allowed[ell][r]:div*=Q**w
    if div>1:
     assert fs[ell]%div==0;nonempty=True;cnt['partial_avoidance_divisibilities']+=1
   if nonempty:cnt['partial_avoidance_inputs']+=1
 # Boundary p=i=5: the entire 25/125/... source power, not e-1, is necessary.
 endpoint=[]
 for r in (3,4):
  n=next(n for n in range(18,10000) if n%72 in (18,56) and n%25==r)
  e=factors(n-r)[5];Q=5**e;j=Q//5+1
  assert valbin(n,5,5)>0 and valbin(n,j,5)>0
  assert 5<j<=n//2 and j%(Q//5)<=n%(Q//5) and j%Q>n%Q
  endpoint.append({'n':n,'j':j,'r':r,'Q':Q,'source_v5':valbin(n,5,5),'target_v5':valbin(n,j,5)})
 # Fixed actual first-row control; it is NOT NC, and fails later source layers.
 n=155648;j=65303;g=gcd(n,j);s=small(n-1,5);tt=s*j*(n-j)//(g*g*(n-1))
 assert (g,tt)==(19,105) and s*j*(n-j)==g*g*(n-1)*tt
 assert valbin(n,5,8647)>0 and valbin(n,j,8647)>0
 first={'n':n,'j':j,'g':g,'t':tt,'s':s,'L':g*g*tt,'witness':[8647,valbin(n,5,8647),valbin(n,j,8647)],'is_NC':False}
 # Same n,j do not have the same canonical t for targets 4 and 5.
 n,j=56,12;g=gcd(n,j);nn=j*(n-j);dd=g*g*(n-1)
 assert small(n-1,5)==5 and 5*nn==3*dd and nn%dd!=0
 target_separation={'n':n,'j':j,'g':g,'t4':[3,5],'t5':[3,1]}
 result={'target_separation_control':target_separation,'status':'PASS_FINITE_REGRESSIONS_ONLY','limits':{'H02_n':2500,'partial_n':500},'counts':cnt,'endpoint_controls':endpoint,'inherited_first_row_control':first,'seconds':time.monotonic()-t0}
 (BASE/'outputs/regression.json').write_text(json.dumps(result,sort_keys=True,indent=2)+'\n')
 print(json.dumps(result,ensure_ascii=False));return result
if __name__=='__main__':run()
