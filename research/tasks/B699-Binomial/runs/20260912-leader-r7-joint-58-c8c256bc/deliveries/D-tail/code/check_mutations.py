"""Make corrupted copies; every named corruption must be rejected."""
import copy,json
from pathlib import Path
from check_core import check_arithmetic,check_outer,check_weak
ROOT=Path(__file__).resolve().parents[1]
load=lambda n:json.loads((ROOT/'evidence'/n).read_text())
a=load('arithmetic-certificate.json');o=load('outer-nine-certificate.json');w=load('weak-projection-models.json')
tests=[]
def add(name,obj,fn,edit):
    b=copy.deepcopy(obj);edit(b);tests.append((name,b,fn))
add('omit_negative_z_case',a,check_arithmetic,lambda x:x['centre_negative_cases'].pop())
add('invent_F0_3',a,check_arithmetic,lambda x:x['centre_negative_cases'][0]['possible_F0'].append(3))
add('omit_middle9_case',a,check_arithmetic,lambda x:x['middle_nine_H_g_R'].pop())
add('wrong_middle_g',a,check_arithmetic,lambda x:x['middle_nine_H_g_R'][1].update(g=3))
add('wrong_dyadic_value',a,check_arithmetic,lambda x:x['middle_nine_dyadic_table'][0].update(one_plus_9beta2_mod4=0))
add('wrong_endpoint_constant',a,check_arithmetic,lambda x:x.update(endpoint_uniform_constant=53))
add('wrong_center_constant',a,check_arithmetic,lambda x:x.update(centre_uniform_constants=[26,4]))
add('wrong_norm_gap_constant',a,check_arithmetic,lambda x:x['norm_gap_constants'].update(contradiction_left=127))
add('claim_i3_closed',a,check_arithmetic,lambda x:x.update(new_full_index_closures=[3]))
add('drop_outer_family',o,check_outer,lambda x:x['rows'].pop())
add('duplicate_outer_family',o,check_outer,lambda x:x['rows'].append(copy.deepcopy(x['rows'][0])))
add('wrong_oddpart',o,check_outer,lambda x:x['rows'][0].update(oddpart_n=3))
add('omit_mod81_class',o,check_outer,lambda x:x['rows'][0].update(v_mod54=[]))
add('shorten_period',o,check_outer,lambda x:x['rows'][1].update(period=54))
add('wrong_order',o,check_outer,lambda x:x['rows'][0].update(order_2=3))
add('omit_lift_cell',o,check_outer,lambda x:x['rows'][1]['cells'].pop())
add('change_discriminant',o,check_outer,lambda x:x['rows'][0]['cells'][0].update(discriminant_mod_p=0))
add('composite_modulus',o,check_outer,lambda x:x['rows'][0].update(p=75))
add('wrong_cell_count',o,check_outer,lambda x:x.update(cell_count=11))
add('change_quantifier_to_cutoff',o,check_outer,lambda x:x.update(exponent_quantifier='v<=270'))
add('missing_weak_input',w,check_weak,lambda x:x.pop())
add('truncate_C_power',w,check_weak,lambda x:x[0]['C'].__setitem__(0,5))
add('change_U',w,check_weak,lambda x:x[0].update(U=143))
add('change_R',w,check_weak,lambda x:x[0].update(R=1))
rejected=[]
for name,b,fn in tests:
    try:fn(b)
    except (ValueError,AssertionError,KeyError,IndexError,ZeroDivisionError):rejected.append(name)
    else:raise RuntimeError('BAD CERTIFICATE ACCEPTED: '+name)
print(json.dumps({'status':'PASS','mutation_types_rejected':len(rejected),'names':rejected},ensure_ascii=False,sort_keys=True))
