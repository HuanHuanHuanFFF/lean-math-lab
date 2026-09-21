"""Exploratory same-G ledger with exact B22 types, recovered TRACE, restricted B28 gate."""
import json,sys,itertools
from pathlib import Path
from fractions import Fraction as F
from functools import lru_cache
ROOT=Path(__file__).resolve().parents[1]
from algebra import trace_allowed
OFF=((77,74),(67,57),(51,54,46),(40,43,48),(31,34,39,45),(25,28,33,39))
DIAG=(0,56,0,41,0,52)
def lower(i,v):return sum(max(x-v,0) for x in OFF[i])+(max(DIAG[i]-v,0)+1)//2

def under_compositions(n,k):
 if k==0:yield ();return
 for a in range(n+1):
  for tail in under_compositions(n-a,k-1):yield (a,)+tail

def all_states():
 out=[]
 for h in range(153):
  a=[]
  for i in range(6):
   v=0
   while lower(i,v)>h:v+=1
   assert v==0 or lower(i,v-1)>h
   a.append(v)
  budget=305-2*h-sum(a)
  if budget<0:continue
  for u in under_compositions(budget,6):
   v=[x+y for x,y in zip(a,u)]
   out.append(dict(h=h,v=v,E=305-2*h-sum(v),d=[h-lower(i,v[i]) for i in range(6)],p=[max(DIAG[i]-v[i],0)%2 if DIAG[i] else 0 for i in range(6)]))
 assert len(out)==2035 and sum(x['E']==0 for x in out)==1540
 assert max(sum(x['d']) for x in out if x['E']==0)==16
 return out
source=json.loads((ROOT/'sources/b22_adopted_families.json').read_text());mons=source['monomials']
def mk(name,e,delta,kappa,extra):
 k=[0,kappa[0],0,kappa[1],0,kappa[2]]
 return dict(name=name,e=e,delta=delta,kappa=k,extra=extra,cost=[2*a+b for a,b in zip(delta,k)])
types=[];adopted=[]
for a in source['families']:
 if a['kind'] not in ['plane','pencil']:continue
 adopted.append(a)
 base=[F(x) for x in a['base']]+[F(1)]
 extra=[]
 for r,m in zip(range(3,9),a['m']):
  tr=-sum(c*r**i for (i,j),c in zip(mons,base) if j==3)
  extra.append(tr-sum(v*ss*(r-ss) for ss,v in enumerate(m)))
 assert all(v.denominator==1 for v in extra)
 extra=list(map(int,extra))
 if a['kind']=='plane':
  for k in [(1,0,0),(0,1,0)]:types.append(mk('P'+str(a['ids'][0])+'k'+str(k[0]),4,a['delta'],k,extra))
 else:
  i=a['ids'][0];k=(1,0,1) if i in [59,61,64] else (1,1,1)
  types.append(mk('B22_'+str(i),4,a['delta'],k,extra))
types += [mk('S3',4,[1,0,0,0,0,0],(1,1,0),[None,0,0,0,0,0]),
          mk('S4',4,[0,1,0,0,0,0],(1,1,0),[0,3,0,0,0,0]),
          mk('S5',4,[0,0,1,0,0,0],(0,1,0),[0,0,6,0,0,0]),
          mk('L',13,[1,0,0,0,0,0],(0,0,0),[None,0,0,0,0,0])]
