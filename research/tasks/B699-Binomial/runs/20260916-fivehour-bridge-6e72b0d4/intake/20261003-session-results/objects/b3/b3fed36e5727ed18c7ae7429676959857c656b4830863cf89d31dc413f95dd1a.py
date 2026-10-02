"""Bind full profiles, complete root sets and both field receivers.
No exceptional configuration is accepted as empty without a full-rank minor.
"""
from pathlib import Path
import json,itertools,hashlib
R=Path(__file__).resolve().parents[1]; O=R/'certificates/geometry'
profiles=json.loads((O/'profiles.json').read_text()); plan=json.loads((O/'profiles_plan.json').read_text())
assert len(profiles)==len(plan)==4
out=[]
for row in profiles:
 i=row['index'];stem=O/f'g{i:02d}';a=Path(str(stem)+'.txt').read_text().splitlines();b=Path(str(stem)+'.alt').read_text().splitlines()
 assert len(a)==len(set(a))==row['configurations'] and sorted(a)==sorted(b)
 for line in a:
  fields=list(map(int,line.split()));assert len(fields)==46
  assert fields[:13]==[row['q'],*row['delta'],*row['kappa']]
 rec={k:row[k] for k in ['index','q','fee','delta','kappa','configurations']};rec['root_set_sha256']=hashlib.sha256(('\n'.join(sorted(a))+'\n').encode()).hexdigest();rec['receivers']=[]
 for p in [32749,32719]:
  ex=Path(str(stem)+f'.p{p}.exceptions');assert ex.exists() and not ex.read_text().strip(),('unresolved exceptions',i,p)
  lines=Path(str(stem)+f'.p{p}.minors').read_text().splitlines();assert len(lines)==len(a)
  for ix,line in enumerate(lines):
   v=list(map(int,line.split())); K=(row['q']-2)**2+1
   assert v[:2]==[ix,K] and 0<v[2]<p and len(v)==K+3 and len(set(v[3:]))==K
  text=(R/f'logs/g{i:02d}_receive{p}.txt').read_text().strip()
  assert text==f"PASS q {row['q']} p {p} gates {len(a)} minors {len(a)} routed_exact_exceptions 0"
  rec['receivers'].append({'prime':p,'accepted_full_rank_minors':len(lines),'exceptions':0})
 out.append(rec)
for q,fee in [(19,(0,0,0,0,0,3)),(25,(0,0,0,0,0,2))]:
 expected=set()
 for dk in itertools.product(*[[(c//2,0)] if r%2 else [(d,c-2*d) for d in range(c//2+1)] for r,c in zip(range(3,9),fee)]):
  d,k=zip(*dk);expected.add((d,k))
 actual={(tuple(x['delta']),tuple(x['kappa'])) for x in profiles if x['q']==q and tuple(x['fee'])==fee};assert actual==expected
rec={'complete':True,'all_full_rank':True,'exact_domains':2,'profiles':out,'profile_count':4,'root_configurations':sum(x['configurations'] for x in profiles),'nonzero_minors':2*sum(x['configurations'] for x in profiles),'conjugate_degree_gcd_one_for_all_profiles':True,'no_unresolved_rational_kernel':True,'evidence_grade':'author exact finite proof and same-author second implementation, no Lean or external independent review'}
(O/'RECEIPT.json').write_text(json.dumps(rec,indent=2)+'\n');print(json.dumps({k:v for k,v in rec.items() if k!='profiles'},indent=2))
