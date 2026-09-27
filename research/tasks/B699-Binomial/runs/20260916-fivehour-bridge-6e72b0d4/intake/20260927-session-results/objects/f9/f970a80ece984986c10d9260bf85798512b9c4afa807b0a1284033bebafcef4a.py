from math import gcd,isqrt
import json,time
MAXA=30
r=1;alpha=3;counts={'z_scanned':0,'canonical_even5':0,'actual_allnear':0};found=[]
def rough(x):
 for p in (2,3,5):
  while x%p==0:x//=p
 return x
for a in range(2,MAXA+1):
 r+=alpha*((10-r*r)//alpha*pow(2*r,-1,3)%3);alpha*=3
 # g>=10 in the tested v5(n)=1 and even-n subset.
 for z in range(1,isqrt(alpha//399)+1):
  if z%3==0:continue
  counts['z_scanned']+=1
  beta=r*z%alpha;beta=min(beta,alpha-beta)
  den=10*alpha*z*z;num=beta*(alpha-beta)+10*z*z
  if num%den:continue
  g=num//den
  if g<10 or g%10 or g%25==0:continue
  n=g*alpha;j=g*beta
  if 2*j>=n or j<7:continue
  counts['canonical_even5']+=1
  q=rough(n-5);U=10*g*g*z*z
  if (U-1)%q:continue
  counts['actual_allnear']+=1
  C=gcd(rough(n-4),j-2);E4=gcd(rough(n-4),j*(n-j))
  found.append({'a':a,'z':z,'g':g,'n':n,'j':j,'q5':q,'R5':(U-1)//q,'C':C,'E4':E4})
print(json.dumps({'scope':'finite regression input search only; no new SPARSE/recovery claim','MAXA':MAXA,'counts':counts,'found':found},indent=2))
