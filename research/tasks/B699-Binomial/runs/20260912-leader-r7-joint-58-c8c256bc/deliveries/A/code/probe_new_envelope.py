from pathlib import Path
import json,itertools
R=Path(__file__).resolve().parents[1]
data=json.loads((R/'evidence/family_reuse_discovery.json').read_text())
rows=data['pareto_rows'];P=[2,3,5,7]
# Round DOWN so any future finite-height certificate has a margin.
# This is still only a discovery graph; rate validity is a separate exact obligation.
for r in rows:r['wp']=max(1,int((r['xp_float']-0.003)*10000));r['wq']=max(1,int((r['xq_float']-0.003)*10000))
vals={p:{0}|{r['wp'] if r['p']==p else r['wq'] for r in rows if p in [r['p'],r['q']]} for p in P}
best=(99999,None);count=0
for x,y,z in itertools.product(*(sorted(vals[p]) for p in P[:3])):
 d={2:x,3:y,5:z}; w=0;ok=True
 for r in rows:
  p,q=r['p'],r['q']
  if p!=7 and q!=7:
   if d[p]<r['wp'] and d[q]<r['wq']:ok=False;break
  elif p==7:
   if d[q]<r['wq']:w=max(w,r['wp'])
  else:
   if d[p]<r['wp']:w=max(w,r['wq'])
 if not ok:continue
 count+=1;t=x+y+z+w
 if t<best[0]:best=(t,[x,y,z,w])
print(json.dumps({'status':'DISCOVERY_ONLY','lower':best[0],'witness':best[1],'denominator':10000,'feasible_grid_cells':count,'target':13000}))
(R/'evidence/global_envelope_discovery.json').write_text(json.dumps({'lower':best[0],'witness':best[1],'rows':rows,'denominator':10000,'feasible_grid_cells':count},indent=2)+'\n')
