"""Bounded diagnostic for u=1, g=1, true windows, but no alpha restriction."""
import math,json,argparse
from pathlib import Path
ap=argparse.ArgumentParser()
ap.add_argument("--output",required=True)
args=ap.parse_args()
from sympy import factorint
out=[]; tested=0
for la,mu in [(1,1),(3,1),(1,3)]:
 for H in range(3,302,2):
  for z in range(8,20009,8):
   tested+=1
   C=z*H*H+la
   if math.gcd(C,H)>1: continue
   n=2*mu*C*H+2
   if (3 if n%9 in [4,7] else 1)!=la or (3 if n%9 in [5,8] else 1)!=mu:continue
   tmp=z*(n-1)
   if tmp%la:continue
   m2=mu*mu*C*C-tmp//la;m=math.isqrt(m2) if m2>=0 else -1
   if m*m!=m2:continue
   j=(mu*C-m)*H+1
   if not(4<=j<n//2) or math.gcd(n,j)!=1:continue
   N=(n-1)//la;K=(n-2)//(2*mu)
   if j*(j-1)%N or j*(j-1)*(j-2)%K:continue
   aa=math.gcd(N,j);bb=math.gcd(N,j-1);L=math.gcd(K,j);R=math.gcd(K,j-2)
   if math.gcd(K,j-1)!=H or L*R!=C:continue
   facts={str(p):int(e) for p,e in factorint(C).items()}
   out.append(dict(n=n,j=j,g=1,alpha=n,la=la,mu=mu,N=N,K=K,a=aa,b=bb,L=L,H=H,R=R,C=C,u=1,z=z,m=m,t=C,t_factors=facts,omega=len(facts)))
Path(args.output).write_text(json.dumps(dict(tested=tested,models=out),indent=2))
print('tested',tested,'models',len(out));print(out[:5]);print('TWO',[x for x in out if x['omega']<=2][:10])
