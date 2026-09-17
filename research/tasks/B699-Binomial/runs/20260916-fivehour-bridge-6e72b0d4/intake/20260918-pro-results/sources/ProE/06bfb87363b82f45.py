#!/usr/bin/env python3
"""Check exploratory weak models against the actual two binomial integers."""
import argparse
import json
import math
from pathlib import Path
from sympy import factorint


def main():
    p=argparse.ArgumentParser()
    p.add_argument('--models',type=Path,required=True)
    p.add_argument('--output',type=Path,required=True)
    a=p.parse_args()
    results=[]
    for row in json.loads(a.models.read_text())['window_models']:
        n,j=row['n'],row['j']
        left,right=math.comb(n,3),math.comb(n,j)
        common=math.gcd(left,right)
        prime_factors={str(int(p)):int(e) for p,e in factorint(common).items()}
        odds=[int(p) for p in prime_factors if int(p)>=3]
        if not odds:
            raise ValueError('Investigate a real NC candidate before claiming any result')
        results.append({'n':n,'j':j,'choose_n_3':left,
                        'choose_n_j_bit_length':right.bit_length(),
                        'actual_gcd':common,'all_common_prime_factors':prime_factors,
                        'common_odd_primes':sorted(odds),'is_original_counterexample':False})
    a.output.write_text(json.dumps({'status':'ALL_WEAK_MODELS_FAIL_ORIGINAL_NC',
                                   'rows':results},indent=2)+'\n')
    print(json.dumps(results))

if __name__=='__main__':
    main()
