"""Exploratory same-G ledger with exact B22 types, recovered TRACE, restricted B28 gate."""
import json,sys,itertools
from pathlib import Path
from fractions import Fraction as F
from functools import lru_cache
ROOT=Path(__file__).resolve().parents[1]
OLD=Path('/mnt/data/prev_b22/B699-ProA-B22-H117-20260921')
sys.path.insert(0,str(OLD/'code'))
from ledger import all_states,OFF,DIAG,zero_slack_trace
source=json.load(open(OLD/'certificates/b22_spaces.json'));mons=source['monomials']
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
def rest_counts(h,t,u,use_b28):
 best=0;winners=[]
 for b3 in range(min(t//3,h//4)+1):
  for b5 in range(min((t-3*b3)//2,(h-4*b3)//5,u if use_b28 else 100)+1):
   for b6 in range(min((t-3*b3-2*b5)//2,(h-4*b3-5*b5)//6)+1):
    for c in range(min(t-3*b3-2*(b5+b6),(h-4*b3-5*b5-6*b6)//16)+1):
     f=(h-4*b3-5*b5-6*b6-16*c)//25
     nn=b3+b5+b6+c+f
     if nn>best:best=nn;winners=[]
     if nn==best:winners.append((b3,b5,b6,c,f))
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
 if len(pts)<4:return True,pts
 for r,y in pts[3:]:
  total=F(0)
  for a,b in pts[:3]:
   value=F(b)
   for c,d in pts[:3]:
    if c!=a:value*=F(r-c,a-c)
   total+=value
  if total!=y:return False,pts
 return True,pts

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
   a,rr=rest_counts(h,sum(c//2 for c in cap),U,use_b28)
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

if __name__=='__main__':
 prev=json.load(open(OLD/'verification/author/ledger.json'))
 states=[r for r in prev['maximum_records'] if r['trace0']]
 states=[{k:r[k] for k in ('h','v','d','p','E')} for r in states]
 mode=int(sys.argv[1]) if len(sys.argv)>1 else 1
 out=[]
 for st in states:
  r=run_state(st,use_b28=(mode>=1),mode=(mode>=0));out.append(r)
  print('h',st['h'],st['v'],'max',r['maximum'],'leaves',r['leaves'],'records',len(r['records']),'trace_reject',r['trace_reject'],flush=True)
 (ROOT/'discovery'/('joint_ledger_'+str(mode)+'.json')).write_text(json.dumps(dict(types=types,results=out),indent=2)+'\n')
 print('max',max(r['maximum'] for r in out),'states',sum(r['maximum']==10 for r in out),'min_h',min(r['h'] for r in out if r['maximum']==10))
 (ROOT/'sources/b22_adopted_families.json').write_text(json.dumps(dict(monomials=mons,families=adopted),indent=2)+'\n')
