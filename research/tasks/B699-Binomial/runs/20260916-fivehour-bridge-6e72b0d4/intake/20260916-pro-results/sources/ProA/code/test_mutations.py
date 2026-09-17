#!/usr/bin/env python3
"""Semantic corruption tests. This is not external independent review."""
from __future__ import annotations
import argparse,copy,json,time
from pathlib import Path
from verify_certificate import ROOT,build_data,verify

def run():
    started=time.perf_counter();base=json.loads((ROOT/'evidence/two_kernel_certificate.json').read_text());cache=build_data()
    cases=[]
    def add(name,fn): cases.append((name,fn))
    add('changed_source_row',lambda c:c['source_rows'].__setitem__(0,1))
    add('inflated_row_weight',lambda c:c['row_weights'].__setitem__(0,19))
    add('removed_exact_rank_lift',lambda c:c.__setitem__('exact_left_relations',c['exact_left_relations'][:1]))
    add('corrupted_integer_relation',lambda c:c['exact_left_relations'][0].__setitem__(0,c['exact_left_relations'][0][0]+1))
    add('dependent_integer_relations',lambda c:c['exact_left_relations'].__setitem__(1,c['exact_left_relations'][0][:]))
    add('repeated_minor_row',lambda c:c['independent_rows'].__setitem__(0,c['independent_rows'][1]))
    add('wrong_rank_determinant',lambda c:c.__setitem__('minor_determinant_mod_p',(c['minor_determinant_mod_p']+1)%c['auxiliary_prime']))
    add('corrupted_modular_kernel',lambda c:c['normalized_modular_kernels'][0].__setitem__(0,(c['normalized_modular_kernels'][0][0]+1)%c['auxiliary_prime']))
    add('wrong_N_zero_restriction',lambda c:c['diagonal_restrictions_mod_p'][0].__setitem__(0,(c['diagonal_restrictions_mod_p'][0][0]+1)%c['auxiliary_prime']))
    add('wrong_padded_resultant',lambda c:c.__setitem__('sylvester_determinant_mod_p',(c['sylvester_determinant_mod_p']+1)%c['auxiliary_prime']))
    add('unjustified_height',lambda c:c.__setitem__('uniform_H013_height_exponent',1000))
    add('composite_auxiliary_modulus',lambda c:c.__setitem__('auxiliary_prime',1000005))
    rejected=[]
    for name,mutate in cases:
        c=copy.deepcopy(base);mutate(c)
        try: verify(c,cache)
        except ValueError as e: rejected.append({'name':name,'reason':str(e)})
        else: raise AssertionError('corrupt certificate accepted: '+name)
    accepted=[]
    c=copy.deepcopy(base);c['exact_left_relations'][0]=[-7*x for x in c['exact_left_relations'][0]];verify(c,cache);accepted.append('multiply_exact_relation_by_minus_seven')
    c=copy.deepcopy(base);c['exact_left_relations'].reverse();verify(c,cache);accepted.append('swap_exact_relations')
    return {'status':'PASS_SEMANTIC_MUTATIONS','rejected':rejected,'accepted_equivalences':accepted,'rejected_count':len(rejected),'seconds':time.perf_counter()-started}

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path);ar=ap.parse_args();v=run()
    if ar.out:ar.out.parent.mkdir(parents=True,exist_ok=True);ar.out.write_text(json.dumps(v,indent=2)+'\n')
    print(json.dumps(v,indent=2))
