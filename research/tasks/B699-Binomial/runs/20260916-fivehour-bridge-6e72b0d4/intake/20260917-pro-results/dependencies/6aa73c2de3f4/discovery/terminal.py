import json,math,time,sys
from pathlib import Path
import sympy as sp
from finite_domain import s_part
B=Path(__file__).parent
prime_nodes={}

def certprime(p):
 if str(p) in prime_nodes:return
 if p==2:prime_nodes[str(p)]={'p':2};return
 factors={int(q):int(e)for q,e in sp.factorint(p-1).items()}
 assert math.prod(q**e for q,e in factors.items())==p-1
 for q in factors:certprime(q)
 for a in range(2,2000):
  if pow(a,p-1,p)==1 and all(math.gcd(pow(a,(p-1)//q,p)-1,p)==1 for q in factors):break
 else:raise RuntimeError(('no prime witness',p))
 prime_nodes[str(p)]={'p':p,'a':a,'factors':[[q,e]for q,e in sorted(factors.items())]}

def crts(n,i,groups):
 hi=n//2;lo=i+1;mod=1;res=[0];sizes=[];operations=0
 for p,e,r in sorted(groups,key=lambda t:t[0]**t[1],reverse=True):
  Q=p**e
  if mod>hi:
   res=[a for a in res if lo<=a<=hi and a%Q<=r]
   sizes.append([Q,len(res)]);operations+=len(res)
   if not res:break
   continue
  inv=pow(mod,-1,Q);new=[]
  for a in res:
   for b in range(r+1):
    operations+=1;z=a+mod*((b-a)*inv%Q)
    if z<=hi:new.append(z)
  mod*=Q;res=sorted(set(new));sizes.append([Q,len(res)])
  if not res:break
 if res:
  vals=[v for a in res for v in range(a,hi+1,mod)if v>=lo]
 else:vals=[]
 return vals,sizes,operations

def run(i):
 ds=json.loads((B/f'domain{i}.json').read_text());st=time.monotonic();out=[]
 for n in ds['rows']:
  groups=[];factor_rows=[]
  for r in range(i):
   v=(n-r)//s_part(n-r,i)
   fs={int(p):int(e)for p,e in sp.factorint(v).items()}
   for p in fs:certprime(p)
   factor_rows.append([[p,e]for p,e in sorted(fs.items())]);groups += [(p,e,r)for p,e in fs.items()]
  vals,sizes,ops=crts(n,i,groups)
  out.append({'n':n,'factor_rows':factor_rows,'survivors':vals,'sizes':sizes,'operations':ops})
  print('row',i,n,'groups',len(groups),'CRTlast',len(vals),'ops',ops,flush=True)
  if len(vals)>10000:raise RuntimeError('large residual')
  # Keep true witnesses separate, never label a projection as NC.
  witnesses=[]
  for j in vals:
   for p,e,r in groups:
    Q=p
    while Q<=n:
     if j%Q>n%Q:break
     Q*=p
    if Q<=n:
     witnesses.append([j,p,Q]);break
   else:raise RuntimeError(('unresolved highest-layer candidate',n,i,j))
  out[-1]['witnesses']=witnesses
 ans={'i':i,'rows':out,'prime_nodes':prime_nodes,'seconds':time.monotonic()-st}
 (B/f'terminal{i}.json').write_text(json.dumps(ans,indent=2))
 print('FINISHED',i,'rows',len(out),'prime_nodes',len(prime_nodes),'seconds',ans['seconds'],flush=True)
if __name__=='__main__':run(int(sys.argv[1]))
