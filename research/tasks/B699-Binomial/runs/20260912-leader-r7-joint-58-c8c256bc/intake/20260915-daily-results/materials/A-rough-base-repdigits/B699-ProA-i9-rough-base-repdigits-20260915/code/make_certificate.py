"""Deterministic new finite obligations; not a historical discovery search."""
from fractions import Fraction as F
from pathlib import Path
import json
from core import degree_case
ROOT=Path(__file__).resolve().parents[1]
rho=F(463,5000)
pair=lambda x:[x.numerator,x.denominator]
pos=[]
for r in range(1,9):
 for s in range(1,9):
  if r==s: continue
  k=r+s;w=12-max(r,s)
  pos.append({'r':r,'s':s,'w':w,'n_exponent':pair(6-k-rho*w),'constant_exponent':pair(k-6+rho*w)})
classes=[{'k_mod4':k%4,'t_mod4':t%4,'d':degree_case(k,t)} for k in range(1,5) for t in range(4,8)]
cert={
 'schema':'A_ROUGH_BASE_REPDIGITS_V1',
 'scope':{'base_min':11,'coprime_to':210,'C_min':1,'C_strictly_less_than_B':True,'e_min':1,'k_min':1,'t_min':2,'n_multiple':400},
 'adopted':{'rho':pair(rho),'scalar_R':171603713767500,'finite_exponent':4096,'cut_entry_exponent':14000001,'old_math_replays':0},
 'positions':pos,'residue_classes':classes,
 'types':[{'d':0,'D_min':2},{'d':1,'D_min':2},{'d':2,'D_min':3},{'d':3,'D_min':4}],
 'uniform':{'g_exponent':6000,'n_exponent':1037,'constant_power2':306000,'position_constant_upper':12,'per_row_loss':840,'loss_exponent':60},
 'source_bound':{'smooth_factor':42,'three_seven_cap':21,'smooth_factor_power2_upper':6,'denominator_delta_slope':4963,'delta_d_coefficient':6000,'delta_constant':1037,'pre_kt_power2':342000,'D_max':29,'D_first_impossible':30,'D_induction_LHS_step':14889,'D_induction_offset':405111,'D_RHS_exponent':6000,'D_base_exponent':41559,'D_base_rhs_log_bound':30000,'delta_ratio':163,'kt_power2_upper':6,'last_B_power2':378000,'last_n_power2':378163,'n_height_exponent':2321},
 'examples':[{'B':1517,'C':400,'e':23,'k':7,'t':1000},{'B':521,'C':400,'e':1,'k':1,'t':4},{'B':31,'C':25,'e':1,'k':1,'t':2}]
}
(ROOT/'evidence/certificate.json').write_text(json.dumps(cert,ensure_ascii=False,indent=2)+'\n')
print('BUILT_NEW_CERTIFICATE')
