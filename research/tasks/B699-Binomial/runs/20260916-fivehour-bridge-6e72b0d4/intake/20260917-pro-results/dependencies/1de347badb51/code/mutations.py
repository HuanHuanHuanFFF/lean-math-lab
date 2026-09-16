from copy import deepcopy
from verify import verify,InvalidCertificate

def run(original):
 edits=[]
 def add(name,path,value):edits.append((name,path,value))
 add('miss_boundary_factor',['old_forced_line','load'],386)
 add('wrong_line_degree',['old_forced_line','degree'],389)
 add('wrong_factor',['old_forced_line','factor_in_NX'],[1,1,1])
 add('drop_a_full_prime_window',['template','weights',8],60)
 add('omit_extra_boundary_root',['template','mu',1],23)
 add('drop_vertical_order',['template','nu',3],19)
 add('increase_G_degree',['template','degree_G'],306)
 add('weaken_target_cap',['template','X_cap'],153)
 add('wrong_column_count',['template','columns'],23561)
 add('wrong_jet_count',['template','conditions'],23546)
 add('wrong_surplus',['template','surplus'],16)
 add('wrong_height_sum',['template','height_sum'],18640000)
 add('too_small_coefficient_box',['template','coefficient_bits'],1242693)
 add('remove_diagonal_weight',['template','points',2,'diagonal'],False)
 add('change_PC_margin',['transfer','margin_numerator'],94)
 add('unlicensed_ENTRY',['transfer','entry_bits'],14000002)
 add('bad_Kronecker_stride',['transfer','kronecker_stride'],305)
 add('bad_Kronecker_degree',['transfer','kronecker_degree'],46512)
 add('forget_factor_height',['transfer','factor_norm_bits'],1242694)
 add('drop_weighted_eval_cost',['transfer','row_value_extra_bits'],305)
 add('extend_graph_degree_without_check',['transfer','graph_degree_cap'],10000)
 add('extend_graph_height_without_check',['transfer','graph_norm_bits'],1600000)
 add('omit_quadratic_case',['quadratic_cases'],original['quadratic_cases'][:-1])
 add('change_exact_quadratic_coefficient',['quadratic_cases',0,'poly',0],[1,1])
 add('accept_forbidden_graph',['quadratic_cases',1,'survives'],not original['quadratic_cases'][1]['survives'])
 rejected=[];bad=[]
 for name,path,value in edits:
  c=deepcopy(original);d=c
  for p in path[:-1]:d=d[p]
  d[path[-1]]=value
  try:verify(c)
  except (InvalidCertificate,KeyError,TypeError,IndexError,ValueError):rejected.append(name)
  else:bad.append(name)
 if bad:raise AssertionError(('mutations unexpectedly accepted',bad))
 positive=deepcopy(original);positive['quadratic_cases'].reverse();verify(positive)
 positive2=deepcopy(original);positive2['display_note']='non-mathematical metadata';verify(positive2)
 return dict(status='PASS_NEW_MUTATION_TESTS',rejected_count=len(rejected),rejected=rejected,accepted_equivalent_inputs=2)
