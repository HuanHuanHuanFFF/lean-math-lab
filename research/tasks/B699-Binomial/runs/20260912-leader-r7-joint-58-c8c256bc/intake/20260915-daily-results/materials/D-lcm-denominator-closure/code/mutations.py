#!/usr/bin/env python3
"""Semantic corruption checks. These are regression tests, not formal verification."""
import argparse,copy,json,time
from pathlib import Path
import verify as V

def main(cert,out):
    start=time.perf_counter();original=json.loads(cert.read_text());results=[]
    def test(name,mutate):
        x=copy.deepcopy(original);mutate(x)
        try: V.check_certificate(x)
        except (ValueError,ArithmeticError,TypeError,KeyError,IndexError) as e:
            results.append({'case':name,'result':'REJECTED','reason':str(e)[:180]})
        else:raise ArithmeticError('MUTATION NOT REJECTED: '+name)
    test('schema_changed',lambda x:x.update(schema=2))
    test('boolean_schema',lambda x:x.update(schema=True))
    test('claim_all_R7',lambda x:x.update(theorem='R7_GLOBALLY_CLOSED'))
    test('erase_prime_endpoint',lambda x:x.update(small_part='remove all p<=m powers'))
    test('drop_target_i8',lambda x:x['targets'].pop())
    test('duplicate_target',lambda x:x['targets'].__setitem__(1,copy.deepcopy(x['targets'][0])))
    test('change_LCM',lambda x:x['targets'][0].update(L=24))
    test('drop_free_template',lambda x:x['targets'][0]['templates'].pop())
    test('duplicate_free_template',lambda x:x['targets'][0]['templates'].append(copy.deepcopy(x['targets'][0]['templates'][0])))
    def alter_template(x,index,value):x['targets'][0]['templates'][0][index]=value
    test('alpha_one',lambda x:alter_template(x,0,1))
    test('alpha_not_LCM_divisor',lambda x:alter_template(x,0,5))
    test('beta_zero',lambda x:alter_template(x,1,0))
    test('beta_outside_half',lambda x:alter_template(x,1,100))
    test('boolean_alpha',lambda x:alter_template(x,0,True))
    test('zero_row_product',lambda x:alter_template(x,2,0))
    test('row_outside_window',lambda x:alter_template(x,2,4))
    test('wrong_small_allowance',lambda x:alter_template(x,3,17))
    idx=next(i for i,t in enumerate(original['targets'][1]['templates']) if t[3]%5==0)
    test('omit_isolated_five_cost',lambda x:x['targets'][1]['templates'][idx].__setitem__(3,x['targets'][1]['templates'][idx][3]//5))
    loc=next((ti,ri,fi) for ti,t in enumerate(original['targets']) for ri,r in enumerate(t['templates']) for fi,f in enumerate(r[4]) if f[1]>=2)
    def factor_change(x,op):
        ti,ri,fi=loc;fs=x['targets'][ti]['templates'][ri][4];op(fs,fi)
    test('composite_factor_base',lambda x:factor_change(x,lambda fs,i:fs.__setitem__(i,[fs[i][0]**2,fs[i][1]])))
    test('drop_one_full_exponent',lambda x:factor_change(x,lambda fs,i:fs[i].__setitem__(1,fs[i][1]-1)))
    test('raise_exponent',lambda x:factor_change(x,lambda fs,i:fs[i].__setitem__(1,fs[i][1]+1)))
    test('zero_factor_exponent',lambda x:factor_change(x,lambda fs,i:fs[i].__setitem__(1,0)))
    test('negative_factor_exponent',lambda x:factor_change(x,lambda fs,i:fs[i].__setitem__(1,-1)))
    test('unbounded_bad_exponent',lambda x:factor_change(x,lambda fs,i:fs[i].__setitem__(1,1000000)))
    test('duplicate_prime_factor',lambda x:factor_change(x,lambda fs,i:fs.append(copy.deepcopy(fs[i]))))
    test('omit_complete_factor',lambda x:factor_change(x,lambda fs,i:fs.pop(i)))
    test('omit_actual_candidate',lambda x:x['targets'][0]['rejections'].pop())
    test('duplicate_actual_candidate',lambda x:x['targets'][0]['rejections'].append(copy.deepcopy(x['targets'][0]['rejections'][0])))
    test('insert_illegal_candidate',lambda x:x['targets'][0]['rejections'].append([1,12,5,2]))
    test('alter_candidate_n',lambda x:x['targets'][0]['rejections'][0].__setitem__(0,37))
    test('alter_reduced_beta',lambda x:x['targets'][0]['rejections'][0].__setitem__(2,6))
    test('accept_satisfied_first_norm',lambda x:x['targets'][0]['rejections'][0].__setitem__(3,1))
    test('omit_legality_statistics',lambda x:x['targets'][0]['statistics'].update(unique_candidates=0))
    test('silently_increase_height',lambda x:x['targets'][0]['statistics'].update(absolute_divisor_height=37))
    test('forge_rejection_histogram',lambda x:x['targets'][0].update(rejection_row_histogram={'1':1}))
    data={'status':'PASS_SEMANTIC_MUTATION_REJECTIONS','cases':results,'total':len(results),
          'scope':'same-author implementation tests; not proof that the verifier is bug-free'}
    out.mkdir(parents=True,exist_ok=True);(out/'mutations.json').write_text(json.dumps(data,sort_keys=True,indent=2)+'\n')
    print(json.dumps({'status':data['status'],'cases':len(results),'seconds':time.perf_counter()-start}))
if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--certificate',type=Path,required=True);p.add_argument('--out',type=Path,required=True);a=p.parse_args();main(a.certificate,a.out)
