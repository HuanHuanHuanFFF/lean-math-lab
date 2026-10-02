from common import *
from collections import Counter
cat0={(a['q'],*a['fee']):a['mask'] for a in json.loads((ROOT/'sources/catalog102.json').read_text())}
adds=[(19,0,0,0,0,0,3),(25,0,0,0,0,0,2)]
cat=cat0|{k:0 for k in adds}
for idx,z in STATES.items():
 C=z['C'];h=z['h'];old=calc(C,RAW);ty=[];cuts=[]
 for c in itertools.product(*[range(0,b+1,2 if r%2 else 1) for r,b in zip(range(3,9),C)]):
  fitted=[e for e,*v in RAW if all(a<=b for a,b in zip(v,c))]
  if not fitted:continue
  q0=min(fitted);u=h-int(old[7][tuple(b-a for a,b in zip(c,C))]);q=q0
  while q<=u and (q,*c) in cat and cat[q,*c]==0:
   if (q,*c) in adds:cuts.append((q,*c))
   q+=1
  if q<=u:ty.append((q,*c))
 now=calc(C,ty);m=int(now[8][C]);print(idx,'h',h,'C',C,'hypothetical104',m,'newcuts',cuts,flush=True)
 (ROOT/f'certificates/probe104_s{idx}.json').write_text(json.dumps({'state':idx,'C':C,'h':h,'M8':m,'types':ty,'counterfactual_until_geometry_accepted':True},indent=2)+'\n')
