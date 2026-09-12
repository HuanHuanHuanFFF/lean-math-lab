from pathlib import Path
from fractions import Fraction as F
from math import gcd
import json,time,hashlib,sys
from intervals import compute
OUT=Path(__file__).resolve().parent
CHECK='--check' in sys.argv
assert CHECK or not (OUT/'FREEZE.json').exists()
def save(name,value):
 path=OUT/name
 if CHECK:
  prior=json.loads(path.read_text());new=json.loads(json.dumps(value))
  if name=='exact-summary.json':prior.pop('seconds');new.pop('seconds')
  assert prior==new, name
 else:
  path.write_text(json.dumps(value,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
screen=json.loads((OUT/'screen.json').read_text())
start=time.perf_counter();allrows=[];total=0
for seed in screen['rows']:
 idx=seed['source_index'];result=[];full=[];fallback=[]
 for pos,s in enumerate(seed['grid']):
  row={k:v for k,v in seed['original_parameters'].items() if k not in ['L1','m0']};row.update(c=s['c'],d=s['d'])
  r=compute(row)
  q=F(r['logAQ']['exact_lower']);qu=F(r['logAQ']['exact_upper']);e=F(r['capacity_times_E_rate_minus_one']['exact_lower']);eu=F(r['capacity_times_E_rate_minus_one']['exact_upper'])
  ok=q>0 and e>0
  assert ok or qu<0 or eu<0
  assert ok==s['screen_pass']
  g=F(r['gamma_logG_per_m']['exact_lower']);gu=F(r['gamma_logG_per_m']['exact_upper'])
  baselineQ=F(r['G1_logAQ']['exact_lower']);baselineE=F(r['G1_capacity_slack']['exact_lower'])
  if gu<0 and baselineQ>0 and baselineE>0:fallback.append([s['c'],s['d']])
  if g>0:assert F(r['G1_logAQ']['exact_upper'])<q and F(r['G1_capacity_slack']['exact_upper'])<e
  elif gu<0:assert qu<F(r['G1_logAQ']['exact_lower'])and eu<F(r['G1_capacity_slack']['exact_lower'])
  rec={'c':s['c'],'d':s['d'],'cost':s['c']+s['d'],'pass':ok,'logAQ':r['logAQ'],'slack':r['capacity_times_E_rate_minus_one'],'gamma':r['gamma_logG_per_m'],'gamma_sign': 'positive' if g>0 else 'negative' if gu<0 else 'zero','same_configuration_gamma_monotonic':True}
  result.append(rec)
  if ok:full.append(r)
  total+=1
  if (pos+1)%50==0: print(f'seed {idx}, exact {pos+1}/{len(seed["grid"])}, cumulative {time.perf_counter()-start:.1f}s',flush=True)
 assert not fallback
 good=[x for x in result if x['pass']]
 lowest=good[0]if good else None
 # This is an exact ordering of full-grid positive slack intervals, not float ranking.
 best=max(good,key=lambda x:F(x['slack']['exact_lower'])) if good else None
 if best:
  for x in good:
   if x is not best: assert F(x['slack']['exact_upper'])<F(best['slack']['exact_lower'])
 # Find the closest E-capacity deficit among configurations with strictly positive Q.
 admissibleQ=[x for x in result if F(x['logAQ']['exact_lower'])>0]
 closest=max(admissibleQ,key=lambda x:F(x['slack']['exact_lower'])) if admissibleQ else None
 if closest:
  for x in admissibleQ:
   if x is not closest:assert F(x['slack']['exact_upper'])<F(closest['slack']['exact_lower'])
 sr={'source_index':idx,'fixed_source_parameters':seed['original_parameters'],'exact_legal_count':len(result),'exact_positive_count':len(good),'lowest_cost':lowest,'best_positive_slack':best,'best_E_slack_among_Q_positive':closest,'full_positive_certificates':full,'no_extra_positive_from_G1_when_direct_D_rate_negative':True,'grid':result}
 save(f'grid-{idx:02d}.json',sr)
 allrows.append({k:v for k,v in sr.items()if k not in ['grid','full_positive_certificates']})
 print(json.dumps({'seed':idx,'exact_count':len(result),'positive':len(good),'lowest':(lowest['c'],lowest['d'])if lowest else None,'seconds':time.perf_counter()-start}),flush=True)
summary={'status':'EXACT_ALL_LEGAL_CONFIGURATIONS_CHECKED_NOT_LEAN','grid_c_max':32,'coprime_pairs_before_z_filter':screen['coprime_pairs_before_z_filter'],'exact_configurations':total,'rows':allrows,'interval_functions_sha256':hashlib.sha256((OUT/'intervals.py').read_bytes()).hexdigest(),'screen_source_sha256':hashlib.sha256((OUT/'screen.json').read_bytes()).hexdigest(),'float_screen_agreement':True,'no_unresolved_signs':True,'no_extra_positive_from_G1_when_D_rate_negative':True,'method':'Actual core maxima via exact square brackets and 80-term outward logarithm intervals; every legal grid entry checked, including all lower c+d values.','seconds':time.perf_counter()-start,'no_new_thresholds':True,'no_new_seeds':True,'lean_invocations':0}
save('exact-summary.json',summary)
print('COMPLETE',total,summary['seconds'],flush=True)
