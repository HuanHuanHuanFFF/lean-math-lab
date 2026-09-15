import json,math
from pathlib import Path

def prime(p):return p>=2 and all(p%d for d in range(2,math.isqrt(p)+1))
def order2(p):
 r=2%p;t=1
 while r!=1:r=r*2%p;t+=1
 return t
L=2520
mods=[p for p in range(3,400) if prime(p) and L%order2(p)==0]
res={t:set(e for e in range(L) if e%6 in (2,4)) for t in [1,2,4,5]}
log=[]
for p in mods:
 o=order2(p)
 for t in res:
  good=[]
  for e in range(o):
   x=pow(2,e,p);D=x-1
   if any((12*u*(u-D)*(u-2*D)-(t*D-3*u)*(x*x-2))%p==0 for u in range(p)):good.append(e)
  before=len(res[t]);res[t]={e for e in res[t] if e%o in good}
  if len(res[t])<before:log.append([p,t,before,len(res[t])])
print('mods',mods)
print('reductions',log)
print('residual counts',{t:len(es) for t,es in res.items()})
print('first residues',{t:sorted(es)[:20] for t,es in res.items()})
Path(__file__).with_suffix('.json').write_text(json.dumps({'period':L,'mods':mods,'reductions':log,'residual':{t:sorted(es) for t,es in res.items()}},indent=2))
