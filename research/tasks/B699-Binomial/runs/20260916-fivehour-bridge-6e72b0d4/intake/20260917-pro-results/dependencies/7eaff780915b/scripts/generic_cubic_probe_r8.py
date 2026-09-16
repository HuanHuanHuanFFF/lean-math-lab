from sympy import primerange,n_order
import json
cases=[{'r':8,'c':1,'lam':3,'mu':1,'u':1,'z':z,'exc':1} for z in range(5,433,16) if z%3] + [{'r':8,'c':1,'lam':3,'mu':1,'u':u,'z':z,'exc':1} for u,z in [(3,45),(5,13),(7,5)]] + [{'r':8,'c':1,'lam':1,'mu':1,'u':1,'z':15,'exc':None,'only':1},{'r':8,'c':3,'lam':1,'mu':1,'u':1,'z':15,'exc':None}]
for case in cases:
 r,c,la,mu,u,z=[case[k] for k in ('r','c','lam','mu','u','z')]
 A=u*c*2**(r-1);B=mu*z;L=mu*la;D=u
 for M in (60,180,360,1260,2520):
  if M%60:continue
  S={e for e in range(M) if (case['exc'] is None or e%3!=case['exc']) and ('only' not in case or e%3==case['only'])};pool=[]
  for p in primerange(3,12000):
   if pow(4,M,p)!=1:continue
   k=int(n_order(4,p)); vals={(B*h*h*h+L*h)%p for h in range(p)}
   bad={e for e in range(k) if (A*pow(4,3*e,p)-D*pow(4,e,p))%p not in vals}
   pool.append((p,k,bad,{e for e in S if e%k in bad}))
  selected=[]
  while S:
   best=max(pool,key=lambda x:len(x[3]&S));p,k,bad,cov=best;take=cov&S
   if not take:break
   S-=take;selected.append((p,k,len(take)))
  print((c,r,la,u,z),'M',M,'left',len(S),'sample',sorted(S)[:5],'selected',selected,flush=True)
  if not S:
   path=f'/mnt/data/B699-ProE-allocation-coupling-20260916/verification/generic_c{c}_r{r}_u{u}_z{z}.json'
   open(path,'w').write(json.dumps(dict(case=case,period=M,selected=selected),indent=2));break
