"""Next-frontier diagnostics only. No new geometric domain or state licence."""
from common import *
from enumerate_1964 import enumerate_types
import collections
out=[]
for idx in [1972,1974,1975]:
 z=STATES[idx];cert=json.loads((ROOT/f'certificates/ledger/s{idx}/certificate.json').read_text());ty=sorted(tuple(x) for x in cert['types']);rows,lower=enumerate_types(ty,z['C'],z['h']);cover={}
 for j,(a,d,B) in enumerate(rows):
  for t in set(ty[i] for i in a):cover[t]=cover.get(t,0)|(1<<j)
 target=(1<<len(rows))-1;hit=None
 for size in range(1,4):
  candidates=[]
  for xs in itertools.combinations(sorted(cover),size):
   m=0
   for t in xs:m|=cover[t]
   if m==target:candidates.append(xs)
  if candidates:
   hit=min(candidates,key=lambda xs:(sum(t[0] for t in xs),xs));break
 stem=ROOT/f'certificates/NEXT_s{idx}';stem.with_suffix('.types.tsv').write_text(''.join(' '.join(map(str,t))+'\n' for t in ty));stem.with_suffix('.multisets.tsv').write_text(''.join(' '.join(map(str,a))+'\n' for a,d,B in rows))
 r={'state':idx,'h':z['h'],'v':z['v'],'C':z['C'],'license_mask':0,'mode':'catalogue106 minimal-degree real-fee envelope, NOT a full exact-degree expansion','M8':lower,'weak_multisets':len(rows),'degree_counts':dict(sorted(collections.Counter(d for a,d,B in rows).items())),'capacity_saturated':sum(not any(B) for a,d,B in rows),'minimum_row_cover_up_to_three':hit,'cover_cardinality':len(hit) if hit else None,'common_single_types':[t for t,m in cover.items() if m==target],'counterfactual_only_no_elimination_licence':True,'first_weak_multiset':[ty[i] for i in rows[0][0]]}
 out.append(r);print(json.dumps(r),flush=True)
(ROOT/'certificates/NEXT_FRONTIER.json').write_text(json.dumps(out,indent=2)+'\n')
