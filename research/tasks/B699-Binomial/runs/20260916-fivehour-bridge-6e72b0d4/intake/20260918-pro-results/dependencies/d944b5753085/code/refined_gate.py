"""Low-cost diagnostic; refined product-of-column bounds, no unknown-H matrix."""
from itertools import product
from fractions import Fraction as Q
from math import factorial
from pathlib import Path
import json
ROOT=Path(__file__).resolve().parents[1]
def b(d):return sum(d-2*j+1 for j in range(d//2+1)) if d>=0 else 0
def tau(m):return m*(m+1)//2 if m>0 else 0
def profiles(q,mu_max):
 out=[]
 def rec(i,cs,z,mu):
  if i==q:
   if 14<=z<=21:out.append(tuple(cs))
   return
  for a in range(min(21-z,(mu_max-mu)//(i+1))+1):rec(i+1,cs+[a],z+a,mu+(i+1)*a)
 rec(0,[],0,0);return out

def probe(Dmin,Dmax,mu_max,m):
 d=6*m-1;f=b(d);k=b(d-Dmin);eta=Dmax+5
 R=21*tau(m);Lmax=21*tau(m-1);Umax=f+Lmax
 # Whole product is safe because every majorant is >=1.
 # F columns use their own weighted monomial degree, not the maximum d.
 fc=[((R*9**(2*(a+2*j))).bit_length()+1)//2 for j in range(d//2+1) for a in range(d-2*j+1)]
 # Each high column is supported at just one source point.
 hc=((tau(m)*9**(2*Dmax)).bit_length()+1)//2
 A=sum(fc)+Lmax*hc+(Umax+1)//2
 v=(f*(f-1).bit_length()+1)//2
 smin=10**10;rats=[];maxc=Q(0)
 for p in profiles(5,mu_max):
  z=sum(p);mu=sum((i+1)*x for i,x in enumerate(p));delta=sum(i*(i+1)//2*x for i,x in enumerate(p))
  C=m*mu-delta;L=sum(tau(m-i-1)*x for i,x in enumerate(p));s=f-C-k
  if s<=0:return None
  rats.append(Q(L-k,s));smin=min(smin,s)
 power=max(1,max(rats).__ceil__());const=(A+v+eta*k)//smin+1
 extra=((f-1).bit_length()+1)//2
 den=5*power+d//2
 cap=(14000000-5*(const+extra)-(factorial(d//2+5)-1).bit_length())//den
 return dict(Dmin=Dmin,Dmax=Dmax,mu_max=mu_max,m=m,d=d,fcols=f,k=k,Rmax=R,Lmax=Lmax,Umax=Umax,Fcolsum=sum(fc),Hcolbits=hc,A=A,volume_bits=v,eta=eta,smin=smin,power=power,const=const,extra=extra,hcap=cap)

if __name__=='__main__':
 allres=[]
 for Dmin,Dmax,mumax in [(10,10,29),(11,305,30)]:
  res=[q for m in range(6,36) if (q:=probe(Dmin,Dmax,mumax,m))]
  print(Dmin,Dmax,sorted(res,key=lambda q:q['hcap'],reverse=True)[:3])
  allres+=res
 (ROOT/'evidence/refined_height_gate.json').write_text(json.dumps(allres,indent=2))
