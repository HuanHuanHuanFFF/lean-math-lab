import sys,json,math,itertools
from pathlib import Path
sys.path.insert(0,'/mnt/data/B699-C-R11-EIGHTJET-CONTENT012-20261003/code')
import verify as v
root=Path('/mnt/data/B699-C-R11-EIGHTJET-CONTENT012-20261003')
r=json.loads((root/'inputs/OPEN_332_CANDIDATES.json').read_text());seed=json.loads((root/'inputs/EIGHT_SOURCE_KERNELS.json').read_text());metas={m['a']:m for m in seed['classes']}
rows=[]
for c in r:
 for a in c['open_classes']:
  zeros=[]
  for terms in c['candidate_basis_terms']:
   p=v.makepoly(terms);vec=v.vector(p);d=max(map(sum,p));D,cc=v.fixed_content(vec,a,d);fee=v.fee(vec,[2]*3,metas[a],cc)
   if fee['inside_adopted_consumer']:zeros.append((terms,p,fee))
  item={'id':c['id'],'a':a,'forced_zero_count':len(zeros),'zero_kernels':[{'terms':terms,'fee':fee} for terms,p,fee in zeros]}
  if zeros:
   vals=[math.gcd(*(v.value(p,2,b) for _,p,_ in zeros)) for b in (0,1,2)]
   item['source2_gcd_values']=vals
   if all(vals):item['q2_divides']=v.rough235(math.prod(vals))
   T1=[p for _,p,_ in zeros if min(map(sum,p))==1]
   dets=[p.get((1,0),0)*q.get((0,1),0)-p.get((0,1),0)*q.get((1,0),0) for p,q in itertools.combinations(T1,2)]
   if dets and math.gcd(*dets):item['q0_divides']=v.rough235(math.gcd(*dets))
  rows.append(item)
print('open cells',len(rows),'zero cells',sum(x['forced_zero_count']>0 for x in rows),'q2 bounded',sum('q2_divides' in x for x in rows),'q0 bounded',sum('q0_divides' in x for x in rows))
print('empty',[(x['id'],x['a'],x.get('q0_divides'),x.get('q2_divides')) for x in rows if x.get('q0_divides')==1 or x.get('q2_divides')==1])
print('first',next(x for x in rows if x['id']=='E0956'))
(root/'inputs/RESIDUAL_ANALYSIS_NOT_ADDITIONAL_CLOSURE.json').write_text(json.dumps(rows,sort_keys=True,separators=(',',':'))+'\n')
