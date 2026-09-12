"""Exact algebra, projection-only regressions and original-binomial examples."""
from fractions import Fraction as Q
from math import gcd,isqrt
from pathlib import Path
import json
ROOT=Path(__file__).resolve().parents[1]
# Small sparse polynomial ring over the rationals. Eight independent symbols.
NV=8
class P:
 def __init__(self,d=0):
  self.d=d if isinstance(d,dict) else ({(0,)*NV:Q(d)} if d else {})
 @staticmethod
 def conv(x):return x if isinstance(x,P) else P(x)
 def __add__(self,o):
  o=P.conv(o);r=self.d.copy()
  for k,v in o.d.items():r[k]=r.get(k,0)+v
  return P({k:v for k,v in r.items() if v})
 __radd__=__add__
 def __neg__(self):return P({k:-v for k,v in self.d.items()})
 def __sub__(self,o):return self+-P.conv(o)
 def __rsub__(self,o):return P.conv(o)+-self
 def __mul__(self,o):
  o=P.conv(o);r={}
  for a,u in self.d.items():
   for b,v in o.d.items():
    k=tuple(x+y for x,y in zip(a,b));r[k]=r.get(k,0)+u*v
  return P({k:v for k,v in r.items() if v})
 __rmul__=__mul__
 def __pow__(self,n):
  assert isinstance(n,int) and n>=0
  r=P(1)
  for _ in range(n):r=r*self
  return r

def var(i):return P({tuple(int(k==i) for k in range(NV)):Q(1)})

def algebra():
 n,j,w,h,d,z,a,b=[var(i) for i in range(NV)];k=n-j;D=(n-1)*(n-2);checks=[]
 def eq(label,l,r):
  assert not (l-r).d,label
  checks.append(label)
 eq('three-quotient sum numerator',k*(k-1)+2*j*k+j*(j-1),n*(n-1))
 eq('middle conic',w*(n-2*j)**2-((w-2*h)*n*n+6*h*n-4*h),2*(h*D-2*w*j*k))
 eq('outer conic',4*h*D+w-w*(2*j-1)**2,4*(h*D-w*j*(j-1)))
 eq('Pell D195',(13*n+3)**2-195*z*z-61,13*((13*n*n+6*n-4)-15*z*z))
 eq('Pell D35 positive',(5*n+3)**2-35*z*z-29,5*(5*n*n+6*n-4-7*z*z))
 eq('Pell D7',(2*n-3)**2-7*z*z+6,4*n*n-12*n+15-7*z*z)
 eq('Pell D35 negative',(10*n-15)**2-35*z*z+10,5*(20*n*n-60*n+47-7*z*z))
 eq('outer quartic discriminant',(-12*h*d)**2-4*(4*h*d*d)*(8*h+w),16*h*d*d*(h-w))
 eq('middle quartic discriminant',(6*h*d)**2-4*(w-2*h)*d*d*(-4*h),4*h*d*d*(h+4*w))
 eq('outer quartic substitution',4*h*(d*z*z-1)*(d*z*z-2)+w,4*h*d*d*z**4-12*h*d*z*z+8*h+w)
 eq('middle quartic substitution',(w-2*h)*(d*z*z)**2+6*h*d*z*z-4*h,(w-2*h)*d*d*z**4+6*h*d*z*z-4*h)
 eq('U relation numerator',j*k-(n-1),(j-1)*(k-1))
 eq('product maximum',4*j*k,n*n-(n-2*j)**2)
 eq('shifted product maximum',4*(j-1)*(k-1),(n-2)**2-(n-2*j)**2)
 eq('conic discriminant coupled',(a+b)*(a+b)-4*a*b,(a-b)**2)
 return checks

def valuation(n,j,p):
 q=p;v=0
 while q<=n:
  v+=n//q-j//q-(n-j)//q;q*=p
 return v

def trial_prime(p):
 return p>=2 and all(p%d for d in range(2,isqrt(p)+1))

def factors_checked(value,fac):
 prod=1
 for ps,e in fac.items():
  p=int(ps);assert trial_prime(p) and isinstance(e,int) and e>0
  prod*=p**e
 assert prod==value

