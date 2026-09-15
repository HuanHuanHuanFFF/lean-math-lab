"""Semantic mutations of this round's finite arithmetic certificate only."""
from pathlib import Path
from copy import deepcopy
import json,time
from receive import receive
R=Path(__file__).resolve().parents[1]

def main():
    start=time.monotonic();base=json.loads((R/'evidence/certificate.json').read_text())
    mutants=[]
    def add(name,fn):
        c=deepcopy(base);fn(c);mutants.append((name,c))
    add('missing_nonzero_row_node',lambda c:c['nodes'].pop())
    add('duplicate_node_leaves_gap',lambda c:c['nodes'].__setitem__(0,c['nodes'][1]))
    add('normalized_row_zero_illegally_added',lambda c:c['nodes'].append([0,0,12,12]))
    add('valuation_weight_lowered',lambda c:c['nodes'][0].__setitem__(2,10))
    add('missing_scalar_node',lambda c:c['elementary']['sc_nodes'].pop())
    add('scalar_coverage_forged',lambda c:c['elementary']['sc_nodes'][0].__setitem__(2,9))
    add('missing_general_position',lambda c:c['elementary']['positions'].pop())
    add('general_scope_relaxed_400_to_200',lambda c:c['elementary'].__setitem__('n_divisor',200))
    add('g_power_illegally_increased',lambda c:c['elementary']['edge'].__setitem__(1,5))
    add('elementary_constant_illegally_lowered',lambda c:c['elementary']['edge'].__setitem__(2,200))
    add('numerator_degree_illegally_lowered',lambda c:c['elementary']['beta'].__setitem__(2,3))
    add('maximum_value_forged',lambda c:c['kappa'].__setitem__(0,0))
    add('derivative_changed',lambda c:c['f_derivative'].__setitem__(8,8))
    add('missing_strong_position',lambda c:c['positions'].pop())
    add('cut_exponent_changed',lambda c:c['local_bounds'].__setitem__('rho',[464,5000]))
    add('source_weight_changed',lambda c:c['positions'][0].__setitem__('weight_nonmax',38))
    add('beta_scale_missing',lambda c:c['positions'][0].__setitem__('beta_two_exp',615))
    add('rough_prime_threshold_relaxed',lambda c:c['local_bounds'].__setitem__('p_min',9))
    add('rational_denominator_scope_relaxed',lambda c:c['local_bounds'].__setitem__('band_d_exp',7))
    add('pure_block_entry_removed',lambda c:c['elementary'].__setitem__('pure_block_N0',1))
    add('pure_block_low_digit_scope_relaxed',lambda c:c['elementary'].__setitem__('pure_block_R_power',1))
    add('weak_half_width_scope_relaxed',lambda c:c['block_cases'][1].__setitem__('A_power',8))
    add('frozen_g_exponent_understated',lambda c:c['block_cases'][0].__setitem__('Gnum',5832))
    add('infinite_family_entry_removed',lambda c:c['family'].__setitem__('T0',0))
    add('wrong_family_beta_offset',lambda c:c['family'].__setitem__('beta_offset',1))
    add('false_affine_margin',lambda c:c['family']['affine_margins'][0].__setitem__('slope',[0,1]))
    add('omitted_family_comparison',lambda c:c['family']['affine_margins'].pop())
    refused=[]
    for name,c in mutants:
        try:receive(c)
        except (ValueError,KeyError,TypeError,IndexError) as e:refused.append({'name':name,'reason':str(e)})
        else:raise AssertionError('MUTANT ACCEPTED: '+name)
    positives=[]
    c=deepcopy(base);c['nodes'].reverse();receive(c);positives.append('node_order_permutation')
    c=deepcopy(base);c['positions'].reverse();receive(c);positives.append('position_order_permutation')
    out={'status':'PASS_NEW_SEMANTIC_MUTATIONS','rejected':len(refused),'accepted_equivalences':positives,
         'details':refused,'scope':'finite certificate checker only; not external mathematical or Lean audit',
         'seconds':time.monotonic()-start}
    (R/'logs/negative_tests.json').write_text(json.dumps(out,indent=2));print(json.dumps({k:v for k,v in out.items() if k!='details'}))
if __name__=='__main__':main()
