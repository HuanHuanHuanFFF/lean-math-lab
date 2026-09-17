#!/usr/bin/env python3
"""Tamper tests for this round's finite certificate, not a proof of soundness."""
from pathlib import Path
import copy,json,time
from check import verify
ROOT=Path(__file__).resolve().parents[1]

def run():
    c=json.loads((ROOT/'evidence/new-certificate.json').read_text());tests=[]
    def add(name,f):
        d=copy.deepcopy(c);f(d);tests.append((name,d))
    add('change_polynomial_coefficient',lambda d:d['F'][0].__setitem__(-1,d['F'][0][-1]+1))
    add('drop_polynomial_term',lambda d:d['F'].pop())
    add('overcancel_g_power',lambda d:d.__setitem__('origin_order',4))
    add('drop_origin_term',lambda d:d['divided_origin'].pop())
    add('omit_Taylor_obligation',lambda d:d['taylor_zeros'].pop())
    add('change_Taylor_position',lambda d:d['taylor_zeros'][0].__setitem__(1,1))
    add('fake_zero_coefficient',lambda d:d['taylor_zeros'][0].__setitem__(-1,1))
    add('negate_positive_constant',lambda d:d['legal_positive'][0].__setitem__(-1,-1))
    add('omit_positive_term',lambda d:d['legal_positive'].pop())
    add('alter_upper_identity',lambda d:d.__setitem__('upper_identity',[[0,0,1]]))
    add('wrong_g3_tail',lambda d:d['tail_54D_25n4'][0].__setitem__(-1,0))
    add('wrong_small_cost_tail',lambda d:d['tail_2D_n4'][0].__setitem__(-1,0))
    add('wrong_n90_tail',lambda d:d['tail_10D_9n4'].pop())
    add('omit_cost_class',lambda d:d['costs'].pop())
    add('erase_endpoint5_cost',lambda d:d['costs'][0].__setitem__('A',1))
    add('change_target_i',lambda d:d['costs'][0].__setitem__('i',6))
    add('fake_infinite_family_period',lambda d:d['family_periods']['25'].__setitem__('13^60',2))
    add('wrong_schema',lambda d:d.__setitem__('schema','weak-radical-only'))
    accepted=[]
    for name,d in tests:
        try:verify(d)
        except (AssertionError,ValueError,KeyError,TypeError,IndexError):continue
        accepted.append(name)
    if accepted:raise AssertionError(accepted)
    return {'status':'PASS_TAMPER_REJECTION','rejected':len(tests),'names':[x[0] for x in tests],
            'scope':'Finite data integrity/obligation checks; not a Lean or mathematical soundness audit.'}
if __name__=='__main__':
    t=time.monotonic();out=run();out['seconds']=time.monotonic()-t
    (ROOT/'evidence/mutations.json').write_text(json.dumps(out,sort_keys=True,indent=2)+'\n');print(json.dumps(out))
