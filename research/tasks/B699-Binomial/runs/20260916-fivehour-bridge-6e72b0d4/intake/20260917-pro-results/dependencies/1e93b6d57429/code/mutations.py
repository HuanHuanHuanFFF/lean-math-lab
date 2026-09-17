from pathlib import Path
import copy,json,time
from check import verify
BASE=Path(__file__).resolve().parents[1]
def main():
 start=time.monotonic();orig=json.loads((BASE/'evidence/new-certificate.json').read_text());tests=[]
 def test(name,f):
  c=copy.deepcopy(orig);f(c)
  try:verify(c,write=False)
  except (AssertionError,ValueError,KeyError,ZeroDivisionError):tests.append({'name':name,'rejected':True});return
  raise AssertionError('Bad certificate accepted: '+name)
 test('wrong_source_target',lambda c:c.update(target=4))
 test('wrong_congruence_domain',lambda c:c.update(H02_residues_mod72=[18]))
 test('wrong_large_row_threshold',lambda c:c.update(large_row_threshold=4096))
 test('native4_extra_gcd_hypothesis',lambda c:c['four_native_constants'].update(gcd_required=True))
 test('missing_auxiliary_Q_positive_coefficient',lambda c:c['auxiliary_Q_positivity']['shift_j6_kj'].pop())
 for name in orig['polynomials']:
  test(name+'_coefficient',lambda c,n=name:c['polynomials'][n]['coefficients'][0].__setitem__(2,c['polynomials'][n]['coefficients'][0][2]+1))
  test(name+'_row_weight',lambda c,n=name:c['polynomials'][n]['weights'].__setitem__(0,5))
  test(name+'_omit_taylor_node',lambda c,n=name:c['polynomials'][n]['orders'].pop())
  test(name+'_fake_positivity',lambda c,n=name:c['polynomials'][n]['shift_j6_kj'][0].__setitem__(2,-1))
  test(name+'_underpay_small_part',lambda c,n=name:c['polynomials'][n].update(C=c['polynomials'][n]['C']//5))
  test(name+'_lower_height',lambda c,n=name:c['polynomials'][n].update(cap=c['polynomials'][n]['cap']-1))
 test('extend_r4_kernel_to_endpoints',lambda c:c['polynomials']['R4_INNER']['allowed'].__setitem__(2,[0,1,2,3,4]))
 test('omit_low_candidate',lambda c:c['finite_domains']['R4_INNER']['low'].pop())
 test('omit_high_candidate',lambda c:c['finite_domains']['R4_INNER']['high'].pop())
 test('omit_CRT_template',lambda c:c['finite_domains']['R4_INNER']['templates'].pop())
 test('move_terminal_to_QIG',lambda c:c['finite_domains']['R4_INNER']['qig_accepted'].append(18))
 test('omit_terminal_row',lambda c:c['terminal_rows'].pop())
 test('fake_empty_intersection',lambda c:c['terminal_rows'][3]['trace'].__setitem__(0,{'block':[0,7,1,7],'states':[]}))
 test('incomplete_factorization',lambda c:c['terminal_rows'][0]['factorizations'][0].pop())
 # The exact exponent of the endpoint prime 5 may not be lowered.
 ri,fi,ki=next((a,b,d) for a,row in enumerate(orig['terminal_rows']) for b,f in enumerate(row['factorizations']) for d,(p,e) in enumerate(f) if p==5 and e>=2)
 test('drop_one_complete_endpoint5_layer',lambda c:c['terminal_rows'][ri]['factorizations'][fi][ki].__setitem__(1,c['terminal_rows'][ri]['factorizations'][fi][ki][1]-1))
 res={'status':'PASS_MUTATION_REJECTIONS','tests':tests,'count':len(tests),'seconds':time.monotonic()-start}
 (BASE/'outputs/mutations.json').write_text(json.dumps(res,sort_keys=True,indent=2)+'\n');print(json.dumps({'status':res['status'],'count':len(tests),'seconds':res['seconds']}))
if __name__=='__main__':main()
