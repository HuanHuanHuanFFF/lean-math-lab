"""Semantic negative tests for the NEW parameter/identity certificate."""
from copy import deepcopy
from verify import verify


def run(original):
    tests=[]
    def check(name,mutate):
        d=deepcopy(original);mutate(d)
        try:verify(d)
        except (ValueError,ArithmeticError,KeyError,TypeError,IndexError):
            tests.append(name);return
        raise AssertionError('accepted damaged certificate: '+name)
    for key,val in [('entry_bits',13000000),('factor_norm_bits',1400000),('content_norm_bits',1500000),
                    ('joint_constant_bits',0),('joint_n_power',27),('joint_J_power',13),
                    ('lower_J_power',[3,2]),('runge_threshold_coefficient',64),
                    ('runge_threshold_norm_power',9),('approx_error_constant',100),
                    ('denominator_H_power',3),('remainder_H_power',8),
                    ('source_value_bits',900),('source_degree_cap',306),('X_degree_cap',153)]:
        check('wrong_'+key,lambda d,k=key,v=val:d['constants'].__setitem__(k,v))
    check('omit_quartic_seed',lambda d:d['quartic_graph_table'].pop())
    check('repeat_quartic_seed',lambda d:d['quartic_graph_table'].append(deepcopy(d['quartic_graph_table'][0])))
    check('wrong_interpolating_value',lambda d:d['quartic_graph_table'][0]['coeffs'][0].__setitem__(0,1))
    check('false_sixth_hit',lambda d:d['quartic_graph_table'][0].__setitem__('hits8',[0,1]))
    check('quartic_denominator_wrong_sign',lambda d:d['canonical_integer_tuples']['case0']['D'][0].__setitem__(0,-1))
    check('quartic_constant_term_wrong_sign',lambda d:d['canonical_integer_tuples']['case1']['W'][0].__setitem__(0,1))
    check('remove_resonant_term',lambda d:d['canonical_integer_tuples']['case0']['W'].pop())
    check('false_boundary_prime',lambda d:d['boundary_degree4'].__setitem__('common_prime',13))
    check('false_boundary_discriminant',lambda d:d['unresolved_test_curve']['discriminant'].__setitem__(0,2))
    check('drop_X_term_from_limitation',lambda d:d['unresolved_test_curve'].__setitem__('B',[0]))
    # Two genuinely equivalent encodings.
    d=deepcopy(original);d['quartic_graph_table'].reverse();verify(d)
    d=deepcopy(original)
    for cc in d['canonical_integer_tuples'].values():
        for name in ['D','U','V','W']:
            for term in cc[name]:term[0]=-term[0]
    verify(d)
    return {'status':'PASS_NEW_MUTATIONS','rejected':len(tests),'names':tests,
            'equivalent_accepted':2,'equivalent_cases':['quartic table order','all four clearing coefficients negated']}
