import sys,json,itertools,time
from pathlib import Path
from functools import lru_cache
sys.path.insert(0,'/mnt/data/prior_h127/B699-ProA-TRACE-B28-20260921/code')
import ledger as old
ROOT=Path('/mnt/data/B699-ProA-KAPPA0-20260921')
def comps(n,k):
 if k==1:yield (n,);return
 for i in range(n+1):
  for tail in comps(n-i,k-1):yield (i,)+tail
FREE_Q=int(sys.argv[1]) if len(sys.argv)>1 else 25
items=[]
def add(name,e,d,k=(0,0,0)):
 kap=(0,k[0],0,k[1],0,k[2]);cost=tuple(2*a+b for a,b in zip(d,kap));items.append((e,cost,name,d,kap))
for d in comps(4,6):add('B4plus',4,d)
for d in comps(3,6):
 if sum(d[:4]):add('B3low',4,d)
 else:
  for a in range(3):add('B3lowK',4,d,tuple(int(a==i) for i in range(3)))
 add('B3high',6,d)
for d in comps(2,6):
 for k4,k6 in itertools.product(range(2),repeat=2):
  if d[0]+d[1]+d[4]+k4>=1 and sum(d[:4])+k4+k6>=1:add('B5',5,d,(k4,k6,0))
  if sum(d[:4])+k4+k6>=1:add('B67',6,d,(k4,k6,0))
 add('B8',8,d)
for r in range(6):
 d=tuple(int(r==i) for i in range(6))
 if r<3:add('Cearly',16,d)
 else:
  for a in range(3):add('ClateK',16,d,tuple(int(a==i) for i in range(3)))
for r in range(6):add('Fnear',25,tuple(int(r==i) for i in range(6)))
for a in range(3):add('FsatK',25,(0,)*6,tuple(int(a==i) for i in range(3)))
add('Fbig',FREE_Q+1,(0,)*6)
# Pareto remove dominated safe surrogates.
items=sorted(set(items))
keep=[]
for a in items:
 if any(b[0]<=a[0] and all(x<=y for x,y in zip(b[1],a[1])) for b in keep):continue
 keep.append(a)
items=keep
@lru_cache(None)
def least(n,cap):
 if n==0:return 0
 best=(FREE_Q+1)*n
 for e,cost,*_ in items:
  if e+4*(n-1)>=best:continue
  if all(x<=y for x,y in zip(cost,cap)):
   val=e+least(n-1,tuple(y-x for x,y in zip(cost,cap)))
   best=min(best,val)
 return best

def witness(n,cap):
 if not n:return []
 best=least(n,cap)
 for e,cost,name,d,k in items:
  if all(x<=y for x,y in zip(cost,cap)):
   c=tuple(y-x for x,y in zip(cost,cap))
   if e+least(n-1,c)==best:return [dict(name=name,e=e,delta=d,kappa=k)]+witness(n-1,c)
 raise Exception('witness')

def stcheck(st):
 caps=tuple(2*d+p for d,p in zip(st['d'],st['p']));active=[t for t in old.types if all(a<=b for a,b in zip(t['cost'],caps))];leaves=0;out=[]
 def dfs(i,h,cap,n,delta,kappa,extra,selected):
  nonlocal leaves
  if n>10:return
  if i==len(active):
   ok,pts=old.trace(st,delta,kappa,extra,1)
   if not ok:return
   t=sum(c//2 for c in cap);a,rr=old.rest_counts(h,t,cap[0]+cap[1]+cap[4],sum(cap[:4]),True)
   if n+a<10:return
   leaves+=1;needed=least(10-n,cap)
   if needed<=h:out.append(dict(special=selected,needed_X=needed,available_X=h,residual=witness(10-n,cap),cap=cap,pts=pts))
   return
  typ=active[i];hi=min([h//typ['e'],10-n]+[c//v for c,v in zip(cap,typ['cost']) if v])
  for k in range(hi+1):
   dd=[a+k*b for a,b in zip(delta,typ['delta'])];kk=[a+k*b for a,b in zip(kappa,typ['kappa'])]
   ee=[a if k==0 else None if a is None or b is None else a+k*b for a,b in zip(extra,typ['extra'])]
   dfs(i+1,h-k*typ['e'],tuple(a-k*b for a,b in zip(cap,typ['cost'])),n+k,dd,kk,ee,selected+([(typ['name'],k)] if k else []))
 dfs(0,st['h'],caps,0,[0]*6,[0]*6,[0]*6,[])
 return dict(**st,leaves=leaves,winners=out)

def main():
 states=json.load(open('/mnt/data/prior_h127/B699-ProA-TRACE-B28-20260921/verification/author/ledger.json'))['equality_state_list']
 out=[];start=time.time()
 for st in states:
  rec=stcheck(st);out.append(rec);print('STATE',st['h'],st['v'],'LEAVES',rec['leaves'],'SURVIVE',len(rec['winners']),'CACHE',least.cache_info(),'secs',time.time()-start,flush=True)
 result=dict(conditional_gate='near16..24 late deficit all kappa0 excluded',states=out,items=items,survivors=sum(bool(x['winners']) for x in out))
 (ROOT/f'discovery/ledger_sat{FREE_Q}_probe.json').write_text(json.dumps(result,indent=2));print('SUMMARY',result['survivors'],flush=True)
if __name__=='__main__':main()
