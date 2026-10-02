"""Full actual-q expansion, retaining all unknowns. 2000 masks are ONLY hypothetical.
No state2000 family licence is generated or used by build_ledger.py.
"""
from common import *
from enumerate_types import enumerate_types
import subprocess,collections,hashlib
O=ROOT/'certificates/residual';O.mkdir(exist_ok=True);cm={(a['q'],*a['fee']):a['mask'] for a in json.loads((ROOT/'sources/catalog112.json').read_text())}
reports=[]
for idx,mask in [(2000,1),(2000,31),(2029,1)]:
 if idx==2029:
  lic=json.loads((ROOT/'certificates/kernels/LICENCE_2029_S5.json').read_text());assert lic['state']==idx and lic['full_bounded_kernel_zero']
 z=STATES[idx];C=z['C'];h=z['h'];old=calc(C,RAW);ty=[]
 for c in itertools.product(*[range(0,b+1,2 if r%2 else 1) for r,b in zip(range(3,9),C)]):
  base=[e for e,*cc in RAW if all(a<=b for a,b in zip(cc,c))]
  if not base:continue
  up=h-int(old[7][tuple(b-a for a,b in zip(c,C))])
  for q in range(min(base),up+1):
   m=cm.get((q,*c))
   if m is None or m&~mask:ty.append((q,*c))
 ty.sort();rows,lower=enumerate_types(ty,C,h);pre=O/f's{idx}_mask{mask}';blob=''.join(' '.join(map(str,a))+'\n' for a,d,B in rows)
 pre.with_suffix('.types.tsv').write_text(''.join(' '.join(map(str,a))+'\n' for a in ty));pre.with_suffix('.multisets.tsv').write_text(blob)
 used=set(i for a,d,B in rows for i in a);support={i:sum(i in a for a,d,B in rows) for i in used};common=[ty[i] for i in used if support[i]==len(rows)] if rows else []
 rec={'state':idx,'mask':mask,'hypothetical_only':idx==2000,'actual_licence_for_2000':False,'h':h,'C':C,'type_count':len(ty),'complete_multisets':len(rows),'M8':lower,'degree_histogram':dict(collections.Counter(d for a,d,B in rows)),'fee_saturated':sum(not any(B) for a,d,B in rows),'common_exact_types':common,'used_type_support':[{'type':ty[i],'multisets':support[i]} for i in sorted(used)],'weak_multisets_complete':[[ty[i] for i in a] for a,d,B in rows], 'not_actual_factors_or_NC_points':True,'all_actual_degrees_expanded':True,'old_M7_only':True,'multisets_sha256':hashlib.sha256(blob.encode()).hexdigest()}
 pre.with_suffix('.json').write_text(json.dumps(rec,indent=2)+'\n')
 rr=subprocess.run([str(ROOT/'work/enumeration_receiver'),str(ROOT/'sources/global649.txt'),str(ROOT/'sources/catalog112.tsv'),'4',str(mask),str(pre)+'.types.tsv',str(pre)+'.multisets.tsv',str(pre)+'.receipt.json',str(idx)],capture_output=True,text=True,check=True)
 print(rr.stdout.strip(),flush=True);reports.append({k:v for k,v in rec.items() if k not in ['weak_multisets_complete','used_type_support']})
(O/'SUMMARY.json').write_text(json.dumps(reports,indent=2)+'\n')
