from discover_jets import *
from collections import Counter

def add(a,b):
 c=dict(a)
 for k,v in b.items():c[k]=c.get(k,0)+v
 return {k:v for k,v in c.items() if v}
def poly(xs):
 c={}
 for x,b in zip(xs,BAS):c=add(c,{k:x*v for k,v in b.items()})
 return c
def subline(a,t):
 out={}
 for (i,j),v in a.items():
  for k in range(j+1):out[i+k,0]=out.get((i+k,0),0)+v*comb(j,k)*t**k*(-t*t)**(j-k)
 return {k:v for k,v in out.items() if v}
def main():
 recs=json.loads((ROOT/'evidence/mu29_gates.json').read_text())['records'];jobs=json.loads((ROOT/'evidence/mu29_jets.json').read_text())['systems'];out=[];bad=[];stats=Counter()
 for job in jobs:
  if job['status']!='soluble':continue
  rec=recs[job['index']];h0=h0_of(rec)
  base=add(h0,poly([Q(*x) for x in job['base']]))
  ds=[poly([Q(*x) for x in d]) for d in job['directions']]
  ts=[t for t in range(9) if not subline(base,t) and all(not subline(v,t) for v in ds)]
  if not ts:bad.append(job['index'])
  stats[('isolated' if not ds else 'line')+('_factor' if ts else '_no_factor')]+=1
  out.append({'index':job['index'],'factors_t':ts})
 print(dict(stats));print('NO COMMON LINE FACTORS',bad)
 (ROOT/'evidence/mu29_factors.json').write_text(json.dumps({'stats':dict(stats),'records':out,'unresolved':bad},separators=(',',':')))
if __name__=='__main__':main()
