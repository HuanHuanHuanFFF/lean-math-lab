import json,math,sys,time,itertools
from fractions import Fraction as Q
from pathlib import Path
import sympy as s
N,X=s.symbols('N X');MON=[(a,t-a) for t in range(7) for a in range(t,-1,-1)]; IDX={e:i for i,e in enumerate(MON)}
def pv(f):
 P=s.Poly(f,N,X);return [int(P.coeff_monomial(N**a*X**b)) for a,b in MON]
def tr(v):
 out={}
 for c,(a,b) in zip(v,MON):
  if not c:continue
  for i in range(a+1):
   for j in range(a-i+1):
    d=c*math.comb(a,i)*math.comb(a-i,j)*21**(a-i-j)*2**i
    for k in range(b+1):
     e=i+k,j;out[e]=out.get(e,0)+d*math.comb(b,k)*7**(b-k)
 return {e:c for e,c in out.items() if c}
def proof(f):
 v=pv(f);z=tr(v)
 if len({x>0 for x in z.values()})==1 and z.get((0,0)):
  return {'type':'sign','v':v}
 for r in range(3):
  vs=[int(f.subs({N:r,X:b})) for b in range(r+1)]
  if all(vs):
   c=abs(math.prod(vs))
   for p in (2,3,5):
    while c%p==0:c//=p
   if c==1:return {'type':'source','r':r,'values':vs,'v':v}
 return None
ans=json.loads(Path('/mnt/data/c11_work/classcontent8.json').read_text());out=[];start=time.time()
for rr in ans:
 if rr.get('old') or rr.get('good'):continue
 r={'id':rr['id'],'layout':rr['layout'],'shape':rr['shape'],'candidates':[]}
 for v in rr['basis']:
  f=sum(c*N**a*X**b for c,(a,b) in zip(v,MON));c,fa=s.factor_list(f,N,X)
  pr=[proof(fac) for fac,e in fa]
  r['candidates'].append({'v':v,'constant':int(c),'factors':[{'v':pv(fac),'e':e,'proof':p} for (fac,e),p in zip(fa,pr)],'nonzero':all(p is not None for p in pr)})
 out.append(r)
 if len(out)%20==0:print(len(out),'resolved',sum(any(g['nonzero'] for g in r['candidates']) for r in out),'sec',time.time()-start,flush=True)
Path('/mnt/data/c11_work/factors_unsigned.json').write_text(json.dumps(out))
print('done',len(out),'resolved',sum(any(g['nonzero'] for g in r['candidates']) for r in out),flush=True)
for r in out:
 if not any(g['nonzero'] for g in r['candidates']) and max(r['shape'])==4:print('UNRESOLVED4',r['id'],r['layout'])
