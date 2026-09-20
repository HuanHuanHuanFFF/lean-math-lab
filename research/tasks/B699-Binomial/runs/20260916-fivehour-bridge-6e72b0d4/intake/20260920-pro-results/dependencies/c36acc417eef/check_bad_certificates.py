#!/usr/bin/env python3
"""In-memory corruption tests; no certificate or source file is changed."""
from __future__ import annotations
import sys
sys.dont_write_bytecode = True
import json
import copy
from pathlib import Path
import check_primary
import check_independent

def mutations(c):
    out=[]
    def modified(name,fn):
        d=copy.deepcopy(c);fn(d);out.append((name,d))
    modified('incorrect_positive_coefficient',lambda d:d['polynomials']['linear_three_at_5'].__setitem__(0,65))
    modified('drop_complete_small_endpoint',lambda d:d['small_endpoints'].pop())
    modified('truncate_full_three_power',lambda d:d['diagnostics']['cross_3'].__setitem__('full_three_power',9))
    modified('lose_original_plus_two',lambda d:d.__setitem__('n_shift',0))
    modified('invent_totient_gap',lambda d:d['examples'][0].__setitem__('gap',51))
    modified('corrupt_exact_cyclotomic_value',lambda d:d['examples'][0].__setitem__('max_phi_at_2',d['examples'][0]['max_phi_at_2']+1))
    modified('erase_prime_power_contract',lambda d:d['contract'].__setitem__('distinct_full_odd_prime_powers',False))
    modified('erase_squarefree_contract',lambda d:d['contract'].__setitem__('D_squarefree_required',False))
    modified('unsupported_c_alpha_three_closure',lambda d:d['consumer_tests'][-1].__setitem__('closed',True))
    return out

def run():
    c=json.loads((Path(__file__).parent/'certificates/evidence.json').read_text(encoding='utf-8'))
    check_primary.check_cert(c);check_independent.check_cert(c)
    results=[]
    for name,d in mutations(c):
        flags=[]
        for fn in (check_primary.check_cert,check_independent.check_cert):
            try:fn(d)
            except (AssertionError,ValueError,KeyError,TypeError):flags.append(True)
            else:flags.append(False)
        if flags != [True,True]:
            raise AssertionError(f'bad certificate accepted: {name}, rejection={flags}')
        results.append({'mutation':name,'primary_rejected':flags[0],'independent_rejected':flags[1]})
    return {'status':'PASS_BAD_CERTIFICATE_REJECTION','cases':results,
            'scope':'finite certificate/contract corruption tests, not external proof review'}
if __name__=='__main__':print(json.dumps(run(),ensure_ascii=False,sort_keys=True))
