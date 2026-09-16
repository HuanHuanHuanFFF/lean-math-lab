"""Semantic rejection tests. These test the receiver, not the paper proof."""
from copy import deepcopy
from verify import verify

def mutation_tests(data):
    edits=[]
    for key in ('entry','factor_log_height','weighted_degree','coefficient_eval_bits','cost_bound','interpolation_denominator','bad_value_exponent','triple_height_bits','pc_two_power','finite_curve_height_bits','minimum_weighted_degree','component_bound'):
        d=deepcopy(data);d['constants'][key]-=1;edits.append((key,d,False))
    d=deepcopy(data);d['small_graphs'][0]=['1'];edits.append(('graph table',d,False))
    d=deepcopy(data);d['quadratics'].pop();edits.append(('missing quadratic',d,False))
    gi=next(i for i,r in enumerate(data['quadratics']) if r['method']=='two_graphs')
    ri=next(i for i,r in enumerate(data['quadratics']) if r['method']=='first_two_windows')
    d=deepcopy(data);d['quadratics'][gi]['roots'][0][0]='999';edits.append(('false graph factor',d,False))
    d=deepcopy(data);d['quadratics'][ri]['window_values'][0]=0;edits.append(('zero product misaccepted',d,False))
    d=deepcopy(data);d['quadratics'][ri]['primitive_a']+=1;edits.append(('lost primitive scale',d,False))
    d=deepcopy(data);d['quadratics'][ri]['hits'][0]=[];edits.append(('wrong source root set',d,False))
    d=deepcopy(data);d['B_table'].pop();edits.append(('incomplete B table',d,True))
    d=deepcopy(data);d['statistics']['c_interpolations']-=1;edits.append(('false complete count',d,True))
    d=deepcopy(data);d['quadratics'][ri]['b'][0]='99999';edits.append(('different curve',d,False))
    d=deepcopy(data);d['schema']='wrong';edits.append(('schema',d,False))
    rejected=[]
    for name,d,full in edits:
        try:verify(d,complete=full)
        except (ValueError,AssertionError,KeyError):rejected.append(name)
        else:raise AssertionError('accepted bad certificate: '+name)
    positives=[]
    d=deepcopy(data);d['quadratics'][gi]['roots'].reverse();verify(d,complete=False);positives.append('factor order swapped')
    d=deepcopy(data);d['quadratics'][gi]['roots'][0]+=['0'];verify(d,complete=False);positives.append('zero padded graph')
    return {'status':'PASS_MUTATIONS','rejected':rejected,'accepted_equivalences':positives}
