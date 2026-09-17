#!/usr/bin/env python3
"""Boundary/definition tests for the original-pair sufficient-predicate API."""
import argparse,json
from pathlib import Path
from consumer import canonical_pair,certifies_common,prime_trial

def main():
    p=argparse.ArgumentParser();p.add_argument('--output',type=Path,required=True);args=p.parse_args()
    state=canonical_pair(76672,26775)
    assert state is not None
    assert (state['g'],state['H'],state['C'],state['u'],state['eps'],state['rho'])==(1,11,3485,5,1,29)
    assert not certifies_common(76672,26775,kappa=1,d=5,prime=3,exponent=3)
    assert not certifies_common(8,4,kappa=1,d=5,prime=3,exponent=3)
    assert not certifies_common(1512,210,kappa=1,d=5,prime=4,exponent=3)
    assert not certifies_common(76672,26775,kappa=2,d=5,prime=3,exponent=3)
    assert not certifies_common(76672,26775,kappa=3,d=3,prime=3,exponent=3)
    assert all(prime_trial(p) for p in (2,3,5,13,37,73))
    assert not any(prime_trial(p) for p in (0,1,4,9,25,49))
    out={'canonical_weak_pair':state,'negative_predicate_tests':5,'primality_boundary_tests':12,
         'true_predicate_hits_tested':0,'scope':'definition/guard regression only; no NC3 examples claimed'}
    args.output.parent.mkdir(parents=True,exist_ok=True);args.output.write_text(json.dumps(out,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print(json.dumps({'consumer_guard_tests':5,'true_predicate_hits_tested':0}))
if __name__=='__main__':main()
