"""Exact sorted multiset enumeration; counterfactual mode is labelled, not authorized."""
from common import *
import collections,time,hashlib

def enumerate_types(ty,C,h):
 n=len(ty);sh=tuple(c+1 for c in C);suf=np.full((n+1,9,*sh),10000,dtype=np.int32);suf[:,0]=0
 for i in range(n-1,-1,-1):
  e,*c=ty[i];dst=tuple(slice(a,None) for a in c);src=tuple(slice(0,b-a) for a,b in zip(c,sh))
  for k in range(1,9):
   suf[i,k]=suf[i+1,k];suf[i,k][dst]=np.minimum(suf[i,k][dst],e+suf[i,k-1][src])
 out=[]
 def dfs(i,k,B,budget,path):
  if k==0:out.append((path,h-budget,B));return
  for j in range(i,n):
   e,*c=ty[j]
   if e>budget:break
   if any(a>b for a,b in zip(c,B)):continue
   rem=tuple(b-a for a,b in zip(c,B))
   if int(suf[j,k-1][rem])+e>budget:continue
   dfs(j,k-1,rem,budget-e,path+(j,))
 dfs(0,8,C,h,());return out,int(suf[0,8][C])

if __name__=='__main__':
 C=STATES[1964]['C'];h=143;recs=[]
 for mode in ['actual','nonquartic','S5_hypothetical']:
  lic=int(mode=='S5_hypothetical');ty=sorted(tuple(x) for x in json.loads((ROOT/f'work/types_1964_m{lic}.json').read_text()) if mode!='nonquartic' or x[0]!=4)
  start=time.monotonic();rows,m=enumerate_types(ty,C,h);stem=ROOT/f'certificates/{mode}_1964';stem.with_suffix('.types.tsv').write_text(''.join(' '.join(map(str,t))+'\n' for t in ty));blob=''.join(' '.join(map(str,a))+'\n' for a,_,_ in rows);stem.with_suffix('.multisets.tsv').write_text(blob)
  quartic_support=collections.Counter(ty[i] for path,d,B in rows for i in set(path) if ty[i][0]==4)
  r={'mode':mode,'state':1964,'h':h,'C':C,'license_mask':lic,'hypothetical':bool(lic),'nonquartic_filter_diagnostic_only':mode=='nonquartic','type_count':len(ty),'min_degree':m,'multisets':len(rows),'degree_counts':dict(sorted(collections.Counter(d for a,d,B in rows).items())),'capacity_saturated':sum(not any(B) for a,d,B in rows),'quartic_type_support':[{'type':t,'count':ct} for t,ct in sorted(quartic_support.items())],'multiset_sha256':hashlib.sha256(blob.encode()).hexdigest()}
  stem.with_suffix('.json').write_text(json.dumps(r,indent=2)+'\n');recs.append(r);print(json.dumps(r), 'sec',time.monotonic()-start,flush=True)
 (ROOT/'certificates/ENUMERATION_SUMMARY.json').write_text(json.dumps(recs,indent=2)+'\n')
