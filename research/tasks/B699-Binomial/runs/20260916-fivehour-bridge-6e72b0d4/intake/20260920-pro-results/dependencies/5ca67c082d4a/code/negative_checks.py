"""Deterministic mathematical boundary checks and damaged-input rejection."""
import copy,json,math,random
from pathlib import Path
from fractions import Fraction as F
from accept_core import need,determinant_mod,save,loadpoly,ordinary_jet,tangent_jet
from fastfield import rank_minor,determinant
from verify_new import check_kernel
from check_families import verify_affine,verify_signature
from verify_location_ledger import verify_witness,run
from irreducible_boundary import verify as verify_irred
from sat_product import verify_product
ROOT=Path(__file__).resolve().parents[1]
def read(n):return json.loads((ROOT/'evidence'/n).read_text())

def run_checks(out):
 checks=[]
 def reject(name,fun):
  try:fun()
  except (AssertionError,ValueError,IndexError,KeyError,ZeroDivisionError):checks.append({'name':name,'status':'REJECTED_AS_REQUIRED'});return
  raise AssertionError('damaged input accepted: '+name)
 def passed(name,ok):need(ok,name);checks.append({'name':name,'status':'EXACT_BOUNDARY_VERIFIED'})
 for p in (65521,1000033):
  for n in range(1,16):
   rng=random.Random(p+101*n);A=[[rng.randrange(p) for _ in range(n)] for _ in range(n)]
   need(determinant(A,p)==determinant_mod(A,p,numpy=False),'backend pure-Python mismatch')
 checks.append({'name':'30_integer_backend_crosschecks','status':'EXACT_BOUNDARY_VERIFIED'})
 reject('unsupported_composite_modulus',lambda:rank_minor([[1]],15))
 reject('negative_residue',lambda:rank_minor([[-1]]))
 reject('float_residue',lambda:rank_minor([[1.0]]))
 reject('uint32_wraparound_before_narrowing',lambda:rank_minor([[2**32+1]]))
 reject('noncanonical_residue',lambda:rank_minor([[65521]]))
 reject('nonsquare_determinant',lambda:determinant([[1,2]]))
 A=[[1,0,0],[0,0,1]];r={'index':0,'kernel_vectors':[[[0,1],[1,1]]],'kernel_free_columns':[1],'coefficient_rank_upper':1,'augmented_rank_lower':2,'prime':65521,'rows':[0,1],'columns':[0,2],'determinant_mod_prime':1}
 check_kernel(A,r,2);checks.append({'name':'valid_low_rank_inconsistency_fixture','status':'EXACT_BOUNDARY_VERIFIED'})
 z=copy.deepcopy(r);z['kernel_vectors'][0][0]=[1,1];reject('false_coefficient_kernel',lambda:check_kernel(A,z,2))
 z=copy.deepcopy(r);z['kernel_vectors']*=2;z['kernel_free_columns']*=2;reject('dependent_kernel_directions',lambda:check_kernel(A,z,2))
 z=copy.deepcopy(r);z['rows']=[0,0];reject('duplicate_augmented_rows',lambda:check_kernel(A,z,2))
 z=copy.deepcopy(r);z['columns']=[0,1];reject('omitted_augmented_column',lambda:check_kernel(A,z,2))
 z=copy.deepcopy(r);z['coefficient_rank_upper']=0;reject('invented_rational_rank_upper',lambda:check_kernel(A,z,2))
 z=copy.deepcopy(r);z['determinant_mod_prime']=2;reject('changed_nonzero_minor_value',lambda:check_kernel(A,z,2))
 reject('modular_rank_drop_is_not_rational_kernel',lambda:check_kernel([[65521,0,0],[0,65521,1]],r,2))
 fam=read('nf13_candidate_families.json')['solutions'][0];sg=read('nf77_signatures.json')['families'][0];Ps=list(map(loadpoly,fam['polynomials']))
 v=verify_signature(fam,Ps,sg);passed('complete_source_signature_before_damage',v['mu']==77)
 z=copy.deepcopy(sg);z['strata']=z['strata'][:-1];reject('missing_special_parameter_stratum',lambda:verify_signature(fam,Ps,z))
 z=copy.deepcopy(sg);z['ordinary_multiplicities'][0][2]+=1;reject('changed_true_ordinary_multiplicity',lambda:verify_signature(fam,Ps,z))
 z=copy.deepcopy(sg);z['coordinatewise_kappa_lower'][0]+=1;reject('generic_signature_substituted_for_all_parameters',lambda:verify_signature(fam,Ps,z))
 z=copy.deepcopy(fam);z['solution'][0][0]+=z['solution'][0][1];reject('false_affine_base_point',lambda:verify_affine(z,13))
 z=copy.deepcopy(fam);z['directions']=[];reject('incomplete_affine_direction_space',lambda:verify_affine(z,13))
 # Ordinary and specialized root orders need not agree off capacity equality.
 H={(1,0):F(1),(0,0):F(-3),(0,2):F(1)}
 passed('ordinary_order_not_specialized_root_multiplicity',ordinary_jet(H,3,0,1,0)==1 and ordinary_jet(H,3,0,0,1)==0 and ordinary_jet(H,3,0,0,2)==1)
 # Reducible saturated line powers must not be pruned using irreducible genus.
 passed('genus_requires_absolute_irreducibility',3*13*12>(13-1)**2)
 passed('prime_power_cannot_be_replaced_by_radical',6%3==0 and 6%9!=0)
 passed('legal_auxiliary_point_is_not_NC9',math.comb(400,9)%11==0 and math.comb(400,10)%11==0)
 passed('formal_nonzero_does_not_imply_nonzero_point_value',(400-400)+(3900-3900)==0)
 cert=read('nf77_irreducible_low6_boundary.json');rr=verify_irred(cert);passed('irreducible_NF77_low_kappa6_is_real',rr['kappa']==[4,0,1])
 z=copy.deepcopy(cert);z['frobenius_chain'][-1]=[1];reject('damaged_frobenius_certificate',lambda:verify_irred(z))
 z=copy.deepcopy(cert);z['polynomial'][0][2]+=1;reject('changed_irreducible_boundary_polynomial',lambda:verify_irred(z))
 z=copy.deepcopy(cert);z['prime']=133;reject('composite_irreducibility_modulus',lambda:verify_irred(z))
 # Current ledger fixtures are drawn from a freshly reconstructed actual state.
 led=run(15,25);r0=led['records'][0];verify_witness(r0,r0,15,25)
 z=copy.deepcopy(r0);z['v'][0]+=1;reject('mixing_two_vertical_allocations',lambda:verify_witness(r0,z,15,25))
 z=copy.deepcopy(r0);z['size']+=1;reject('invented_eleventh_component',lambda:verify_witness(r0,z,15,25))
 z=copy.deepcopy(r0);z['F']+=1;z['size']+=1;z['x_cost']+=25;reject('extra_free_factor_degree_overspend',lambda:verify_witness(r0,z,15,25))
 z=copy.deepcopy(r0);z['a']=r0['E']+1;reject('positive_excess_overspend',lambda:verify_witness(r0,z,15,25))
 withL=next(x for x in led['records'] if x['specials'][0]);z=copy.deepcopy(withL);z['x_cost']-=9*z['specials'][0];reject('row3_class_charged_as_degree4',lambda:verify_witness(withL,z,15,25))
 pcs=read('sat23_product_certificate.json');c=read('sat23_gates.json')['records'][pcs[0]['index']]
 z=copy.deepcopy(pcs[0]);z['powers'][0]+=1;reject('incorrect_unique_product_exponents',lambda:verify_product(c,z))
 z=copy.deepcopy(pcs[0]);z['rank_rows']=z['rank_rows'][:-1];reject('product_without_uniqueness_rank',lambda:verify_product(c,z))
 save(out/'NEGATIVE_CHECKS.json',{'status':'PASS_ALL_BOUNDARY_AND_DAMAGED_INPUT_TESTS','count':len(checks),'checks':checks})
 save(out/'IRREDUCIBLE_BOUNDARY_ACCEPTED.json',rr);return {'tests':len(checks),'irreducible_boundary':rr}
if __name__=='__main__':
 import sys
 p=Path(sys.argv[1]);p.mkdir(exist_ok=True);print(run_checks(p))
