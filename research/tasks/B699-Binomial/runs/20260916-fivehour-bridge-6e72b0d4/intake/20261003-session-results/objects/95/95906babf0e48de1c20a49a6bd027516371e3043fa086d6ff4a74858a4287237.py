"""Every actual q and real fee allowed by raw649 M7; no proxy-floor shortcut.
Only 1964 has the current round's S5 permission. 1977 has no new family permission.
The first case is the genuinely nonquartic q>=5 relaxation without any licence.
"""
from common import *
from enumerate_1964 import enumerate_types
import hashlib,collections,subprocess
out=[];plans=[(1964,'nonquartic104',104,5,0),(1964,'S5_104',104,4,1),(1964,'minimal105',105,4,1),(1964,'final106',106,4,1),(1977,'before105',105,4,0),(1977,'final106',106,4,0)]
cat104=json.loads((ROOT/'sources/catalog104.json').read_text());(ROOT/'certificates/catalog104_receiver.tsv').write_text(''.join(' '.join(map(str,[a['q'],*a['fee'],a['mask']]))+'\n' for a in cat104))
for idx,name,cn,minq,license in plans:
 z=STATES[idx];C=z['C'];h=z['h'];old=calc(C,RAW)
 cp=ROOT/('sources/catalog104.json' if cn==104 else f'certificates/ledger/catalog{cn}.json');ctsv=ROOT/('certificates/catalog104_receiver.tsv' if cn==104 else f'certificates/ledger/catalog{cn}.tsv');cat={(a['q'],*a['fee']):a['mask'] for a in json.loads(cp.read_text())};types=[]
 for c in itertools.product(*[range(0,b+1,2 if r%2 else 1) for r,b in zip(range(3,9),C)]):
  f=[e for e,*v in RAW if all(a<=b for a,b in zip(v,c))]
  if not f:continue
  lo=max(minq,min(f));u=h-int(old[7][tuple(b-a for a,b in zip(c,C))])
  for q in range(lo,u+1):
   if (q,*c) in cat and not cat[q,*c]&~license:continue
   types.append((q,*c))
 types.sort();rows,lower=enumerate_types(types,C,h);stem=ROOT/f'certificates/exact_s{idx}_{name}';blob=''.join(' '.join(map(str,a))+'\n' for a,d,B in rows)
 stem.with_suffix('.types.tsv').write_text(''.join(' '.join(map(str,t))+'\n' for t in types));stem.with_suffix('.multisets.tsv').write_text(blob)
 support=collections.Counter(t for a,d,B in rows for t in set(types[i] for i in a));common=sorted(t for t,n in support.items() if n==len(rows)) if rows else []
 r={'case':name,'state':idx,'h':h,'C':C,'catalogue':cn,'min_actual_q':minq,'license_mask':license,'raw649_M7_only_upper_bound':True,'all_actual_degrees_enumerated':True,'type_count':len(types),'multisets':len(rows),'min_degree_lower_bound':lower,'degree_counts':dict(sorted(collections.Counter(d for a,d,B in rows).items())),'saturated':sum(not any(B) for a,d,B in rows),'common_exact_types':common,'weak_not_actual_factors':True,'multiset_sha256':hashlib.sha256(blob.encode()).hexdigest()}
 if rows:r['exact_multisets']=[[types[i] for i in a] for a,d,B in rows]
 stem.with_suffix('.json').write_text(json.dumps(r,indent=2)+'\n');out.append(r)
 cmd=[str(ROOT/'work/enumeration_receiver'),str(ROOT/'sources/global649.txt'),str(ctsv),str(minq),str(license),str(stem)+'.types.tsv',str(stem)+'.multisets.tsv',str(stem)+'.receipt.json',str(idx)]
 rr=subprocess.run(cmd,capture_output=True,text=True,check=True);print(rr.stdout.strip(),flush=True);(ROOT/f'logs/exact_s{idx}_{name}.receive.log').write_text(rr.stdout+rr.stderr)
(ROOT/'certificates/EXACT_CASES_SUMMARY.json').write_text(json.dumps(out,indent=2)+'\n')
for idx,proxy in [(1964,(11,0,0,0,0,2,2)),(1977,(18,0,0,0,1,0,2))]:
 z=STATES[idx];pr=low(z['C'],z['h'],RAW,proxy,z['h']);stem=ROOT/f'certificates/raw_s{idx}'
 stem.with_suffix('.tsv').write_text(''.join(' '.join(map(str,a))+'\n' for a in pr))
 report={'state':idx,'proxy':proxy,'old_M7_only':True,'preimage_count':len(pr),'fee_count':len(set(a[1:7] for a in pr)),'q_min':min(a[0] for a in pr),'q_max':max(a[0] for a in pr),'fee_growth_occurs_in_raw_bound':any(a[1:7]!=proxy[1:] for a in pr),'histogram':[{'fee':c,'degrees':[a[0] for a in pr if a[1:7]==c]} for c in sorted(set(a[1:7] for a in pr))]}
 stem.with_suffix('.json').write_text(json.dumps(report,indent=2)+'\n')
 rr=subprocess.run([str(ROOT/'work/preimage_receiver'),str(ROOT/'sources/global649.txt'),str(stem)+'.tsv',str(idx)],capture_output=True,text=True,check=True);stem.with_suffix('.receipt.json').write_text(rr.stdout);print(rr.stdout.strip(),flush=True)
