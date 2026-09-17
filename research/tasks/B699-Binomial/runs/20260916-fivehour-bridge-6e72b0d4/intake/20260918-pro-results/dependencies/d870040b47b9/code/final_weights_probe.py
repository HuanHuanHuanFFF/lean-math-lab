from pathlib import Path
import json
root=Path(__file__).parents[1];old=json.loads((root/'evidence/nonuniform_weights.json').read_text());ans=[]
def dim(d):return sum(d-2*b+1 for b in range(d//2+1))
for rec in old:
 if rec['solution']:continue
 cs=rec['counts'];dp={(0,0):(0,[])}
 for i,z in enumerate(cs):
  opts=[(m,z*m*(m+1)//2,m*((i+3)//2+1-z))for m in range(17)];nd={}
  for(cost,w),(loss,ms)in dp.items():
   for m,c,l in opts:
    if cost+c>180:continue
    k=(cost+c,w+m);v=(loss+l,ms+[m])
    if k not in nd or v[0]<nd[k][0]:nd[k]=v
  dp=nd
 cand=[]
 for(cost,w),(loss,ms)in dp.items():
  for d in range(18,24):
   if cost<dim(d)or w<=d:continue
   margin=14000001*(w-d)-(12000+11*w+loss*1244018)
   if margin>0:cand.append({'mask':rec['mask'],'d':d,'ms':ms,'cost':cost,'columns':dim(d),'w':w,'loss':loss,'margin':margin})
 cand.sort(key=lambda x:(x['cost']-x['columns'],-x['margin'],x['d']))
 ans+=cand[:60]
(root/'evidence/final_weight_candidates.json').write_text(json.dumps(ans,indent=2))
(root/'evidence/final_weight_candidates.txt').write_text(''.join(f"{a['mask']} {a['d']} "+' '.join(map(str,a['ms']))+'\n'for a in ans))
print(len(ans));print(ans[:3])
