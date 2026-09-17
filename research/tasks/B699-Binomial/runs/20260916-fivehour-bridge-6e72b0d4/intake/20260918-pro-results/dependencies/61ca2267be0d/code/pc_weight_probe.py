from pathlib import Path
import json,time
ROOT=Path(__file__).parents[1];E0=14000001;h=1244000;sizes=(2,3,3,4,4,5)
def dim(d):return sum(d-2*b+1 for b in range(d//2+1))
def diag(m):return sum(m-2*b for b in range((m-1)//2+1)) if m else 0
start=time.monotonic();data=json.loads((ROOT/'evidence/weight7_profiles.json').read_text());ans=[]
for rec in data:
 if rec['solution']['margin']>0:continue
 cs=rec['counts'];ds=rec['diagonal'];dp={0:(0,0,0,())}
 for i,(z,de) in enumerate(zip(cs,ds)):
  nd={}
  for m in range(18):
   tri=m*(m+1)//2; cost=z*tri-de*(tri-diag(m))
   if cost>=156:continue
   loss=m*(sizes[i]-z);score=(E0-11)*m-(h+21)*loss
   for c,(s,w,l,ms) in dp.items():
    if c+cost>=156:continue
    k=c+cost;v=(s+score,w+m,l+loss,ms+(m,))
    if k not in nd or v[0]>nd[k][0]:nd[k]=v
  dp=nd
 best=None
 for t in range(15):
  addcost=t*(t+1)+diag(t)
  for c,(s,w,l,ms) in dp.items():
   cost=c+addcost
   if cost>=156:continue
   d=next(d for d in range(24) if dim(d)>cost)
   margin=5000*(s-E0*d-12000)+(463*E0-5463)*t
   cand={'d':d,'weights':ms,'first_two':t,'cost':cost,'columns':dim(d),'omega':w,'loss':l,'scaled_margin':margin}
   if best is None or margin>best['scaled_margin']:best=cand
 ans.append({'counts':cs,'diagonal':ds,'solution':best})
(ROOT/'evidence/pc_weight_profiles.json').write_text(json.dumps(ans,indent=2))
print('profiles',len(ans),'pass',sum(x['solution']['scaled_margin']>0 for x in ans),'seconds',time.monotonic()-start)
for x in ans:
 if x['solution']['scaled_margin']>0:print(x)
