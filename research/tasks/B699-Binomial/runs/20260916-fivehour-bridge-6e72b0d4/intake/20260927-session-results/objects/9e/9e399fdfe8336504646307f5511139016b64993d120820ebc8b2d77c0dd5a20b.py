#!/usr/bin/env python3
"""Reject mathematical mutations in memory, not merely altered file digests."""
import sys
sys.dont_write_bytecode=True
import copy,json
from common import canon,parent
from verify import load,verify_sources,verify_quotient,verify_closure,verify_table,verify_projection,verify_boundary,verify_next

def run():
 o=load();p=parent();res=[]
 tests=[]
 def add(name,file,mut,check):tests.append((name,file,mut,check))
 add('source_period_changed','01_source_periods.json',lambda x:x.update(period191=94),verify_sources)
 add('true_quotient_changed','02_true191_quotient.json',lambda x:x['rows'][1].update(B=(x['rows'][1]['B']+1)%191),verify_quotient)
 def dropzero(x):next(r for r in x['rows'] if r['S']==0)['all_square_roots'].clear()
 add('zero_square_omitted','02_true191_quotient.json',dropzero,verify_quotient)
 add('same_c_reset','02_true191_quotient.json',lambda x:x.update(same_c=3),verify_quotient)
 add('original_n_root_changed','03_A382_closed.json',lambda x:x['roots'][0].update(n=1),lambda x:verify_closure(x,p))
 add('overlapping_exponent_weakened','04_FN19_shared_exponent.json',lambda x:x.update(overlap_modulus=1),verify_table)
 add('conditional_tag_invented','04_FN19_shared_exponent.json',lambda x:x['rows'][2]['q0_tags_mod6'].append([1,0]),verify_table)
 add('projection_delta_changed','05_projection_delta.json',lambda x:x.update(total_delta_M4=x['total_delta_M4']+1),lambda x:verify_projection(x,p,o['04_FN19_shared_exponent.json']))
 add('weak_family_exponent_changed','06_finite_family_boundary.json',lambda x:x.update(s_positive=229),verify_boundary)
 add('original_P_exponent_truncated','08_next_A532.json',lambda x:x.update(original_P_exponent_multiple=3),lambda x:verify_next(x,p,o['04_FN19_shared_exponent.json']))
 for name,file,mut,check in tests:
  x=copy.deepcopy(o[file]);mut(x)
  try:check(x)
  except (ValueError,AssertionError) as e:res.append(dict(test=name,rejected=True,message=str(e)))
  else:raise RuntimeError('CORRUPTION ACCEPTED: '+name)
 return dict(schema='mathematical-mutation-rejection-v1',tests=res,total=len(res),all_rejected=True,changes_to_files=False)
if __name__=='__main__':print(canon(run()).decode(),end='')
