"""Discovery/serialization only. Not invoked by reproduce.py."""
from pathlib import Path
import json
from math_core import first_carry,vbin
root=Path(__file__).resolve().parents[1]
cert={
 'schema':'B699-A-TRIDIGIT-1',
 'degree':9,'full_modulus_power':2,
 'window_scalar':[[t,s,max(t-2,0)+max(6-s,0)+max(6-t+s,0)] for t in range(9) for s in range(t+1)],
 'endpoint_normalized':[[t,s,max(6-s,0)+max(6-t+s,0)] for t in range(1,9) for s in range(t+1)],
 'positions':[[r,s] for r in range(1,9) for s in range(1,9) if r!=s],
 'constants':{'edge':213,'beta':205,'gcd':200,'small_denominator_shift':26,'small_denominator_degree':6,
  'distance_factor':128,'distance_degree':9,'source_power':6,'height_bits':2048,
  'gap_bound':232,'denominator_budget':1574,'error_budget':13274},
 'profiles':['I:1,1,C;2<=C<p','II:1,2,1'],
 'II_first_units':[[1,0,1],[1,1,-1],[2,0,512]],
 'II_exception_prime':73,'II_exception_modulus':16,
 'II_exception_residues':[4,12],
 'branch_coverage':['B=0','B>=1,not-all-lower','all-lower,H<9h','all-lower,H>9h','all-lower,H=9h'],
 'proof_boundary':{'rough_radical_instead_of_full':False,'composite_base_carry':False,'K9_may_be_zero':True,
  'below_2048':'FROZEN_A9_FINITE','all_58_closed':False,'R7_changed':False}}
(root/'evidence/certificate.json').write_text(json.dumps(cert,indent=2))
p,e,H,K,C=199,1,301,261,2;Q=p**e;n=Q*(p**H+p**K+C)
rows=[]
for B in (0,1):
 for S in range(C+1):
  if B==S==0:continue
  j=Q*(B*p**K+S)
  rows.append({'B':B,'S':S,'witness':11,'source_v':vbin(n,9,11),'target_v':vbin(n,j,11),
    'source_layer':first_carry(n,9,11),'target_layer':first_carry(n,j,11)})
giant={'p':p,'e':e,'H':H,'K':K,'C':C,'kind':'I','n_bits':n.bit_length(),'n_mod_400':n%400,
 'other_targets_witness':199,'all_allowed_masks':rows}
(root/'evidence/giant_row.json').write_text(json.dumps(giant,indent=2))
print('Created NEW small certificates only.')
