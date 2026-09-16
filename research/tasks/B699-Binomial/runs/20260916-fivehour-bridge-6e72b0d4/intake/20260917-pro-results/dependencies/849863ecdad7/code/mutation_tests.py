"""Semantic mutations of the *new existence parameter certificate* only."""
from copy import deepcopy
from certificate import verify

def run(original):
    rejected=[]
    def reject(name,mut):
        x=deepcopy(original);mut(x)
        try:verify(x)
        except (AssertionError,ValueError,TypeError,KeyError,ZeroDivisionError):rejected.append(name)
        else:raise AssertionError('unexpected acceptance: '+name)
    reject('missing_condition',lambda x:x.__setitem__('n_rows',x['n_rows']-1))
    reject('missing_monomial',lambda x:x.__setitem__('n_columns',x['n_columns']-1))
    reject('degree_drop_without_proof',lambda x:x.__setitem__('degree',549))
    reject('prefactor_order',lambda x:x['prefactor_multiplicities'].__setitem__(1,22))
    reject('row3_weight',lambda x:x['row_weights'].__setitem__(2,136))
    reject('row1_weight',lambda x:x['row_weights'].__setitem__(0,54))
    reject('row2_weight',lambda x:x['row_weights'].__setitem__(1,54))
    reject('diagonal_condition_count',lambda x:x['nodes'][2].__setitem__('count',45))
    reject('row_height_too_small',lambda x:x['rows'][0].__setitem__('height_bits',386))
    reject('unearned_PC_improvement',lambda x:x.__setitem__('frozen_PC',[464,5000]))
    reject('weakened_PC_but_same_cost',lambda x:x.__setitem__('frozen_PC',[462,5000]))
    reject('pigeonhole_single_bit',lambda x:x['families'][0].__setitem__('coefficient_bits',505748))
    reject('pigeonhole_two_bit',lambda x:x['families'][1].__setitem__('coefficient_bits',512676))
    reject('pigeonhole_46_bit',lambda x:x['families'][2].__setitem__('coefficient_bits',1290530))
    reject('47_independent_without_bound',lambda x:x['families'][2].__setitem__('dimension',47))
    reject('growth_cost',lambda x:x.__setitem__('value_cost_bits',6071))
    reject('wrong_entry',lambda x:x.__setitem__('frozen_entry_exponent',15000001))
    reject('unearned_target_cap',lambda x:x.__setitem__('target_cap',192))
    reject('matrix_memory_underestimate',lambda x:x.__setitem__('raw_int64_bytes',1024))
    reject('changed_source',lambda x:x.__setitem__('input_sha256','0'*64))
    x=deepcopy(original);x['rows'].reverse();x['nodes'].reverse();verify(x)
    y=deepcopy(original);y['families'][0]['coefficient_bits']+=1;verify(y)
    return {'status':'PASS_NEW_PARAMETER_MUTATIONS','rejected':len(rejected),'names':rejected,
            'valid_transformations_accepted':2,'not_a_test_of_uncomputed_kernel_coefficients':True}
