"""Discovery probe only: reuse the already accepted 33 content families on frozen seeds.
No content, seed or m0 search. Output is not an acceptance certificate.
"""
from pathlib import Path
import json,itertools,math
from source_paths import ROOT as R, effective
E=effective()
rows=json.loads((E/'input/cuts.json').read_text())['cuts']
seeds={tuple(r[k] for k in ['p','q','k0','l0','a','b','D0']) for r in rows if max(r['p'],r['q'])<=7}
families={}
for r in rows:
 if r['content_source']=='new_permutation_content':
  key=tuple(r['content_canonical']);families[key]=(float(__import__('fractions').Fraction(r['g'])),r['g'],r['m0'])
variants=[]
for tri,(g,gs,m0) in families.items():
 for e,d,f in set(itertools.permutations(tri)):
  variants.append(dict(e=e,d=d,f=f,g_float=g,g=gs,m0=m0,content_source='new_permutation_content',content_canonical=list(tri)))
for r in rows:
 if r['content_source']=='BFT_5_1':
  v={k:r[k] for k in ['e','d','f','L','m0','content_source']};v['g_float']=r['d']*math.log(float(__import__('fractions').Fraction(r['L'])))
  if v not in variants:variants.append(v)
ans=[]
for seed,v in itertools.product(sorted(seeds),variants):
 p,q,k,l,a,b,D=seed;e,d,f=v['e'],v['d'],v['f'];P=p**k;Q=q**l
 z=D/(a*P);h=1-z;N=e+d+f;c=d+f
 al=N*math.log(N)-e*math.log(e)-d*math.log(d)-f*math.log(f)
 bq=f*(1+h)+d+e*h;tq=2*f/(bq+math.sqrt(bq*bq-4*h*N*f))
 be=e*(1+z)+d+f*z;te=2*e/(be+math.sqrt(be*be-4*z*N*e))
 lq=al+f*math.log(tq)+d*math.log1p(-tq)+e*math.log1p(-h*tq)
 le=al+e*math.log(te)+d*math.log1p(-te)+f*math.log1p(-z*te)
 g=v['g_float']
 O=f*math.log(P)-max(e,d)*math.log(a)-c*math.log(b)-lq+g
 T=e*math.log(P)+c*math.log(Q)-(c-min(e,d))*math.log(a)-(e+d)*math.log(D)-le+g
 if O<=0 or T<=0:continue
 xp=1-(e+f)*math.log(P)/T;xq=1-c*math.log(Q)/T
 if xp<=0 or xq<=0:continue
 r={**dict(zip(['p','q','k0','l0','a','b','D0'],seed)),**{k:x for k,x in v.items() if k!='g_float'},'xp_float':xp,'xq_float':xq,'O_float':O,'T_float':T}
 ans.append(r)
front=[];summary=[]
for p,q in itertools.combinations([2,3,5,7],2):
 rr=[]
 for a in ans:
  if {a['p'],a['q']}=={p,q}:
   x,y=(a['xp_float'],a['xq_float']) if a['p']==p else (a['xq_float'],a['xp_float'])
   rr.append((x,y,a))
 rr.sort(key=lambda x:(-x[0],-x[1]));last=-1;fr=[]
 for x,y,a in rr:
  if y>last+1e-12:fr.append((x,y,a));last=y
 front.extend([a for x,y,a in fr])
 # best product exponent implied by all these pair clauses
 xs={0}|{x for x,y,a in fr};candidates=[]
 for x in sorted(xs):
  y=max([y for xx,y,a in fr if x+1e-12<xx]+[0])
  candidates.append((x+y,x,y))
 best=min(candidates)
 out={'complement':[p,q],'coincidence':[x for x in [2,3,5,7] if x not in [p,q]],'frontier_rows':len(fr),'minimal_product_exponent':best[0],'boundary_witness':list(best[1:]),'can_exclude':best[0]>.3001}
 summary.append(out)
 print(json.dumps(out))
 if best[0]>.3001:
  print('frontier',[(round(x,6),round(y,6),(a['e'],a['d'],a['f']),a['content_source'],a['p']) for x,y,a in fr])
(R/'evidence/family_reuse_discovery.json').write_text(json.dumps({'scope':'frozen_seeds_and_existing_content_only','seeds':len(seeds),'variants':len(variants),'summary':summary,'pareto_rows':front},indent=2)+'\n')
