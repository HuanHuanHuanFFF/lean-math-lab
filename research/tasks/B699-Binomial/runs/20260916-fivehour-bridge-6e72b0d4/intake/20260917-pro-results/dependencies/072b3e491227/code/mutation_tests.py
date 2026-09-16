"""Semantic damage and valid transformations for the new finite certificate."""
from pathlib import Path
from copy import deepcopy
from collections import defaultdict
import json,time
from verify import verify,check_candidate,check_bounds,require
ROOT=Path(__file__).resolve().parents[1]

def run(data):
 st=time.time();out=[]
 def bad(name,fun):
  try:fun()
  except (ValueError,AssertionError,KeyError,TypeError,ZeroDivisionError):out.append(name)
  else:raise ValueError('damage accepted: '+name)
 def global_bad(name,change):
  dd=deepcopy(data);change(dd);bad(name,lambda:verify(dd,False,False))
 global_bad('duplicate_candidate',lambda d:d['candidates'].__setitem__(1,deepcopy(d['candidates'][0])))
 global_bad('basis_permutation',lambda d:d['basis'].reverse())
 global_bad('wrong_prime',lambda d:d.__setitem__('prime',1000005))
 global_bad('wrong_expected_route_count',lambda d:d['expected']['routes'].__setitem__('first_windows',15257))
 for name,key,val in [('entry_shortened','entry_bits',13800000),('branch_height_too_large','branch_bits',1290000),
  ('factor_bound_too_small','factor_bits',1243000),('bootstrap_coefficient_too_small','bootstrap_bits',8100),
  ('double_coefficient_too_small','ordinary_double_bits',1300),('wrong_g_kernel_constant','G_coeff_bits',1242693),
  ('wrong_g_degree','G_X_degree',151),('undersized_new_factor_bound','bootstrap_factor_bits',8320)]:
  dd=deepcopy(data);dd['bounds'][key]=val;bad(name,lambda dd=dd:check_bounds(dd))
 routes=defaultdict(list)
 for row in data['candidates']:routes[row['route']].append(row)
 def local(name,route,edit):
  row=deepcopy(routes[route][0]);edit(row);bad(name,lambda:check_candidate(row))
 local('wrong_first_value','first_windows',lambda r:r['values'].__setitem__(0,r['values'][0]+1))
 local('zero_vector','first_windows',lambda r:r.__setitem__('v',[0]*12))
 local('nonprimitive_vector','first_windows',lambda r:r.__setitem__('v',[2*x for x in r['v']]))
 local('negated_primitive_normalization','first_windows',lambda r:r.__setitem__('v',[-x for x in r['v']]))
 local('noninteger_coefficient','first_windows',lambda r:r['v'].__setitem__(0,0.5))
 local('unknown_route','first_windows',lambda r:r.__setitem__('route','unproved'))
 local('wrong_factor_scalar','low_weight_product',lambda r:r.__setitem__('scalar',r['scalar']+1))
 local('wrong_factor_multiplicity','low_weight_product',lambda r:r['factors'][0].__setitem__(1,r['factors'][0][1]+1))
 local('negative_factor_exponent','low_weight_product',lambda r:r['factors'][0][0][0].__setitem__(0,-1))
 local('zero_constant_is_not_smooth','C31_constant',lambda r:r['v'].__setitem__(0,0))
 local('coarse_prime37_not_C31','C31_constant',lambda r:r['v'].__setitem__(0,37))
 local('missing_origin_zero','C31_linear_origin',lambda r:r['v'].__setitem__(0,1))
 local('zero_linear_coefficient','C31_linear_origin',lambda r:r['v'].__setitem__(1,0))
 local('false_mod25_exclusion','mod25',lambda r:r.__setitem__('v',[0,0,0,0,0,0,1,0,0,0,0,0]))
 local('wrong_leading_critical_point','leading_sign',lambda r:r['critical'].__setitem__(0,[1,100]))
 local('wrong_leading_extremum','leading_sign',lambda r:r['values'].__setitem__(0,[0,1]))
 # Coverage is independent of these order choices.
 d=deepcopy(data);d['candidates'].reverse();verify(d,False,False)
 d=deepcopy(data)
 for r in d['candidates']:
  if r['route']=='low_weight_product':
   r['factors'].reverse()
   for terms,m in r['factors']:terms.reverse()
 verify(d,False,False)
 return {'status':'PASS_NEW_DAMAGE_TESTS','rejected':len(out),'names':out,
         'valid_transformations':2,'seconds':time.time()-st,
         'scope':'finite receiver robustness; not a substitute for a mathematical proof'}
if __name__=='__main__':
 import argparse
 p=argparse.ArgumentParser();p.add_argument('--out',required=True);a=p.parse_args()
 d=json.loads((ROOT/'evidence/certificate.json').read_text());r=run(d)
 Path(a.out).write_text(json.dumps(r,indent=2));print(json.dumps(r))
