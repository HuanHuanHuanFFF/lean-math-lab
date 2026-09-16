from __future__ import annotations
import argparse,copy,json
from pathlib import Path
from verify import validate_kernel,validate_classes,validate_domain,check_interval,validate_family


def run(out:Path)->dict:
    get=lambda f:json.loads((out/f).read_text())
    kernel=get('kernel.json');domain=get('domain.json');classes=get('classes.json');family=get('family.json')
    tests=[]
    def reject(name,base,change,checker):
        x=copy.deepcopy(base);change(x)
        try:checker(x)
        except (AssertionError,ValueError,KeyError,IndexError,StopIteration):
            tests.append(name);return
        raise AssertionError('damaged evidence accepted: '+name)
    reject('alter_coefficient',kernel,lambda z:z['poly'][0].__setitem__(2,z['poly'][0][2]+1),validate_kernel)
    reject('claim_degree_15',kernel,lambda z:z.__setitem__('degree',15),validate_kernel)
    reject('overcancel_g_to_order3',kernel,lambda z:z.__setitem__('origin_order',3),validate_kernel)
    reject('omit_native_sixth_source',kernel,lambda z:z['weights'].pop('5'),validate_kernel)
    reject('weaken_weight_without_redoing_degree_gap',kernel,lambda z:z['weights'].__setitem__('1',7),validate_kernel)
    reject('wrong_target_NC5',kernel,lambda z:z.__setitem__('target',5),validate_kernel)
    reject('silently_add_position5',kernel,lambda z:z.__setitem__('H',[0,2,5]),validate_kernel)
    reject('underpay_full5_cost',kernel,lambda z:z['cost_exponents'].__setitem__('5',1),validate_kernel)
    reject('underpay_full3_cost',kernel,lambda z:z['cost_exponents'].__setitem__('3',3),validate_kernel)
    reject('too_small_height',kernel,lambda z:z.__setitem__('exponent',70),validate_kernel)
    reject('negative_positivity_witness',kernel,lambda z:z['shift7'][0].__setitem__(2,-1),validate_kernel)
    reject('wrong_norm',kernel,lambda z:z.__setitem__('norm',1),validate_kernel)
    reject('drop_high_candidate',domain,lambda z:z['high'].pop(),validate_domain)
    reject('drop_low_candidate',domain,lambda z:z['low'].pop(),validate_domain)
    reject('pretend_terminal_empty',domain,lambda z:z.__setitem__('terminal',[]),validate_domain)
    reject('lower_enumeration_exponent',domain,lambda z:z.__setitem__('exponent',70),validate_domain)
    reject('add_uncovered_1280_class',classes,lambda z:z['classes'].append(1280),validate_classes)
    reject('erase_residual_D6_classes',classes,lambda z:z.__setitem__('remaining_D6',[]),validate_classes)
    term=domain['intervals'][0]
    reject('ineligible_prime5',term,lambda z:z['intervals'][0].__setitem__(2,5),check_interval)
    reject('composite_witness',term,lambda z:z['intervals'][0].__setitem__(2,8748),check_interval)
    reject('miss_first_legal_j',term,lambda z:z['intervals'][0].__setitem__(0,8),check_interval)
    reject('miss_last_legal_j',term,lambda z:z['intervals'][0].__setitem__(1,4374),check_interval)
    reject('invalid_carry_layer',term,lambda z:z['intervals'][0].__setitem__(3,1),check_interval)
    reject('mutate_infinite_family_seed',family,lambda z:z.__setitem__('sample_n',z['sample_n']+1),validate_family)
    return dict(status='PASS',rejected_count=len(tests),rejected=tests,
                theorem_scope_not_expanded=True)

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True)
    out=ap.parse_args().out;r=run(out)
    (out/'mutations.json').write_text(json.dumps(r,sort_keys=True,indent=2)+'\n')
    print(json.dumps(r,ensure_ascii=False))
