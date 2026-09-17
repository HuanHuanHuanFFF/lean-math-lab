from pathlib import Path
import json,time
ROOT=Path(__file__).parents[1];E0=14000001;h=1244000;sizes=(2,3,3,4,4,5)
def dim(d):return sum(d-2*b+1 for b in range(d//2+1))
def dg(m):return sum(m-2*b for b in range((m-1)//2+1)) if m else 0
start=time.monotonic();data=json.loads((ROOT/'evidence/weight7_profiles.json').read_text());ans=[]
for rec in data:
 if rec['solution']['margin']>0:continue
 cs=rec['counts'];ds=rec['diagonal'];dp={(0,0):(0,())}
 for i,(z,de) in enumerate(zip(cs,ds)):
  nd={}
  for m in range(18):
   tri=m*(m+1)//2;cost=z*tri-de*(tri-dg(m));loss=m*(sizes[i]-z)
   if cost>200:continue
   for(c,w),(l,ms)in dp.items():
    if c+cost>200:continue
    k=(c+cost,w+m);v=(l+loss,ms+(m,))
    if k not in nd or v[0]<nd[k][0]:nd[k]=v
  dp=nd
 cand=[]
 for (c,w),(l,ms) in dp.items():
  for d in range(14,24):
   margin=E0*(w-d)-12000-11*w-(h+21)*l
   if margin>0: cand.append({'d':d,'weights':ms,'cost':c,'columns':dim(d),'omega':w,'loss':l,'margin':margin})
 cand.sort(key=lambda x:(x['cost']-x['columns'],-x['margin'],x['d']))
 ans.append({'counts':cs,'diagonal':ds,'candidates':cand[:20]})
(ROOT/'evidence/jet_candidates.json').write_text(json.dumps(ans,indent=2))
print('profiles',len(ans),'seconds',time.monotonic()-start)
for a in ans:print(a['counts'],a['diagonal'],[(x['d'],x['weights'],x['cost']-x['columns'])for x in a['candidates'][:2]])
pts=[(r,s*(r-s))for r in range(3,9) for s in range(r//2+1)]
lookup={(tuple(a['counts']),tuple(a['diagonal'])):a['candidates']for a in ans}
masks=list(map(int,(ROOT/'evidence/uncovered_masks.txt').read_text().split()))
lines=[]
for mask in masks:
 cs=tuple(sum(bool(mask>>i&1) for i,(r,v) in enumerate(pts)if r==rr) for rr in range(3,9))
 ds=tuple(sum(bool(mask>>i&1) and 4*v==r*r for i,(r,v) in enumerate(pts)if r==rr) for rr in range(3,9))
 for a in lookup[cs,ds][:1]:lines.append(f"{mask} {a['d']} "+' '.join(map(str,a['weights']))+'\n')
(ROOT/'evidence/jet_tasks.txt').write_text(''.join(lines))
