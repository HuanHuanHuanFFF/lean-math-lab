"""Rejection tests for finite certificates; not a general proof validator."""
import json,time,copy
from pathlib import Path
from receive import receive,receive_giant,Rejected
ROOT=Path(__file__).resolve().parents[1]
a=json.loads((ROOT/'evidence/certificate.json').read_text());g=json.loads((ROOT/'evidence/giant_row.json').read_text())
cases=[]
def add(name,change,target='main'):
    c=copy.deepcopy(a if target=='main' else g);change(c);cases.append((name,c,target))
add('drop_scalar_cell',lambda c:c['window_scalar'].pop())
add('weaken_one_scalar_weight',lambda c:c['window_scalar'][0].__setitem__(2,9))
add('drop_normalized_cell',lambda c:c['endpoint_normalized'].pop())
add('include_forbidden_zero_row',lambda c:c['endpoint_normalized'][0].__setitem__(0,0))
add('omit_one_position',lambda c:c['positions'].pop())
add('erase_full_power_square',lambda c:c.__setitem__('full_modulus_power',1))
add('replace_ninth_coefficient',lambda c:c.__setitem__('degree',8))
add('unjustified_denominator_fifth_power',lambda c:c['constants'].__setitem__('small_denominator_degree',5))
add('too_small_coefficient_budget',lambda c:c['constants'].__setitem__('small_denominator_shift',20))
add('high_segment_starts_too_low',lambda c:c['constants'].__setitem__('height_bits',1500))
add('erase_resonance_branch',lambda c:c['branch_coverage'].pop())
add('wrong_exception_prime',lambda c:c.__setitem__('II_exception_prime',71))
add('false_73_remainder',lambda c:c.__setitem__('II_exception_residues',[0,12]))
add('radical_instead_of_complete_W',lambda c:c['proof_boundary'].__setitem__('rough_radical_instead_of_full',True))
add('silently_close_58',lambda c:c['proof_boundary'].__setitem__('all_58_closed',True))
add('remove_frozen_low_dependency',lambda c:c['proof_boundary'].__setitem__('below_2048','UNCONDITIONAL_REPLAYED'))
add('missing_giant_mask',lambda c:c['all_allowed_masks'].pop(),'giant')
add('false_giant_witness',lambda c:c['all_allowed_masks'][0].__setitem__('witness',9),'giant')
add('wrong_complete_target_valuation',lambda c:c['all_allowed_masks'][0].__setitem__('target_v',0),'giant')
add('incorrect_default_witness',lambda c:c.__setitem__('other_targets_witness',197),'giant')
start=time.perf_counter();rejected=[]
for name,c,target in cases:
    try:(receive if target=='main' else receive_giant)(c)
    except (Rejected,KeyError,ValueError,TypeError):rejected.append(name)
    else:raise AssertionError('accepted damaged certificate: '+name)
# Do accept genuine presentation changes, rather than matching serialized bytes.
b=copy.deepcopy(a)
for k in ('positions','window_scalar','endpoint_normalized','II_first_units','branch_coverage'):b[k].reverse()
receive(b)
b=copy.deepcopy(g);b['all_allowed_masks'].reverse();receive_giant(b)
r={'status':'PASS_NEW_DAMAGE_REJECTION','rejected_count':len(rejected),'rejected':rejected,'positive_equivalence_cases':2,'seconds':time.perf_counter()-start}
(ROOT/'logs/negative_tests.json').write_text(json.dumps(r,indent=2))
print(json.dumps(r))
