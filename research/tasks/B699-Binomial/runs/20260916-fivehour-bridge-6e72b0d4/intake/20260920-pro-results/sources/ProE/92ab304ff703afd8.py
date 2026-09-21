import sympy as sp, math, json, time
lim=4000; ans=[]; counts=[0,0,0]
for X in range(2,lim+1,2):
 n=2*X*X; N=n-1; M=X*X-1
 mu=3 if M%3==0 and M%9 else 1
 K=M//mu
 nf=sp.factorint(N); mods=[int(p**e) for p,e in nf.items()]
 roots=[0]; mod=1
 for q in mods:
  iq=pow(mod,-1,q)
  roots=[r+mod*((v-r)*iq%q) for r in roots for v in (0,1)]
  mod*=q
 for j in roots:
  if not 3<j<=n//2: continue
  counts[0]+=1
  if j*(j-1)*(j-2)%K: continue
  counts[1]+=1
  g=math.gcd(n,j); ts=(j//g)*((n-j)//g)//N
  tf=sp.factorint(ts)
  if len(tf)!=2: continue
  counts[2]+=1
  rec=dict(X=X,n=n,j=j,g=g,alpha=n//g,t3=ts,tf={str(p):int(e) for p,e in tf.items()},mu=mu)
  ans.append(rec)
print(json.dumps({'limit_X':lim,'counts':counts,'examples':ans[:30],'total':len(ans)},indent=2))
