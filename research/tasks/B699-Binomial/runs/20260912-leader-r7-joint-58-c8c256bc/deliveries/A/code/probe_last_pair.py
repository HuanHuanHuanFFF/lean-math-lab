"""Small, explicitly bounded discovery probe for the missing complement {3,7}.
Reuses the frozen accepted content families; no new G-family or content search.
"""
from pathlib import Path
from fractions import Fraction
import json,itertools,math,time
from source_paths import ROOT as R, effective;E=effective()
old=json.loads((E/'input/cuts.json').read_text())['cuts'];families={};pub=[]
for r in old:
 if r['content_source']=='new_permutation_content':families[tuple(r['content_canonical'])]=(r['g'],r['m0'])
 else:
  v={k:r[k] for k in ['e','d','f','L','m0','content_source']}
  if v not in pub:pub.append(v)
variants=[]
for tri,(g,m0) in families.items():
 for e,d,f in sorted(set(itertools.permutations(tri))):variants.append({'e':e,'d':d,'f':f,'content_source':'new_permutation_content','content_canonical':list(tri),'g':g,'m0':m0,'g_float':float(Fraction(g))})
for v in pub:variants.append({**v,'g_float':v['d']*math.log(float(Fraction(v['L'])))})
seeds=[]
for p,q in [(3,7),(7,3)]:
 for k,l in itertools.product(range(1,13),repeat=2):
  P=p**k;Q=q**l
  if max(P,Q)>10**9:continue
  for a in range(1,17):
   b=(a*P-1)//Q;D=a*P-b*Q
   if 1<=b<=16 and math.gcd(a,b)==1 and 1<=D<=64 and D<a*P:seeds.append((p,q,k,l,a,b,D))
start=time.monotonic();pareto=[];tested=0
for seed in seeds:
 p,q,k,l,a,b,D=seed;P=p**k;Q=q**l;z=D/(a*P);h=1-z
 for v in variants:
  tested+=1;e,d,f=v['e'],v['d'],v['f'];N=e+d+f;c=d+f
  al=N*math.log(N)-e*math.log(e)-d*math.log(d)-f*math.log(f)
  bq=f*(1+h)+d+e*h;tq=2*f/(bq+math.sqrt(bq*bq-4*h*N*f))
  be=e*(1+z)+d+f*z;te=2*e/(be+math.sqrt(be*be-4*z*N*e))
  lq=al+f*math.log(tq)+d*math.log1p(-tq)+e*math.log1p(-h*tq)
  le=al+e*math.log(te)+d*math.log1p(-te)+f*math.log1p(-z*te)
  O=f*math.log(P)-max(e,d)*math.log(a)-c*math.log(b)-lq+v['g_float']
  T=e*math.log(P)+c*math.log(Q)-(c-min(e,d))*math.log(a)-(e+d)*math.log(D)-le+v['g_float']
  if O<=0 or T<=0:continue
  xp=1-(e+f)*math.log(P)/T;xq=1-c*math.log(Q)/T
  if min(xp,xq)<=0:continue
  x,y=(xp,xq) if p==3 else (xq,xp)
  if any(xx>=x and yy>=y for xx,yy,_ in pareto):continue
  pareto=[(xx,yy,r) for xx,yy,r in pareto if not(x>=xx and y>=yy)]
  row={**dict(zip(['p','q','k0','l0','a','b','D0'],seed)),**{k:v for k,v in v.items() if k!='g_float'},'xp_float':xp,'xq_float':xq,'O_float':O,'T_float':T}
  pareto.append((x,y,row))
pareto.sort(reverse=True,key=lambda t:t[:2])
best=min((x+max([yy for xx,yy,r in pareto if x+1e-12<xx]+[0]),x) for x in {0}|{x for x,y,r in pareto})
out={'status':'DISCOVERY_ONLY','scope':{'base_primes':[3,7],'exponents_max':12,'prime_power_max':10**9,'coefficients_max':16,'difference_max':64},'seeds':len(seeds),'variants':len(variants),'evaluations':tested,'seconds':time.monotonic()-start,'minimal_sum':best[0],'boundary_x3':best[1],'pareto_rows':[r for x,y,r in pareto]}
(R/'evidence/last_pair_discovery.json').write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps({k:v for k,v in out.items() if k!='pareto_rows'},indent=2))
for x,y,r in pareto:print(round(x,6),round(y,6),tuple(r[k] for k in ['p','q','k0','l0','a','b','D0']),tuple(r[k] for k in ['e','d','f']))
