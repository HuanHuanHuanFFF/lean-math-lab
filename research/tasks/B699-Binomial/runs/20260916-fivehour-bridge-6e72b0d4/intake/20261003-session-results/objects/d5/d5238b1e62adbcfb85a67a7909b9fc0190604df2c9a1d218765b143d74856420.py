"""Complete sorted multisets of 8 safe real-fee types, without a quartic.
This diagnostic does not license removing quartics. No dominated type is dropped.
"""
from common import *
import time,collections,hashlib
start=time.monotonic();z=STATES[1964];C=z['C'];h=z['h']
ty=sorted(tuple(x) for x in json.loads((ROOT/'work/types_1964_m0.json').read_text()) if x[0]!=4)
shape=tuple(c+1 for c in C);n=len(ty);suf=np.full((n+1,9,*shape),10000,dtype=np.int32);suf[:,0]=0
for i in range(n-1,-1,-1):
 e,*c=ty[i];dst=tuple(slice(a,None) for a in c);src=tuple(slice(0,b-a) for a,b in zip(c,shape))
 for k in range(1,9):
  suf[i,k]=suf[i+1,k]
  suf[i,k][dst]=np.minimum(suf[i,k][dst],e+suf[i,k-1][src])
assert int(suf[0,8][C])==143
out=[]
def dfs(i,k,B,budget,path):
 if k==0:
  out.append({'rows':list(path),'degree':h-budget,'unused_capacity':B});return
 for j in range(i,n):
  e,*c=ty[j]
  if e>budget:break
  if any(a>b for a,b in zip(c,B)):continue
  rem=tuple(b-a for a,b in zip(c,B))
  if int(suf[j,k-1][rem])+e>budget:continue
  dfs(j,k-1,rem,budget-e,path+(ty[j],))
dfs(0,8,C,h,())
counts=collections.Counter(t for a in out for t in set(a['rows']))
common=sorted(t for t,v in counts.items() if v==len(out))
record={'state':1964,'h':h,'capacity':C,'quartics_removed_is_diagnostic_only':True,'type_count':len(ty),'all_multiset_count':len(out),'degree_counts':dict(collections.Counter(a['degree'] for a in out)),'saturated_count':sum(not any(a['unused_capacity']) for a in out),'common_types':common,'type_coverage':[{'type':t,'count':c} for t,c in sorted(counts.items(),key=lambda x:(-x[1],x[0]))],'multisets':out}
(ROOT/'certificates/NONQUARTIC_1964.json').write_text(json.dumps(record,indent=2)+'\n')
(ROOT/'certificates/nonquartic_types.tsv').write_text(''.join(' '.join(map(str,t))+'\n' for t in ty))
(ROOT/'certificates/nonquartic_multisets.tsv').write_text(''.join(' '.join(map(str,[ty.index(t) for t in a['rows']]))+'\n' for a in out))
print(json.dumps({k:v for k,v in record.items() if k not in ['multisets','type_coverage']},indent=2));print('TOP',record['type_coverage'][:20]);print('elapsed',time.monotonic()-start)
