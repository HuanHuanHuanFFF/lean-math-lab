import math,json
import sympy as S
from pathlib import Path
root=Path(__file__).resolve().parents[1]
for s in range(20,61):
 x=7*(1<<s)
 if (x-1)%9 not in [3,6]:continue
 J=x+1;P=(x-1)//3;blocks=[int(p)**int(e) for p,e in S.factorint(J).items()]
 inv=pow(49*P,-1,J);rr=[0];mod=1
 for b in blocks:
  rr=[r+mod*((t-r)*pow(mod,-1,b)%b) for r in rr for t in [0,1]];mod*=b
 for y in rr:
  u=inv*y%J
  if u<=0 or 98*u*(x-1)>3*x*x or u%2==0 or u%3==0:continue
  n=x*x;j=49*u*P;g=math.gcd(n,j)
  if g!=49 or j<4 or 2*j>n:continue
  beta=j//g;gamma=(n-j)//g;d=math.gcd(beta,n-1);e=beta//d
  if e<23:continue
  M=(n-2)//2
  def vp(a,p):
   e=0
   while a%p==0:a//=p;e+=1
   return e
  lam=3 if vp(n-1,3)==1 else 1;mu=3 if vp(M,3)==1 else 1
  N=(n-1)//lam;K=M//mu;B=n*(n-1)*(n-2)//6
  E1=N//math.gcd(N,j*(j-1));E2=K//math.gcd(K,j*(j-1)*(j-2));W=math.gcd(B,E2)
  q=None
  for p in list(S.primerange(3,10000)):
   if B%p==0:
    val=0;pp=p
    while pp<=n:val+=(j%pp>n%pp);pp*=p
    if val:q=int(p);v=val;break
  rec={'s':s,'x':x,'n':n,'j':j,'g':g,'coefficient_u':u,'beta':beta,'gamma':gamma,'d':d,'e':e,'root_plus_factorization':{str(p):int(a) for p,a in S.factorint(J).items()},'first_projection':j*(j-1)%N,'second_projection':j*(j-1)*(j-2)%K,'W':W,'prime_witness':q,'vp_second':v if q else None}
  print(json.dumps(rec));(root/'exploration/display.json').write_text(json.dumps(rec,indent=2));raise SystemExit
print('none')
