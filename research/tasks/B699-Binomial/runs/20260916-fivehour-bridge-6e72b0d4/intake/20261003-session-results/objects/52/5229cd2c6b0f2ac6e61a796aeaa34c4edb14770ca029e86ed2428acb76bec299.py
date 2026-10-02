#!/usr/bin/env python3
from pathlib import Path
import sys,json
from fractions import Fraction as F
sys.path.insert(0,str(Path(__file__).resolve().parent))
from affine_audit import transform,audit
from recover import recover,square_root
from original_pair_audit import audit as audit_original
checks=[]
def ck(s,v):
 assert v,s;checks.append(s)
for base in [(0,2,1),(1,2,1),(2,0,1),(2,1,1),(2,2,0)]:
 out=recover(*base);ck('nonzero gate '+str(base),out['status'].startswith('REJECT') and not out['NC3_certified'])
for base in [(2,2,1),(-3,2,2),(F(3,2),F(4,3),F(5,7))]:
 out=recover(*base);ck('complete six residuals '+str(base),'polynomial_residuals' in out and len(out['polynomial_residuals'])==6 and not out['NC3_certified'])
ck('rational positive square',square_root(F(49,121))==F(7,11))
ck('rational nonsquare',square_root(F(2,3)) is None)
ck('affine exact substitution',transform([2,3,1],2,1)==[6,10,4])
try:transform([2,1],0,1);ok=False
except ValueError:ok=True
ck('zero affine slope refused',ok)
a=audit([2,0,2],[1,0,1],1,0,3,20,10)
ck('unchanged supplied pair',a['same_supplied_pair'] and a['legal_pair'] and not a['NC3_certified'] and not a['prime_power_T_verified'])
a=audit([2,0,2],[1,0,1],1,0,3,21,10)
ck('wrong supplied n rejected by equality',not a['same_supplied_pair'])
a=audit([2,0,2],[1,0,1],F(1,2),0)
ck('fractional coefficients not accepted as original digits',not a['f_integer_nonnegative'])
a=audit([2,0,2],[1,0,1],1,1)
ck('original constant two retained',not a['constant_two'])
for mu,expected in [(F(1),False),(F(3),False),(F(4),True),(F(7,2),False)]:
 ck('rational mu barrier '+str(mu),(27*mu*mu+560*mu-2304>0)==expected)
# A source prime equal to i=3 with its actual complete square power.
o=audit_original(20,4,[[2,3,2]])
ck('p=i complete 3^2 retained',o['sources'][0]['actual_full_exponent']==2 and o['sources'][0]['status']=='FULL_SOURCE_POWER_VERIFIED' and o['p_equals_i_retained'])
o=audit_original(20,4,[[2,3,1]])
ck('truncated 3-power refused',o['sources'][0]['status']=='REJECT_NOT_ACTUAL_COMPLETE_SOURCE_POWER')
ck('source subset not complete NC3 proof',not o['NC3_certified'] and not o['complete_source_coverage'])
print(json.dumps({'status':'PASS','checks':len(checks),'checked':checks,'examples_not_theorem_proofs':True},indent=2))
