import os
import sys,json
from math import gcd,isqrt
from pathlib import Path
sys.set_int_max_str_digits(0)
R=Path(os.environ.get("RESEARCH_OUT", Path(__file__).resolve().parents[1]))
def rough(x):
 for p in (2,3,5):
  while x%p==0:x//=p
 return x
def jac(a,n):
 v=1;a%=n
 while a:
  while a%2==0:
   a//=2
   if n%8 in (3,5):v=-v
  a,n=n,a
  if a%4==n%4==3:v=-v
  a%=n
 return v if n==1 else 0
al=3;r=1;hits=[];count=0
for a in range(1,1501):
 if a>1:
  r=next(r+c*al for c in range(3) if ((r+c*al)**2-10)%(3*al)==0);al*=3
 for z in range(1,61):
  if z%3==0:continue
  b=r*z%al;b=min(b,al-b)
  den=10*z*z;bc=b*(al-b)
  if b==0 or bc%den:continue
  N=bc//den
  if (N+1)%al:continue
  g=(N+1)//al
  if g<2 or g%2:continue
  n=g*al;j=g*b
  if j<7:continue
  count+=1
  q4=rough(n-4);C=gcd(q4,j-2);H=al*al//3-40*z*z
  assert H%C==0
  T=H//C;D=gcd(C,T)
  if D>1:
   E4=gcd(q4,j*(n-j))
   rec=dict(a=a,z=z,n=n,j=j,g=g,alpha=al,beta=b,q4=q4,C=C,T=T,defect=D,E4=E4,
      U4_trigger=jac(10,q4)!=jac(10,E4*C),B720=n%720==450,E4_square=isqrt(E4)**2==E4)
   hits.append(rec)
   print('DEFECT',a,z,'C',C,'D',D,'U4',rec['U4_trigger'],'B',rec['B720'],flush=True)
print('COUNT',count,'HITS',len(hits),'NEW',sum(not x['U4_trigger'] for x in hits))
(R/'certificates/central_defect_probe.json').write_text(json.dumps(dict(a_max=1500,z_max=60,strict_even_recoveries=count,hits=hits),indent=2))