# Ignoring unproved or impossible type cases only enlarges the relaxation.
@lru_cache(None)
def rest_counts(h,t,ug,ut,use_b28):
 best=0;winners=[]
 for b3 in range(min(t//3,h//4)+1):
  for dbl in range((t-3*b3)//2+1):
   b5=min(dbl,ug,ut);b67=min(dbl-b5,ut-b5);b8=dbl-b5-b67
   cost=4*b3+5*b5+6*b67+8*b8
   if cost>h:continue
   for c in range(min(t-3*b3-2*dbl,(h-cost)//16)+1):
    f=(h-cost-16*c)//25
    n=b3+dbl+c+f
    if n>best:best=n;winners=[]
    if n==best:winners.append((b3,b5,b67,b8,c,f))
 return best,winners

def trace(st,delta,kappa,extra,mode=1):
 if not mode:return True,[]
 pts=[];n=delta
 for i,r in enumerate(range(3,9)):
  residual=2*st['d'][i]+st['p'][i]-2*n[i]-kappa[i]
  assert residual>=0
  if residual//2 or extra[i] is None:continue
  v=st['v'][i]
  m=[max(x-v,0) for x in OFF[i]]
  if DIAG[i]:m.append((max(DIAG[i]-v,0)+1)//2+st['d'][i]-n[i])
  else:assert st['d'][i]==n[i]
  assert sum(m)==st['h']-n[i]
  tr=sum(x*s*(r-s) for s,x in enumerate(m))+extra[i]
  pts.append((r,tr))
 return trace_allowed(pts),pts

def run_state(st,use_b28=True,mode=1):
 caps=[2*d+p for d,p in zip(st['d'],st['p'])]
 active=[t for t in types if all(a<=b for a,b in zip(t['cost'],caps))]
 best=-1;records=[];leaves=0;reject=0
 def dfs(i,h,cap,n,delta,kappa,extra,selected):
  nonlocal best,records,leaves,reject
  if i==len(active):
   leaves+=1
   ok,pts=trace(st,delta,kappa,extra,mode)
   if not ok:reject+=1;return
   U=cap[0]+cap[1]+cap[4]
   a,rr=rest_counts(h,sum(c//2 for c in cap),U,sum(cap[:4]),use_b28)
   if a+n>best:best=a+n;records=[]
   if a+n==best:
    for r in rr:records.append(dict(special=selected,rest=r,fixed_rows=pts))
   return
  typ=active[i];hi=min([h//typ['e']]+[c//v for c,v in zip(cap,typ['cost']) if v])
  for k in range(hi+1):
   dd=[a+k*b for a,b in zip(delta,typ['delta'])]
   kk=[a+k*b for a,b in zip(kappa,typ['kappa'])]
   ee=[a if k==0 else None if a is None or b is None else a+k*b for a,b in zip(extra,typ['extra'])]
   dfs(i+1,h-k*typ['e'],[a-k*b for a,b in zip(cap,typ['cost'])],n+k,dd,kk,ee,selected+([(typ['name'],k)] if k else []))
 dfs(0,st['h'],caps,0,[0]*6,[0]*6,[0]*6,[])
 return dict(**st,maximum=best,records=records,leaves=leaves,trace_reject=reject)

def run(outdir):
 outdir=Path(outdir)
 # Independent explicit allocation check for the greedy low-double minimum.
 checked=0
 for dbl in range(9):
  for ug in range(17):
   for ut in range(17):
    a=min(dbl,ug,ut);b=min(dbl-a,ut-a)
    greedy=5*a+6*b+8*(dbl-a-b)
    direct=min(5*x+6*y+8*(dbl-x-y)
               for x in range(min(dbl,ug)+1)
               for y in range(dbl-x+1) if x+y<=ut)
    assert greedy==direct;checked+=1
 assert checked==2601
 states=all_states();out=[]
 for st in states:
  if st['E']:continue
  rec=run_state(st,use_b28=True,mode=1)
  if rec['maximum']!=10:rec.pop('records')
  out.append(rec)
 maximum=max(x['maximum'] for x in out)
 eq=[x for x in out if x['maximum']==10]
 assert maximum==10 and len(eq)==37 and min(x['h'] for x in eq)==127
 eq127=[x for x in eq if x['h']==127]
 assert len(eq127)==1 and eq127[0]['v']==[12,10,9,8,6,6]
 assert all(x['maximum']<=9 for x in out if x['h']<=126)
 old={tuple(map(int,line.split())) for line in (ROOT/'sources/old_trace_states.txt').read_text().splitlines()}
 prev={tuple(map(int,line.split())) for line in (ROOT/'sources/previous_trace0_states.txt').read_text().splitlines()}
 now={(x['h'],*x['v']) for x in eq}
 assert len(old)==71 and len(prev)==54 and len(old&prev)==49 and now<=old&prev
 result=dict(status='PASS_SAME_G_H127_37_STATES',vertical_states=2035,E0_states=1540,maximum=10,min_h_for_10=127,equality_states=37,old_trace_states=71,previous_trace0_states=54,intersection_before_new_geometry=49,all_states_below127_at_most9=True,extra_vertical_degree_at_equality_at_most=51,independent_double_cost_cells=checked,source_allocation_leaves=sum(x['leaves'] for x in out),trace_rejections=sum(x['trace_reject'] for x in out),types=types,canonical_equality_records=sum(len(x['records']) for x in eq),equality_state_list=[{k:x[k] for k in ('h','v','d','p','E')} for x in eq])
 (outdir/'ledger.json').write_text(json.dumps(result,indent=2)+'\n')
 (outdir/'state_bounds.json').write_text(json.dumps(out,indent=2)+'\n')
 (outdir/'all_vertical_states.json').write_text(json.dumps(states,indent=2)+'\n')
 print(result['status'],'maximum10, h>=127, 37states',flush=True)
 return result

if __name__=='__main__':run(sys.argv[1])
