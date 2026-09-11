"""Exact finite probe of complete reduced-denominator families. Not an absolute bound."""
import math,json,time,argparse
from pathlib import Path
from sympy import factorint,divisors

def vp(n,p):
 e=0
 while n%p==0:n//=p;e+=1
 return e

def supports(n,j):
 for r in range(3):
  for p,e in factorint(n-r).items():
   p,e=int(p),int(e)
   if p==2 or (p==3 and e==1):continue
   Q=p**e
   if j%Q>r:return False,[p,Q,r,j%Q]
 return True,None

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--exponents',type=int,default=12);a0=ap.parse_args()
 t=time.monotonic();stage=[0,0,0];out=[];normals=[]
 for e in range(a0.exponents+1):
  for eps in (0,1):
   a=(1<<e)*3**eps
   if a<2:continue
   for b in range(1,a//2+1):
    if math.gcd(a,b)!=1:continue
    T=3*b*(a-b)
    for L in divisors(T):
     L=int(L)
     if (L+1)%a:continue
     g=(L+1)//a;n=g*a;j=g*b
     if j<4 or 2*j>n or n%4 or (eps and vp(n,3)!=1):continue
     stage[0]+=1
     if 6*j*(j-1)*(j-2)%(n-2):continue
     stage[1]+=1
     ok,why=supports(n,j)
     if ok:stage[2]+=1
     out.append({'n':n,'j':j,'a':a,'b':b,'g':g,'support':ok,'first_fail':why})
 result={'status':'finite_relative_probe_only','max_e':a0.exponents,'stages':stage,'rows':out,'seconds':time.monotonic()-t}
 p=Path(__file__).resolve().parents[1]/'outputs/probe_slope_support.json';p.write_text(json.dumps(result,indent=2));print('stages',stage,'secs',result['seconds']);print(json.dumps(out[:10],indent=2))
if __name__=='__main__':main()
