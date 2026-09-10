import math,json
from source_probe import seeds,params,optimize
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
EPS=0.0000213

def growth(c,d,m0,Tmax=10000):
 terms=[]
 for t in range(1,Tmax+1):
  if 2*((d*t)%(c+d))<=c+d:continue
  alpha=(c+d)/t;beta=max(d/(d*t//(c+d)+1),(c-d)/((c-d)*t//(c+d)+1))
  val=(1-EPS)*alpha-(1+EPS)*beta -2.072*math.sqrt(alpha/m0)-2*(1-EPS)/(t*m0)
  if val>0:terms.append((t,val))
 return sum(v for t,v in terms)/d,[t for t,v in terms]
if __name__=='__main__':
 out=[]
 for m0 in [10**4,10**5,10**6,10**7]:
  ratios=[(3,2),(4,3),(7,5),(25,17),(19,14),(22,15),(23,17)]
  gr={}
  for c,d in ratios:
   val,ts=growth(c,d,m0);gr[c,d]=(val,ts)
  edges={};rows=[]
  for seed in seeds:
   results=[]
   for c,d in ratios:
    val,ts=gr[c,d];a=params(seed,c,d,math.exp(val))
    if a['O3']>1 and a['O4']>1:results.append((a['lam'],c,d,val,len(ts),max(ts),a['O3']))
   best=max(results) if results else None
   pair=tuple(sorted([seed[0],seed[3]]));edges[pair]=best[0] if best else 0
   rows.append(dict(pair=pair,seed=seed,best=best))
  r=dict(status='FLOATING DIAGNOSTIC',m0=m0,graph=optimize(edges),rows=rows,growths=[dict(c=c,d=d,value=v[0],count=len(v[1]),maxt=max(v[1])) for (c,d),v in gr.items()])
  out.append(r);print(m0,r['graph'],flush=True)
  for pair in [(2,7),(3,11),(5,7),(7,13)]:print(next(x for x in rows if tuple(x['pair'])==pair))
 (ROOT/'outputs/growth_probe.json').write_text(json.dumps(out,indent=2))
