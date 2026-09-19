#!/usr/bin/env python3
"""Checks mathematical rejection, not merely a hash mismatch."""
from copy import deepcopy
from pathlib import Path
import json
from verify import check_certificate, Rejected
ROOT=Path(__file__).resolve().parents[1]
base=json.loads((ROOT/'outputs/certificate.json').read_text())
mutations=[]
def add(name, edit):
    v=deepcopy(base);edit(v);mutations.append((name,v))
add('changed_polynomial_coefficient', lambda v:v['polynomial_states'][0].__setitem__('F',v['polynomial_states'][0]['F']+2))
add('missing_polynomial_state', lambda v:v['polynomial_states'].pop())
add('duplicated_polynomial_state',lambda v:v['polynomial_states'].__setitem__(1,deepcopy(v['polynomial_states'][0])))
add('composite_original_witness',lambda v:v['small_original_pairs'][0].__setitem__('p',9))
add('wrong_prime_original_witness',lambda v:v['small_original_pairs'][0].__setitem__('p',3))
add('missing_original_pair',lambda v:v['small_original_pairs'].pop())
add('false_window_rejection',lambda v:v['small_original_pairs'][0].__setitem__('rejection','u_not_1'))
out=[]
for name,v in mutations:
    try:
        check_certificate(v)
    except Rejected as exc:
        out.append({'mutation':name,'result':'REJECTED','reason':str(exc)})
    else:
        raise RuntimeError('Corrupt certificate was accepted: '+name)
result={'tests':len(out),'rejected':len(out),'cases':out,'status':'PASS'}
(ROOT/'outputs/corruption.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,ensure_ascii=False))
