"""Floating selection of useful rows. Full thresholds and all G bounds remain proof obligations."""
from pathlib import Path
from fractions import Fraction as F
import sys,json,math
R=Path(__file__).resolve().parents[1];S=R/'adopted/pro-a'
sys.path[:0]=[str(S/'code'),str(S/'code/vendor')]
from design_certified_content import rates,TABLE
from probe_weighted_asymmetric import nondominated,solve

def profile(rows,i=10):
 es=nondominated(rows);opts=[];ps=[2,3,5,7]
 for s in range(5,10):
  w=[2*s-a for a in range(i)];z=solve(ps,es,lambda z:sum(a*b for a,b in zip(w,sorted(z))))
  opts.append(dict(s=s,net=10000*(sum(w)-s*(s+1)-sum(w[:4]))+z['min'],**z))
 return max(opts,key=lambda r:r['net'])
def main():
 old=json.loads((S/'input/new_cut_inputs.json').read_text())['cuts']+json.loads((S/'input/i12_cut_inputs.json').read_text())['cuts'];old=[r for r in old if max(r['p'],r['q'])<10]
 prob=json.loads((R/'evidence/probe_moderate.json').read_text())['frontiers'];pool=[]
 for r in prob:
  O=r['display_O'];gg=r['g_asym'];g=F(math.floor(100*(gg-min(.04,O/2))),100)
  if g<=0:continue
  se=tuple(r[x] for x in ['p','q','k0','l0','a','b']);e,d,f=[r[x] for x in ['e','d','f']];z=rates(se,e,d,f,float(g))
  if z:
   z.update(g=str(g),m0=0,content_source='NEW_UNPROVED_G',g_asym=gg);z['wp']-=7;z['wq']-=7
   if min(z['wp'],z['wq'])>0:pool.append(z)
 seeds={tuple(r[x] for x in ['p','q','k0','l0','a','b']) for r in prob}
 for se in seeds:
  for (c,d),(L,m0) in TABLE.items():
   r=rates(se,d,d,c-d,d*math.log(L/10000))
   if r:pool.append(dict(r,content_source='BFT_5_1',L=str(F(L,10000)),m0=m0))
 allprof=profile(old+pool);print('FULL',allprof,flush=True)
 current=[x[4] for x in nondominated(old)];log=[]
 for it in range(60):
  b=profile(current);log.append(b);print('STEP',it,b,flush=True)
  if b['net']>1500:break
  z=dict(zip([2,3,5,7],b['witness']));known={tuple(r[x] for x in ['e','d','f']) for r in current if r['content_source']=='NEW_UNPROVED_G'}
  def score(r):
   violation=min(r['wp']-z[r['p']],r['wq']-z[r['q']]);cost=1 if r['content_source']=='BFT_5_1' or tuple(r[x] for x in ['e','d','f']) in known else 1.12
   return violation/cost
  best=max(pool,key=score)
  if score(best)<=0:break
  print('ADD',json.dumps(best),flush=True);current=[x[4] for x in nondominated(current+[best])]
 # Remove nonessential cuts while preserving positive net >1000.
 changed=True
 while changed:
  changed=False
  for k in range(len(current)):
   other=current[:k]+current[k+1:]
   if profile(other)['net']>1000:current=other;changed=True;break
 b=profile(current);print('FINAL',b,'cuts',len(current),flush=True)
 specs={tuple(r[k] for k in ['e','d','f','g']) for r in current if r['content_source']=='NEW_UNPROVED_G'};print('NEWG',sorted(specs),flush=True)
 (R/'evidence/i10_selected_design.json').write_text(json.dumps(dict(status='FLOAT_DESIGN_NOT_THEOREM',profile=b,trace=log,cuts=current,full_profile=allprof),indent=2)+'\n')
if __name__=='__main__':main()
