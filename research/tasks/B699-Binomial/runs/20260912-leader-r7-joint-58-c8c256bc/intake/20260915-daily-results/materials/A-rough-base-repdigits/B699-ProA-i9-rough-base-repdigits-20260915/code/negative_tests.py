from pathlib import Path
from copy import deepcopy
import json,time
from receive import check
from core import source_conditions
ROOT=Path(__file__).resolve().parents[1]

def main():
 st=time.perf_counter();base=json.loads((ROOT/'evidence/certificate.json').read_text());tests=[]
 def mutation(name,fn):
  x=deepcopy(base);fn(x)
  try:check(x)
  except (ValueError,KeyError,TypeError) as e:tests.append({'name':name,'rejected':True,'reason':str(e)})
  else:raise AssertionError('accepted corrupted certificate '+name)
 mutation('missing_position',lambda c:c['positions'].pop())
 mutation('duplicate_position',lambda c:c['positions'].append(deepcopy(c['positions'][0])))
 mutation('position_zero_not_allowed',lambda c:c['positions'][0].update(r=0))
 mutation('wrong_endpoint_weight',lambda c:c['positions'][0].update(w=9))
 mutation('incorrect_n_power',lambda c:c['positions'][0].update(n_exponent=[0,1]))
 mutation('incorrect_constant_power',lambda c:c['positions'][0].update(constant_exponent=[0,1]))
 mutation('unproved_stronger_cut',lambda c:c['adopted'].update(rho=[464,5000]))
 mutation('unproved_finite_extension',lambda c:c['adopted'].update(finite_exponent=5000))
 mutation('lowered_cut_effective_entry',lambda c:c['adopted'].update(cut_entry_exponent=1000))
 mutation('remove_400',lambda c:c['scope'].update(n_multiple=1))
 mutation('permit_small_prime_in_base',lambda c:c['scope'].update(coprime_to=10))
 mutation('remove_C_less_than_B',lambda c:c['scope'].update(C_strictly_less_than_B=False))
 mutation('permit_e_zero',lambda c:c['scope'].update(e_min=0))
 mutation('permit_k_zero',lambda c:c['scope'].update(k_min=0))
 mutation('missing_residue_class',lambda c:c['residue_classes'].pop())
 mutation('wrong_case_degree',lambda c:c['residue_classes'][0].update(d=(c['residue_classes'][0]['d']+1)%4))
 mutation('d3_low_template_omission',lambda c:c['types'][3].update(D_min=5))
 mutation('false_smaller_g_constant',lambda c:c['uniform'].update(constant_power2=300000))
 mutation('forget_full_3_7_parts',lambda c:c['source_bound'].update(three_seven_cap=7))
 mutation('wrong_delta_coefficient',lambda c:c['source_bound'].update(delta_d_coefficient=5999))
 mutation('chosen_scan_cap_not_derived',lambda c:c['source_bound'].update(D_max=22))
 mutation('invalid_infinite_tail_step',lambda c:c['source_bound'].update(D_induction_LHS_step=6000))
 mutation('drop_power_of_2_in_n_bound',lambda c:c['source_bound'].update(last_n_power2=378000))
 mutation('invalid_final_height',lambda c:c['source_bound'].update(n_height_exponent=2000))
 pos=deepcopy(base);pos['positions'].reverse();check(pos)
 typ=deepcopy(base);typ['residue_classes'].reverse();typ['types'].reverse();check(typ)
 # Actual parameter guard tests, not assertions that the broadened theorem is false.
 invalid=[(25,1,1,1,2),(12,1,1,1,2),(1517,1517,1,1,2),(1517,400,0,1,2),(1517,400,1,0,2),(1517,400,1,1,1),(1517,1,1,1,2)]
 for args in invalid:assert not source_conditions(*args),args
 assert source_conditions(1517,400,23,7,1000)
 out={'status':'PASS_NEW_MUTATION_AND_SCOPE_TESTS','semantic_certificate_mutations_rejected':len(tests),'valid_reorderings_accepted':2,'invalid_actual_parameter_inputs_rejected':len(invalid),'tests':tests,'seconds':time.perf_counter()-st}
 (ROOT/'logs/negative_tests.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps({k:v for k,v in out.items() if k!='tests'}))
if __name__=='__main__':main()
