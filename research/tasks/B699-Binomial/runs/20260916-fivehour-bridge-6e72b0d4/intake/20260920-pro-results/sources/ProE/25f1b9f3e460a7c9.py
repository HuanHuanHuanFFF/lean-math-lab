from __future__ import annotations
import copy,json,sys
from pathlib import Path
import primary,independent
ROOT=Path(__file__).resolve().parents[1]

def mutations(c):
 out=[]
 def add(name,fn):
  x=copy.deepcopy(c);fn(x);out.append((name,x))
 add('changed_polynomial_coefficient',lambda x:x['polynomials']['f0'][0].__setitem__(1,x['polynomials']['f0'][0][1]+1))
 add('omitted_recovery',lambda x:x['polynomials'].pop('f2'))
 add('wrong_source_slot',lambda x:x['slot_table']['factors'][2][1].__setitem__(1,-14))
 add('loosened_tau_cap',lambda x:x['slot_table']['caps'].__setitem__(2,5))
 add('central_duplicate_not_merged',lambda x:x['slot_table']['pairs'][4].__setitem__('m_degree',4))
 add('bad_pair_bound',lambda x:x['slot_table']['pairs'][-1].__setitem__('bound_coefficient',59))
 add('missing_prime_factor',lambda x:x['row']['factor_Xminus'].pop())
 add('wrong_complete_exponent',lambda x:x['row']['factor_Xplus'][-1].__setitem__(1,2))
 add('corrupted_lucas_witness',lambda x:x['prime_certificates']['8831418697']['witnesses'].__setitem__('2',1))
 add('false_original_n',lambda x:x['row'].__setitem__('n',x['row']['n']+1))
 add('delete_high_power_3',lambda x:x['iso3_tests'][2].__setitem__(1,3))
 add('shell_false_window',lambda x:x['shell'].__setitem__('W1_remainder',0))
 add('shell_invented_no_carry',lambda x:x['shell'].__setitem__('v_binom_nj',0))
 return out

def run():
 c=json.loads((ROOT/'certificates/certificate.json').read_text());results=[]
 for name,changed in mutations(c):
  outcomes=[]
  for module in (primary,independent):
   try:module.validate(changed)
   except (AssertionError,ValueError,KeyError,IndexError,TypeError,ZeroDivisionError):outcomes.append('REJECT')
   else:raise AssertionError(f'{module.__name__} accepted {name}')
  results.append({'mutation':name,'primary':outcomes[0],'independent':outcomes[1]})
 return results
if __name__=='__main__':
 r=run();print('PASS_BAD_CERTIFICATE_REJECTION',len(r),'cases, 2 checkers')
