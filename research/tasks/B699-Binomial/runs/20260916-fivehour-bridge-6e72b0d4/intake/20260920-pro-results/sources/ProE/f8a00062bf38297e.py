import sympy as S, math, json, time
from pathlib import Path
Z=S.symbols('Z')
rows=[]; sols=[]; st=time.time()
for d in [1,2,3,5,6,7]:
 for t in range(-3,4):
  if not t or d*t*t>=10:continue
  aa,bb=1-d*t*t,2*d*t
  g=math.gcd(aa,bb); a,b=aa//g,bb//g
  # ae-bc=1
  e,negc,gg=map(int,S.gcdex(a,b)); assert gg==1
  c=-negc
  K=d*d*t**4-10*d*t*t+5
  C=d*d*t*K*K//g**4
  for k in ([1,2] if d in [3,7] else [1]):
   nr=0; good=[]
   for mabs in S.divisors(abs(C)):
    for m in [-int(mabs),int(mabs)]:
     X=e*m-b*Z;Y=-c*m+a*Z
     poly=S.Poly(X**4-10*d*X**2*Y**2+5*d*d*Y**4-k**3*g*m,Z)
     for zz,mult in S.polys.polytools.ground_roots(poly).items():
      if zz.q!=1: continue
      zz=int(zz); x=int(X.subs(Z,zz));y=int(Y.subs(Z,zz));nr+=1
      row=dict(d=d,t=t,k=k,m=m,z=zz,X=x,Y=y)
      if math.gcd(x,y)!=1:continue
      if k==2 and (x%2==0 or y%2==0):continue
      if (t*x-y)%k:continue
      s=(t*x-y)//k
      if s<=0:continue
      v=d*s*s
      if v%2:continue
      if (x*x+d*y*y)%(k*k):continue
      Q=(x*x+d*y*y)//(k*k)
      if Q<=0 or Q%2==0 or math.gcd(v,Q)!=1:continue
      A=Q-v
      if A<=0:continue
      Bnum=y*(5*x**4-10*d*x*x*y*y+d*d*y**4)
      if Bnum%(k**5*s):continue
      B=Bnum//(k**5*s)
      if (B+Q*Q)%A:continue
      nu=(B+Q*Q)//A
      row.update(s=s,v=v,Q=Q,A=A,B=B,nu=nu)
      good.append(row);sols.append(row)
   rows.append(dict(d=d,t=t,k=k,C=C,raw=nr,good=good))
   print(d,t,k,'raw',nr,'good',good,flush=True)
print('time',time.time()-st,'states',len(rows),'sols',sols)
Path(__file__).resolve().parents[1].joinpath('outputs/discovery_endpoint.json').write_text(json.dumps(dict(states=rows,solutions=sols),indent=2))
