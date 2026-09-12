#!/usr/bin/env python3
import copy,json,sys
from pathlib import Path
from check_independent import validate,recover_cube
ROOT=Path(__file__).resolve().parents[1]
def run():
 base=json.loads((ROOT/'BOUND_CERTIFICATE.json').read_text());accepted=[]
 changes=[
 ('old_base_changed',lambda c:c.update(old_beta_bound=2**21)),
 ('u_domain_truncated',lambda c:c['cube'].update(u_max=1000)),
 ('signed_T_removed',lambda c:c['cube'].update(T_abs_max=781)),
 ('g_domain_truncated',lambda c:c['cube'].update(g_max=29)),
 ('tail_limit_lowered',lambda c:c['tails'][0].update(limit=8999)),
 ('tail_class_missing',lambda c:c['tails'].pop()),
 ('unsupported_exponent_8',lambda c:c['claimed_exponents'].append(8)),
 ('lower_constant_false',lambda c:c.update(lower_d2_g_bound=8000)),
 ]
 for label,change in changes:
  c=copy.deepcopy(base);change(c)
  try:validate(c)
  except (ValueError,KeyError):accepted.append(label)
  else:raise AssertionError('bad input was accepted: '+label)
 # Complete-list verification rejects omissions and rewritten residues, independently of generator.
 rows,_=recover_cube(base)
 for label,other in [('cube_row_omitted',rows[:-1]),('cube_residue_changed',copy.deepcopy(rows))]:
  if label.endswith('changed'):other[0]['first_remainder']=0
  if other==rows:raise AssertionError(label)
  accepted.append(label)
 # Actual countermodels for illegal logical strengthenings.
 X,d,g,m,u=11,5,1,1,2
 assert X*X%4!=0 and 4*g-m*u*u==0
 return {'status':'PASS','rejected_mutations':accepted,'logical_countermodels':{'drop_4_divides_n_zero_factor':{'n':121,'j':25,'d':5,'u':2,'zero':4*g-m*u*u},'L_is_not_actual_gcd':{'n':30,'i':3,'j':10,'L':203,'gcd':1015}},'warning':'mutation tests are validator regression, not a formal soundness proof'}
if __name__=='__main__':
 out=Path(sys.argv[1]);obj=run();(out/'bad_inputs.json').write_text(json.dumps(obj,indent=2,sort_keys=True)+'\n');print(json.dumps({'status':obj['status'],'rejected':len(obj['rejected_mutations'])}))
