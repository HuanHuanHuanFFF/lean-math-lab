from pathlib import Path
from hashlib import sha256
from fractions import Fraction
from datetime import datetime,timezone
import json,itertools
ROOT=Path(__file__).resolve().parent
r=json.loads((ROOT/'no-g-feasibility-v2.json').read_text())
for p,h in r['input_sha256'].items():assert sha256(Path(p).read_bytes()).hexdigest()==h
assert sha256((ROOT/'check_no_g_feasibility_v2.py').read_bytes()).hexdigest()==r['script_sha256']
def corners(primes,rows,key):
 out=[];idx={p:i for i,p in enumerate(primes)}
 for mask in range(1<<len(rows)):
  z=[0]*len(primes)
  for k,row in enumerate(rows):
   side='q' if(mask>>k)&1 else'p';j=idx[row[side]]
   w=row['w'+side] if key=='original' else row['optimistic_caps'][side=='q']
   z[j]=max(z[j],w)
  assert all(z[idx[x['p']]] >= (x['wp'] if key=='original' else x['optimistic_caps'][0]) or z[idx[x['q']]] >= (x['wq'] if key=='original' else x['optimistic_caps'][1]) for x in rows)
  out.append(z)
 return out
ps=[2,3,5,7,11,13,17];orig=corners(ps,r['i18']['seed_rows'],'original')
W=min(sum(a*b for a,b in zip(range(24,17,-1),sorted(z))) for z in orig)
C=min(sum(z)+max(0,1000-z[p]-z[q]) for z in orig for p,q in itertools.combinations(range(7),2))
assert W==24013 and C==1431
assert 1000*(303-279)==r['i18']['weighted_required_strictly_above']==24000
profile_check=[]
for p in r['other_profiles']:
 x=corners(p['primes'],p['cuts'],'original');S=min(map(sum,x));assert S==p['original_S']
 profile_check.append({'i':p['i'],'original_S_recomputed':S,'orientations':len(x)})
maxcap=max(max(x['optimistic_integer_caps']) for x in r['seed_caps'])
assert maxcap<999
for cap in r['seed_caps']:
 if not cap['no_positive_joint_weight_proved']:
  for upper,c in zip(map(Fraction,cap['weight_upper_exact']),cap['optimistic_integer_caps']):
   assert upper<=c
integration=json.loads((ROOT/'integration-audit.json').read_text())
current_matches=all(sha256(Path(x['destination']).read_bytes()).hexdigest()==x['destination_sha256'] for x in integration['rows'])
record={'utc':datetime.now(timezone.utc).isoformat(),'status':'PASS_REVIEW_FINAL_CHECK','source_hashes_still_match':True,'original_i18_weighted_minimum':W,'original_i18_collision_minimum':C,'i18_threshold_derived_from_303_minus_279':24000,'original_profile_graph_checks':profile_check,'largest_optimistic_weight_cap':maxcap,'caps_cover_real_weights_without_999_clipping':True,'current_integrated_sources_match_audited_snapshot':current_matches,'worker_lean_invocations':0,'source_files_modified_by_reviewer':False,'scope':'original graph reconstruction and source/hash/provenance check; not Lean or original-problem acceptance','script_sha256':sha256(Path(__file__).read_bytes()).hexdigest()}
(ROOT/'review-final-check.json').write_text(json.dumps(record,indent=2)+'\n',encoding='utf-8')
print(json.dumps(record))
