#!/usr/bin/env python3
"""Mutate the fixed certificate, not mathematical inputs, and require rejection."""
from __future__ import annotations
import argparse, copy, hashlib, json
from pathlib import Path
from check import Reject, strict_json, validate

def mutations():
    def change_both(c):
        c['identities'][0]['lhs'][0]['numerator']+=1
        c['identities'][0]['rhs'][0]['numerator']+=1
    def zero_both(c):
        c['identities'][0]['lhs']=[]; c['identities'][0]['rhs']=[]
    def noncanonical(c):
        t=c['identities'][0]['lhs'][0];t['numerator']*=2;t['denominator']*=2
    return [
      ('one_coefficient_changed',lambda c:c['identities'][0]['lhs'][0].__setitem__('numerator',999)),
      ('both_sides_changed_together',change_both),
      ('tautological_zero_substitution',zero_both),
      ('negative_power',lambda c:c['identities'][0]['lhs'][0]['powers'].__setitem__(0,-1)),
      ('identity_deleted',lambda c:c['identities'].pop()),
      ('identity_label_duplicated',lambda c:c['identities'][1].__setitem__('id',c['identities'][0]['id'])),
      ('isolated_three_relaxed',lambda c:c['contract'].__setitem__('q3_source_min_exponent',1)),
      ('third_psi_recovery_deleted',lambda c:c['contract']['psi_recovery'].pop()),
      ('same_input_removed',lambda c:c['contract'].__setitem__('same_original_input',False)),
      ('global_i3_claim_inserted',lambda c:c['contract'].__setitem__('entire_i3_closed',True)),
      ('positive_constant_negated',lambda c:c['positive_polynomials'][3]['terms'][0].__setitem__('numerator',-621)),
      ('proof_hash_corrupted',lambda c:c.__setitem__('proof_sha256','0'*64)),
      ('unknown_variable',lambda c:c['identities'][0]['variables'].__setitem__(0,'other_n')),
      ('zero_denominator',lambda c:c['identities'][0]['lhs'][0].__setitem__('denominator',0)),
      ('duplicate_monomial',lambda c:c['identities'][0]['lhs'].append(copy.deepcopy(c['identities'][0]['lhs'][0]))),
      ('schema_changed',lambda c:c.__setitem__('schema','unverified-v0')),
      ('noncanonical_rational',noncanonical),
      ('full_power_condition_removed',lambda c:c['contract'].__setitem__('complete_prime_powers',False)),
    ]

def run(source: Path,out: Path):
    original=strict_json(source);validate(original); rows=[]
    for label,mutator in mutations():
        bad=copy.deepcopy(original);mutator(bad)
        data=(json.dumps(bad,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode()
        try: validate(bad)
        except (Reject,ValueError,KeyError,TypeError) as err:
            rows.append({'mutation':label,'status':'REJECTED','reason':str(err),
                         'mutated_input_sha256':hashlib.sha256(data).hexdigest()})
        else: raise AssertionError('Corrupted certificate accepted: '+label)
    report={'status':'PASS','mutations_tested':len(rows),'all_rejected':True,'results':rows,
      'meaning':'Only damaged-certificate rejection; not a search over NC3 inputs.'}
    out.write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps({'status':'PASS','mutations_tested':len(rows),'all_rejected':True}))
    return report

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('certificate',type=Path);p.add_argument('--out',type=Path,required=True)
    a=p.parse_args();run(a.certificate,a.out)
