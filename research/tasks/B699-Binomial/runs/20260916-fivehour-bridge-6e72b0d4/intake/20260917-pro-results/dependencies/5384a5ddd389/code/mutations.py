#!/usr/bin/env python3
"""Reject altered certificates and explicit mathematical boundary mistakes."""
from pathlib import Path
import copy,json
from check import check_certificate
from consumer import assess,source_small,data
ROOT=Path(__file__).resolve().parents[1]

def main():
    base=json.loads((ROOT/'evidence/new-certificate.json').read_text());check_certificate(base)
    tests=[]
    def reject(name,change):
        z=copy.deepcopy(base);change(z)
        try: check_certificate(z)
        except (AssertionError,KeyError,ValueError,TypeError):tests.append({'name':name,'rejected':True});return
        raise AssertionError('corrupt certificate accepted: '+name)
    reject('change_sixth_degree_coefficient',lambda z:z['F_terms'][0].__setitem__(-1,z['F_terms'][0][-1]+1))
    reject('delete_midpoint_double_order',lambda z:z['nodes'][2].__setitem__('order',1))
    reject('omit_source_grid_point',lambda z:z['nodes'].pop())
    reject('claim_extra_origin_factor_g',lambda z:z.__setitem__('origin_order',3))
    reject('claim_lower_total_degree',lambda z:z.__setitem__('degree',5))
    reject('change_midpoint_linear_correction',lambda z:z['midpoints'][0]['K_terms'][0].__setitem__(-1,99))
    reject('wrong_absolute_value_extremum_identity',lambda z:z['lower_identity'][0].__setitem__(-1,31))
    reject('wrong_joint_bound_cutoff',lambda z:z.__setitem__('joint_bound_cutoff',12))
    reject('wrong_joint_constant',lambda z:z.__setitem__('joint_constant',64))
    reject('wrong_negative_bound_constant',lambda z:z.__setitem__('constant_margin',1))
    reject('drop_isolated_endpoint_cost',lambda z:z['costs'][0].__setitem__('s1',999))
    reject('promote_partial_midpoint_13_to_169',lambda z:z['weak_lift_example'].__setitem__('actual_M4',169))
    reject('wrong_zero_branch',lambda z:z['zero_case'].__setitem__('j',7))
    reject('move_zero_point_to_proved_targets',lambda z:z.__setitem__('targets',[4,5,6,7,8]))
    # These are direct semantic boundary checks rather than altered JSON.
    assert not assess(16,5,6)['new_reasons']
    tests.append({'name':'zero_numerator_must_not_certify_positive_gap','rejected':True})
    assert source_small(125,5)==1 and source_small(5,5)==5
    tests.append({'name':'do_not_remove_one_layer_of_125','rejected':True})
    try:assess(20,4,7)
    except ValueError:tests.append({'name':'do_not_apply_fifth_source_to_i4','rejected':True})
    else:raise AssertionError('i4 accepted by unsupported source window')
    try:assess(18,7,10)
    except ValueError:tests.append({'name':'reject_j_above_half_row','rejected':True})
    else:raise AssertionError('illegal j accepted')
    out={'status':'PASS_TAMPER_AND_BOUNDARY_TESTS','count':len(tests),'tests':tests,
         'meaning':'Altered fixed certificates are rejected; this is not a claim every alternative constant is mathematically false.'}
    (ROOT/'evidence/mutations.json').write_text(json.dumps(out,indent=2,sort_keys=True)+'\n')
    print(json.dumps({'status':out['status'],'count':out['count']}))
if __name__=='__main__':main()
