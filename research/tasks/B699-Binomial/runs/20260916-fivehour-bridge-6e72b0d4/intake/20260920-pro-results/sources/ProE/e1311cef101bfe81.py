#!/usr/bin/env python3
"""Adversarial mutations of the finite certificate, all checked in memory."""
import copy,json,sys
from pathlib import Path
sys.dont_write_bytecode=True
from verify_exact import verify
from verify_independent import verify as independently_verify
ROOT=Path(__file__).resolve().parents[1]
cert=json.loads((ROOT/'certificates/ORDER5.json').read_text())
mutations=[]
def add(name,fn):
    z=copy.deepcopy(cert);fn(z);mutations.append((name,z))
add('changed_norm_coefficient',lambda z:z['algebra']['norm_lhs'][0].__setitem__(1,z['algebra']['norm_lhs'][0][1]+1))
add('missing_positivity_term',lambda z:z['algebra']['positive_shift_polynomials'][0].pop(0))
add('dropped_negative_x_endpoint',lambda z:z['principal_endpoint'].pop(0))
add('wrong_quarter_bound',lambda z:z.__setitem__('quarter_denominator',3))
add('dropped_conductor_11',lambda z:next(t for t in z['order_samples'] if t['v']==242).__setitem__('conductor',1))
add('wrong_d3_unit_index',lambda z:next(t for t in z['order_samples'] if t['v']==12).__setitem__('unit_index',1))
add('unsafe_mod5_residue_added',lambda z:z['safe_mod5_cases'].append([1,1,0]))
add('lost_true_isolated_3',lambda z:z['weak_shell'].__setitem__('true_mu',1))
out=[]
for name,z in mutations:
    rejected=[]
    for fn in (verify,independently_verify):
        try:fn(z)
        except (ValueError,KeyError,TypeError,AssertionError):rejected.append(True)
        else:rejected.append(False)
    if rejected!=[True,True]:raise SystemExit('FAIL: '+name+' '+repr(rejected))
    out.append({'mutation':name,'primary_rejected':True,'secondary_rejected':True})
print(json.dumps({'status':'PASS_BAD_CERTIFICATE_REJECTION','cases':out},sort_keys=True,indent=2))