def structure(n,j):
 g=gcd(n,j);k=n-j;M=n//2-1
 la=3 if (n-1)%3==0 and (n-1)%9 else 1
 mu=3 if M%3==0 and M%9 else 1
 N=(n-1)//la;K=M//mu;ell=la*mu
 assert j*(j-1)%N==0 and j*(j-1)*(j-2)%K==0
 A=[gcd(N,j-t) for t in range(2)];C=[gcd(K,j-t) for t in range(3)]
 assert A[0]*A[1]==N and C[0]*C[1]*C[2]==K
 vs=A+C
 assert all(gcd(x,y)==1 for i,x in enumerate(vs) for y in vs[i+1:])
 den=(n-1)*(n-2)
 hs=[Q(ell*C[0]*k*(k-1),den),Q(2*ell*C[1]*j*k,den),Q(ell*C[2]*j*(j-1),den)]
 assert all(q.denominator==1 for q in hs)
 hs=[int(x) for x in hs]
 assert 2*hs[0]%g==0 and hs[1]%(g*g)==0 and 2*hs[2]%g==0
 assert sum(h*(K//c) for h,c in zip(hs,C))==ell*K+la
 assert all(gcd(h,c)==1 and (h*(n-2)-2*ell*c)%(c*c)==0 for h,c in zip(hs,C))
 F0=C[0]*C[2];U=Q((j-1)*(k-1),N*C[1]**2)
 assert U.denominator==1;U=int(U)
 assert hs[1]*F0-U*C[1]**2==la and 4*hs[0]*hs[2]==hs[1]*U
 assert n<=3*F0**2
 ep=gcd(g,2)
 assert g**4*(n-1)**3*(n-2)**2<=ep**2*la**3*mu**2*j*j*k*k*(j-1)*(k-1)
 assert 64*g**4*(n-1)**3<ep**2*la**3*mu**2*n**4
 assert 16*U*g**4*(n-1)**3<la**3*mu**2*n**4
 return {'n':n,'j':j,'g':g,'lambda':la,'mu':mu,'A':A,'C':C,'h':hs,'U':U,'F0':F0}

def run():
 ids=algebra()
 weak=structure(18610024,7865522)
 assert weak['C'][0]==1
 assert trial_prime(1453)
 assert valuation(18610024,3,1453)>0 and valuation(18610024,7865522,1453)>0
 # Boundary p=i=3, and a wrong denominator-transfer p=5 endpoint.
 assert valuation(56,3,3)==2 and valuation(56,11,3)==1
 n=10301892
 assert valuation(n,3,5)==1 and valuation(n,8,5)==1 and valuation(n,5,5)==0
 row=json.loads((ROOT/'outputs/factor_consumer_row_example.json').read_text())
 n=row['n'];la,mu=row['lambda'],row['mu'];N,K=row['N'],row['K']
 factors_checked(K,row['K_factors'])
 for r,f in enumerate(row['factor_n_minus_r']):factors_checked(n-r,f)
 assert n==9*(1<<23) and K==5*1229*6143 and la==mu==1
 assert len(row['factor_n_minus_r'][1])>=2 and len(row['K_factors'])==3
 assert all(int(p)**(2*e)<6*n for p,e in row['factor_n_minus_r'][2].items() if p!='2')
 assert all(int(p)**(3*e)<(n-r)**2 for r,fac in enumerate(row['factor_n_minus_r']) for p,e in fac.items() if p!='2')
 assert 128*9**4*(n-1)**3<n**4, 'example already passes the elementary row exclusion'
 # Integer constant domination for the optional quartic-height interface.
 assert 4*3*36**2==15552
 assert 212*4**4==54272
 assert 50*4**4==12800
 return {'status':'PASS','polynomial_identities':len(ids),'identity_names':ids,'projection_only_weak_example':weak,'boundary_p3':[2,1],'wrong_p5_transfer':[1,1,0], 'row_example':row,'note':'The row theorem, not enumeration of all j, supplies its whole-row coverage.'}
if __name__=='__main__':
 out=run();(ROOT/'outputs/structure-check.json').write_text(json.dumps(out,indent=2)+'\n');print({k:v for k,v in out.items() if k not in ('row_example','identity_names')})
