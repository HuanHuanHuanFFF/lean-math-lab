#!/usr/bin/env python3
"""Reject damaged NEW certificates; does not replay historical evidence."""
import argparse,copy,json,math
from pathlib import Path
from check_certificate import verify_modular,verify_bottom

def run(inp,out):
    m=json.loads((inp/'modular_certificate.json').read_text());b=json.loads((inp/'finite_bottom.json').read_text())
    tests=[]
    def reject(name,source,mutate,checker):
        d=copy.deepcopy(source);mutate(d)
        try: checker(d)
        except (ValueError,KeyError,IndexError,TypeError):tests.append(name);return
        raise AssertionError('damaged certificate accepted: '+name)
    reject('missing_sign',m,lambda d:d['groups'].pop(),verify_modular)
    reject('incorrect_period',m,lambda d:d['groups'][0].update(period=18),verify_modular)
    reject('narrowed_exponent_domain',m,lambda d:d['groups'][0].update(allowed_mod6=[2]),verify_modular)
    reject('coverage_hole',m,lambda d:d['groups'][0]['cover'].pop(),verify_modular)
    reject('duplicate_state',m,lambda d:d['groups'][0]['cover'].append(copy.deepcopy(d['groups'][0]['cover'][0])),verify_modular)
    reject('missing_modular_witness',m,lambda d:d['groups'][1]['rows'].pop(),verify_modular)
    reject('illegal_rho',m,lambda d:d['groups'][0]['rows'][0].update(rho=3),verify_modular)
    reject('fake_residue_image',m,lambda d:d['groups'][0]['rows'][0]['nonzero_values'].append(0),verify_modular)
    reject('polynomial_root_admitted',m,lambda d:d['groups'][0]['rows'][0].update(x_residue=1),verify_modular)
    reject('wrong_cover_reference',m,lambda d:d['groups'][0]['cover'][0].update(witness=3),verify_modular)
    reject('wrong_root_count',m,lambda d:d.update(core_root_evaluations=1),verify_modular)
    reject('small_base_hole',b,lambda d:d['small_even_bases'].pop(),verify_bottom)
    reject('wrong_small_gcd',b,lambda d:d['small_even_bases'][0].update(odd_gcd=1),verify_bottom)
    reject('missing_prime3_exception',b,lambda d:d['prime_three_edge'].pop(),verify_bottom)
    reject('alternation_bottom_hole',b,lambda d:d['odd_alternation_bottom'].pop(),verify_bottom)
    # Explicit false strengthenings, with nonvacuous exact counterexamples.
    assert math.comb(28,3)%27!=0 and math.comb(28,5)%27==0
    assert (9*8)%27!=0 and (3*9*8)%27==0
    assert math.gcd(math.comb(56,3),math.comb(56,11))==840
    wrong={'uncapped_normalized_divisor':{'n':28,'j':5,'E1':27,'choose3':math.comb(28,3)},
        'replace_27_by_9':{'n':28,'j':9,'j_mod27':9,'n_mod27':1,'j_mod9':0,'n_mod9':1},
        'normalized_divisor_equals_actual_gcd':{'n':56,'j':11,'W':21,'actual_gcd':840}}
    data={'status':'PASS_BAD_INPUTS','damaged_certificates_rejected':len(tests),'tests':tests,'false_strengthening_examples':wrong}
    out.mkdir(parents=True,exist_ok=True);(out/'bad_inputs.json').write_text(json.dumps(data,sort_keys=True,indent=2)+'\n');print(json.dumps({'status':data['status'],'damaged_certificates_rejected':len(tests),'false_strengthenings':len(wrong)},sort_keys=True))

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--input',type=Path,required=True);p.add_argument('--out',type=Path,required=True);a=p.parse_args();run(a.input,a.out)
