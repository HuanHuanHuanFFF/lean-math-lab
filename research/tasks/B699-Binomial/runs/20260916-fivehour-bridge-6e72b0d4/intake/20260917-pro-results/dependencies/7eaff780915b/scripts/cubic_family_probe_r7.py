from sympy import primerange,n_order
import json
cases=[(64,B,0) for B in (21,69,117,165,213)]
for A,B,exc in cases:
 for M in (60,180,360,1260,2520,27720,55440):
  if M%60:continue
  S={e for e in range(M) if e%3!=exc}; pool=[]
  for p in primerange(3,12000):
   if pow(4,M,p)!=1:continue
   k=int(n_order(4,p)); vals={(B*h*h*h+3*h)%p for h in range(p)}
   bad={e for e in range(k) if (A*pow(4,3*e,p)-pow(4,e,p))%p not in vals}
   pool.append((p,k,bad,{e for e in S if e%k in bad}))
  selected=[]
  while S:
   best=max(pool,key=lambda x:len(x[3]&S)); p,k,bad,cov=best; take=cov&S
   if not take:break
   S-=take;selected.append((p,k,len(take)))
  print(A,B,'period',M,'left',len(S),'sample',sorted(S)[:10],'selected',selected,flush=True)
  if not S:
   path=f'/mnt/data/B699-ProE-allocation-coupling-20260916/verification/cubic_{A}_{B}_discovery.json'
   open(path,'w').write(json.dumps({'A':A,'B':B,'exclude_mod3':exc,'period':M,'selected':selected},indent=2))
   break
