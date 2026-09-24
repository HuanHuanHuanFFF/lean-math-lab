import sys,json
from pathlib import Path
from functools import lru_cache
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'baseline'))
import cover, source_model as model
INF=10**9

def install(maxsat):
 raw=[]
 for x in cover.RAW:
  if x[2]=='free_degree_ge29':
   for q in range(29,maxsat+1):
    for idx in (1,3,5):
     c=[0]*6;c[idx]=1
     raw.append((q,tuple(c),f'sat{q}_kappa',(0,)*6,tuple(c)))
   raw.append((maxsat+1,(0,)*6,f'free_degree_ge{maxsat+1}',(0,)*6,(0,)*6))
  else: raw.append(x)
 raw=sorted(set(raw)); kept=[]
 for a in raw:
  if any(b[0]<=a[0] and all(x<=y for x,y in zip(b[1],a[1])) for b in kept):continue
  kept.append(a)
 return raw,kept

def solver(items):
 @lru_cache(None)
 def f(n,cap):
  if n==0:return 0
  best=INF
  for e,c,*_ in items:
   if all(a<=b for a,b in zip(c,cap)):
    z=f(n-1,tuple(b-a for a,b in zip(c,cap)))
    if z<INF:best=min(best,e+z)
  return best
 return f

def e0_survivors(maxsat):
 raw,kept=install(maxsat); f=solver(kept); cover.ITEMS=kept; cover.RAW=raw; cover.minimum_degree=f
 assert all(any(b[0]<=a[0] and all(x<=y for x,y in zip(b[1],a[1])) for b in kept) for a in raw)
 out=[];queries=0
 for st in model.all_states():
  if st['E']:continue
  rec=cover.state_check(st,9,False)
  queries+=len(rec['exact_queries'])
  if rec['winners']:
   out.append({k:rec[k] for k in ['h','v','E','d','p']} | {'winner_count':len(rec['winners']),'example':rec['winners'][0]})
 return out,queries,len(raw),len(kept)

def positive_survivors(maxsat):
 raw,kept=install(maxsat);f=solver(kept)
 assert all(any(b[0]<=a[0] and all(x<=y for x,y in zip(b[1],a[1])) for b in kept) for a in raw)
 out=[];query=0
 for st in model.all_states():
  if not st['E']:continue
  cap0=tuple(2*d+p for d,p in zip(st['d'],st['p']))
  active=[t for t in model.types if all(a<=b for a,b in zip(t['cost'],cap0))]
  good=[]
  for A in range(1,min(st['E'],9)+1):
   found=[False]
   def visit(index,h,cap,n):
    nonlocal query
    if found[0]:return
    if index==len(active):
     rem=9-A-n
     if rem>=0:
      query+=1; a=f(rem,cap)
      if a<=h:found[0]=True
     return
    t=active[index]
    mx=min([h//t['e'],9-A-n]+[c//v for c,v in zip(cap,t['cost']) if v])
    for k in range(mx+1):
     visit(index+1,h-k*t['e'],tuple(a-k*b for a,b in zip(cap,t['cost'])),n+k)
     if found[0]:return
   visit(0,st['h']-3*A,cap0,0)
   if found[0]:good.append(A)
  if good:out.append({'state':st,'A_counts':good})
 return out,query

def main(dst):
 dst=Path(dst);dst.mkdir(parents=True,exist_ok=False)
 e30,q30,raw30,k30=e0_survivors(30); p30,pq30=positive_survivors(30)
 assert len(e30)==98 and len(p30)==0
 assert min(x['h'] for x in e30)==107
 result={
  'status':'PASS_KSAT30_EDGE9_LEDGER',
  'after_KSAT30':{'E0_nine_states':98,'positiveE_nine_states':0,'minimum_equality_h':107},
  'EDGE9':True,'COVER8':False,
  'interpretation':'nine factors force E=0, hence D(G)=305 and every nonconstant factor of Gbar has D=2e',
  'queries':{'E0_q30':q30,'positive_q30':pq30},
  'signature_counts':{'raw_q30':raw30,'pareto_q30':k30},
  'prior_DP_bug':'old minimum_degree initialized at 29*n after free q29 had been removed; this only widened the relaxation and did not invalidate COVER9. A separate corrected diagnostic in this research session gave KSAT29-only counts 111 E0 + 1 positive-E.'
 }
 (dst/'ledger_result.json').write_text(json.dumps(result,indent=2)+'\n')
 (dst/'E0_nine_survivors_after_KSAT30.json').write_text(json.dumps(e30,indent=2)+'\n')
 (dst/'positiveE_after_KSAT30.json').write_text(json.dumps(p30,indent=2)+'\n')
 print(result['status'],json.dumps(result,sort_keys=True))
if __name__=='__main__': main(sys.argv[1])
