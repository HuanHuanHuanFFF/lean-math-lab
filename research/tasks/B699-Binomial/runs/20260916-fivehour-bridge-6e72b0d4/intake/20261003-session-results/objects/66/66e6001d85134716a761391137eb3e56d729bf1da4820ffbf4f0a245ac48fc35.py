"""Complete actual-q expansion, original two-type failure, and valid repaired cover.
No state-family licences used. Scope is exactly states1972/1974/1975.
"""
from common import *
from enumerate_types import enumerate_types
import collections,subprocess,hashlib
O=ROOT/'certificates';plans=[(1972,'106'),(1972,'108_AB'),(1972,'109_ABC'),(1972,'111'),(1975,'106'),(1975,'108_CD'),(1975,'111'),(1974,'111'),(1974,'112'),(1972,'112'),(1975,'112')];reports=[]
for idx,name in plans:
 z=STATES[idx];C=z['C'];h=z['h'];old=calc(C,RAW);cat={(a['q'],*a['fee']):a['mask'] for a in json.loads((O/f'ledger/catalog{name}.json').read_text())};ty=[]
 for c in itertools.product(*[range(0,b+1,2 if r%2 else 1) for r,b in zip(range(3,9),C)]):
  fs=[e for e,*v in RAW if all(a<=b for a,b in zip(v,c))]
  if not fs:continue
  up=h-int(old[7][tuple(b-a for a,b in zip(c,C))])
  for q in range(min(fs),up+1):
   if (q,*c) in cat and cat[q,*c]==0:continue
   ty.append((q,*c))
 ty.sort();rows,lower=enumerate_types(ty,C,h);stem=O/f'exact_s{idx}_{name}'
 stem.with_suffix('.types.tsv').write_text(''.join(' '.join(map(str,t))+'\n' for t in ty));blob=''.join(' '.join(map(str,a))+'\n' for a,d,B in rows);stem.with_suffix('.multisets.tsv').write_text(blob)
 targets=[(5,0,1,0,0,0,4),(14,0,0,0,0,0,4)] if idx==1972 else ([(12,0,0,0,0,2,2)] if idx==1974 else [(11,0,0,0,0,4,0),(18,0,0,0,0,2,1)])
 uncovered=[[ty[i] for i in a] for a,d,B in rows if not any(t in [ty[i] for i in a] for t in targets)]
 r={'state':idx,'h':h,'C':C,'catalogue':name,'license_mask':0,'all_actual_degrees_enumerated':True,'old_M7_only_upper_bound':True,'type_count':len(ty),'multisets':len(rows),'minimum_degree_lower_bound':lower,'degree_counts':dict(sorted(collections.Counter(d for a,d,B in rows).items())),'capacity_saturated':sum(not any(B) for a,d,B in rows),'original_two_exact_targets':targets,'two_target_support_counts':[sum(t in [ty[i] for i in a] for a,d,B in rows) for t in targets],'uncovered_count':len(uncovered),'uncovered_complete_weak_multisets':uncovered,'weak_not_actual_factors':True,'multisets_sha256':hashlib.sha256(blob.encode()).hexdigest()}
 stem.with_suffix('.json').write_text(json.dumps(r,indent=2)+'\n');reports.append(r)
 rr=subprocess.run([str(ROOT/'work/enumeration_receiver'),str(ROOT/'sources/global649.txt'),str(O/f'ledger/catalog{name}.tsv'),'4','0',str(stem)+'.types.tsv',str(stem)+'.multisets.tsv',str(stem)+'.receipt.json',str(idx)],capture_output=True,text=True,check=True);print(rr.stdout.strip(),flush=True);(ROOT/f'logs/exact_s{idx}_{name}.receive.log').write_text(rr.stdout+rr.stderr)
expect={(1972,'106'):(132,99,144),(1972,'108_AB'):(130,1,145),(1972,'109_ABC'):(129,0,146),(1972,'111'):(129,0,146),(1975,'106'):(32,129,144),(1975,'108_CD'):(30,0,147),(1975,'111'):(29,0,147)}
for a in reports:
 if (a['state'],a['catalogue']) in expect:assert (a['type_count'],a['multisets'],a['minimum_degree_lower_bound'])==expect[a['state'],a['catalogue']]
(O/'EXACT_CASES_SUMMARY.json').write_text(json.dumps(reports,indent=2)+'\n')
prreports=[]
for idx,tag,proxy in [(1972,'A',(5,0,1,0,0,0,4)),(1972,'B',(14,0,0,0,0,0,4)),(1975,'C',(11,0,0,0,0,4,0)),(1975,'D',(18,0,0,0,0,2,1)),(1974,'E',(12,0,0,0,0,2,2))]:
 z=STATES[idx];pr=low(z['C'],z['h'],RAW,proxy,z['h']);stem=O/f'preimages{idx}_{tag}';stem.with_suffix('.tsv').write_text(''.join(' '.join(map(str,a))+'\n' for a in pr))
 r={'state':idx,'h':z['h'],'C':z['C'],'proxy':proxy,'old_M7_only_upper_bound':True,'preimage_count':len(pr),'preimages':pr,'histogram':[{'fee':c,'q':[a[0] for a in pr if a[1:7]==c]} for c in sorted(set(a[1:7] for a in pr))],'fee_growth_occurs':any(a[1:7]!=proxy[1:] for a in pr)}
 stem.with_suffix('.json').write_text(json.dumps(r,indent=2)+'\n')
 rr=subprocess.run([str(ROOT/'work/preimage_receiver'),str(ROOT/'sources/global649.txt'),str(stem)+'.tsv',str(idx),tag],capture_output=True,text=True,check=True);stem.with_suffix('.receipt.json').write_text(rr.stdout);r['receiver']=json.loads(rr.stdout);prreports.append(r);print(rr.stdout.strip(),flush=True)
(O/'PREIMAGE_SUMMARY.json').write_text(json.dumps(prreports,indent=2)+'\n')
