from pathlib import Path
from fractions import Fraction as F
from datetime import datetime,timezone
import ctypes,hashlib,json,time
OUT=Path(__file__).resolve().parent
RUN=OUT.parent.parent
SOURCE=RUN/'experiments/huan-i11-elementary-finite-plan-5e2d13bb/FINAL_PLAN.json'
started=time.perf_counter()
plan=json.loads(SOURCE.read_text())['selected_plan']
assert plan['B']==15360 and plan['S']==640
assert plan['weights']==[[248,252],[60,330],[226,268],[354,228],[352,216]]
H=15359;Y0=2**H;rows=[]
for row in plan['rows']:
 s=row['seed'];c,d=s['c'],s['d'];P,Q=s['p']**s['k0'],s['q']**s['l0']
 A3=F(row['Omega3_power_d']);A4=F(row['Omega4_power_d']);W=max(P,Q)**c*A4
 Z=W.numerator//W.denominator
 assert 1<Z and Z<=W<Z+1
 M=1
 while Z**M<=4*Y0:M+=1
 assert Z**(M-1)<=4*Y0<Z**M
 assert M>=row['D_threshold_m0'] and A3**M>48
 records=[]
 for primebase,w in [(P,row['wp']),(Q,row['wq'])]:
  alpha=1000-w;J=primebase**(1000*c)
  rate_lhs=J;rate_rhs=Z**alpha
  base_lhs=primebase**(1000*c*M);base_rhs=1<<(H*alpha)
  step_lhs=primebase**(1000*c*(M+1)) << (2*alpha)
  step_rhs=Z**(alpha*M)
  # Explicit memory cap on the resulting integer values, no arbitrary Y enumeration.
  assert max(step_lhs.bit_length(),step_rhs.bit_length())<16000000
  records.append({'prime_power_base':primebase,'weight':w,'alpha':alpha,
   'rate_J_lt_Z_alpha':rate_lhs<rate_rhs,
   'base_J_pow_M_le_Y0_alpha':base_lhs<=base_rhs,
   'lookahead_4_alpha_J_pow_Mplus1_le_Z_alphaM':step_lhs<=step_rhs,
   'rate_bits':[rate_lhs.bit_length(),rate_rhs.bit_length()],
   'base_bits':[base_lhs.bit_length(),base_rhs.bit_length()],
   'lookahead_bits':[step_lhs.bit_length(),step_rhs.bit_length()]})
  del base_lhs,base_rhs,step_lhs,step_rhs
 rows.append({'seed':s,'weights':[row['wp'],row['wq']],'m0':row['D_threshold_m0'],
  'A3':str(A3),'W':str(W),'integer_threshold_base_Z':Z,'minimum_index_at_Y0':M,
  'source_m0_covered':M>=row['D_threshold_m0'],'coefficient_at_M_A3_pow_M_gt_48':A3**M>48,
  'capacity_certificates':records})
class PMC(ctypes.Structure):
 _fields_=[('cb',ctypes.c_uint32),('PageFaultCount',ctypes.c_uint32),('PeakWorkingSetSize',ctypes.c_size_t),('WorkingSetSize',ctypes.c_size_t),('QuotaPeakPagedPoolUsage',ctypes.c_size_t),('QuotaPagedPoolUsage',ctypes.c_size_t),('QuotaPeakNonPagedPoolUsage',ctypes.c_size_t),('QuotaNonPagedPoolUsage',ctypes.c_size_t),('PagefileUsage',ctypes.c_size_t),('PeakPagefileUsage',ctypes.c_size_t)]
mem=PMC();mem.cb=ctypes.sizeof(PMC)
ctypes.windll.psapi.GetProcessMemoryInfo(ctypes.windll.kernel32.GetCurrentProcess(),ctypes.byref(mem),mem.cb)
all_pass=all(all(t[k] for k in ['rate_J_lt_Z_alpha','base_J_pow_M_le_Y0_alpha','lookahead_4_alpha_J_pow_Mplus1_le_Z_alphaM']) for x in rows for t in x['capacity_certificates'])
payload={'utc':datetime.now(timezone.utc).isoformat(),'status':'exact finite integer power comparisons; log-free Nat.find selector feasibility, not Lean acceptance',
 'source_sha256':hashlib.sha256(SOURCE.read_bytes()).hexdigest(),'fixed_H_Y':H,'rows':rows,'all_capacity_certificates_pass':all_pass,
 'maximum_comparison_bits':max(max(t['lookahead_bits']) for x in rows for t in x['capacity_certificates']),
 'peak_working_set_bytes':mem.PeakWorkingSetSize,'seconds':time.perf_counter()-started,
 'actual_unbounded_selector_proved_in_Lean':False,'worker_lean_invocations':0,'CRT_pairs_enumerated':0,'new_original_indices':[]}
(OUT/'log-free-selector-results.json').write_text(json.dumps(payload,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'all_pass':all_pass,'rows':[{'cd':[x['seed']['c'],x['seed']['d']],'M':x['minimum_index_at_Y0'],'m0':x['m0'],'checks':x['capacity_certificates']} for x in rows],
 'maximum_bits':payload['maximum_comparison_bits'],'peak_bytes':payload['peak_working_set_bytes'],'seconds':payload['seconds']},indent=2))
