"""All permitted exact q>=5, not merely removing the proxy q=4.
Degree bounds always come from the original649 seven-factor ledger.
Unclassified degrees/fees are retained. This is a necessary relaxation, not factors.
"""
from common import *
from enumerate_1964 import enumerate_types
import hashlib,collections,time
z=STATES[1964];C=z['C'];h=z['h'];cat={(a['q'],*a['fee']):a['mask'] for a in json.loads((ROOT/'sources/catalog104.json').read_text())};old=calc(C,RAW);ty=[];pre=[]
for c in itertools.product(*[range(0,b+1,2 if r%2 else 1) for r,b in zip(range(3,9),C)]):
 f=[e for e,*v in RAW if all(a<=b for a,b in zip(v,c))]
 if not f:continue
 lo=max(5,min(f));u=h-int(old[7][tuple(b-a for a,b in zip(c,C))])
 for q in range(lo,u+1):
  if (q,*c) in cat and cat[q,*c]==0:continue
  ty.append((q,*c))
ty.sort();t=time.monotonic();rows,m=enumerate_types(ty,C,h)
stem=ROOT/'certificates/exact_nonquartic_1964';stem.with_suffix('.types.tsv').write_text(''.join(' '.join(map(str,t))+'\n' for t in ty));blob=''.join(' '.join(map(str,a))+'\n' for a,_,_ in rows);stem.with_suffix('.multisets.tsv').write_text(blob)
support=collections.Counter(t for a,d,B in rows for t in set(ty[i] for i in a));rec={'state':1964,'h':h,'C':C,'actual_degree_restriction':'q>=5 for each of 8 factors; all exact degrees and fees in oldM7 upper bound','license_mask':0,'type_count':len(ty),'multisets':len(rows),'min_degree':m,'degree_counts':dict(sorted(collections.Counter(d for a,d,B in rows).items())),'saturated':sum(not any(B) for a,d,B in rows),'common_types':[t for t,n in support.items() if n==len(rows)],'support':[{'row':t,'multiset_count':n} for t,n in sorted(support.items())],'multiset_sha256':hashlib.sha256(blob.encode()).hexdigest(),'not_actual_factorization':True}
stem.with_suffix('.json').write_text(json.dumps(rec,indent=2)+'\n');print(json.dumps({k:v for k,v in rec.items() if k!='support'},indent=2));print('secs',time.monotonic()-t)
# Raw true preimages of the common 11-cost type; no new license used.
proxy=(11,0,0,0,0,2,2);out=low(C,h,RAW,proxy,h)
(ROOT/'certificates/COMMON11_RAW_PREIMAGES.tsv').write_text(''.join(' '.join(map(str,a))+'\n' for a in out))
summary={'proxy':proxy,'old_M7_only':True,'preimage_count':len(out),'fee_count':len(set(a[1:7] for a in out)),'q_min':min(a[0] for a in out),'q_max':max(a[0] for a in out),'fee_growth_occurs_in_raw_bound':any(a[1:7]!=proxy[1:] for a in out),'histogram':[{'fee':c,'degrees':[a[0] for a in out if a[1:7]==c]} for c in sorted(set(a[1:7] for a in out))]}
(ROOT/'certificates/COMMON11_RAW_PREIMAGES.json').write_text(json.dumps(summary,indent=2)+'\n');print(json.dumps(summary,indent=2))
