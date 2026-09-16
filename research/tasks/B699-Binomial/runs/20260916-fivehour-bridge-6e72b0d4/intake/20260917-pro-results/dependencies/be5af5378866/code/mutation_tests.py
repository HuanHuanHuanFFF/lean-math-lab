from copy import deepcopy
from verify_new import check,make_certificate

def run():
 base=make_certificate();tests=[
 ('origin14','origin',14),('degree79','degree',79),('row1_order10','joint_orders',[13,10,8]),
 ('row2_order9','joint_orders',[13,9,9]),('overlap8','overlap_power_of_two',8),
 ('raw_product_gcd','H2_divisor','1'),('n_power25','n_power',25),
 ('J_power13','J_power',13),('too_small_constant','constant_bits',154000),
 ('inherited_wrong_coefficient','coefficient_bits',153000),
 ('source_orders_omit_q2','source_orders',[13,9,0]),('false56','fixed_frontier',56),
 ('wrong_frozen_sha','frozen_sha256','0'*64)]
 rejected=[]
 for name,key,val in tests:
  d=deepcopy(base);d[key]=val
  try:check(d)
  except (ValueError,KeyError,AssertionError):rejected.append(name)
  else:raise AssertionError('accepted mutation '+name)
 d=deepcopy(base);d['d6_height']['H2']=49
 try:check(d)
 except ValueError:rejected.append('wrong_H2_power48')
 else:raise AssertionError('accepted exponent mutation')
 # Metadata / key order is not mathematical content.
 d=dict(reversed(list(base.items())));d['comment']='Equivalent input order.'
 assert check(d)['status']=='PASS_NEW_JOINT_WINDOW_FINITE_OBLIGATIONS'
 return {'status':'PASS_NEW_PARAMETER_MUTATIONS','rejected':rejected,'rejected_count':len(rejected),'equivalent_inputs_accepted':1,'scope':'Finite parameter/identity check robustness; not an external proof audit.'}
if __name__=='__main__':
 import json
 print(json.dumps(run(),indent=2))
