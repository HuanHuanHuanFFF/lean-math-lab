#!/usr/bin/env python3
"""Generate finite certificates. No network, repository writes, or proof assistant."""
from pathlib import Path
from math import isqrt, gcd
from bisect import bisect_right
import json
ROOT = Path(__file__).resolve().parents[1]

def sieve(n):
    s = bytearray(b'\1') * (n + 1)
    s[:2] = b'\0\0'
    for p in range(2, isqrt(n) + 1):
        if s[p]:
            s[p*p::p] = b'\0' * ((n-p*p)//p + 1)
    return [p for p in range(2, n+1) if s[p]]

def trial_prime(n):
    return n >= 2 and all(n % d for d in range(2, isqrt(n)+1))

def previous_prime(x):
    while not trial_prime(x):
        x -= 1
    return x

def dump(name, data):
    (ROOT / 'certificates' / name).write_text(json.dumps(data, indent=2, sort_keys=True)+'\n')

def main():
    primes = sieve(400000)
    lo, end, I = 9768, 396834, 4883
    rows=[]
    while lo <= end:
        p=primes[bisect_right(primes,lo)-1]
        hi=min(end,p+I-1)
        assert p <= lo <= hi < 2*p
        rows.append({'lo':lo,'hi':hi,'prime':p})
        lo=hi+1
    dump('finite_cover.json', {'i_min':I,'n_min':9768,'n_max':end,
         'analytic_n_min':396835,'rows':rows})
    n=20_000_000
    ps=[previous_prime(n//a) for a in (2,3)]
    dump('examples.json', {
      'high_to_low_failed_transport': {'n':20482282,'a':5000,'i':5003,'j':5004,'p':5003,
            'expected_valuations':[1,0,1]},
      'higher_layer_boundary': {'n':25,'i':5,'j':6,'p':5,'expected_valuations':[1,2]},
      'two_quotient_no_top_prime': {'n':126,'i':6,'primes':[61,41]},
      'actual_target_tail_row': {'n':n,'i':4883,'primes':ps},
      'gcd_hypothesis_needed': {'n':100,'i':11,'j':50,'primes':[47,23]},
      'separation_hypothesis_needed': {'n':60,'i':15,'j':23,'primes':[23,17]}
    })
    dump('parameters.json', {'source_sha256':'96f92ba7061e8facb774bdf2d42c5d445f3f1a63564ca0e2b71ceaca08d44066',
        'tail_i_min':4883,'ratio_bound':4096,'quotient_bound':4095,
        'dusart_x_min':396738,'analytic_n_min':396835,
        'exhaustive_square_test_n_max':240,'generic_graph_test_n_max':180})
    print(json.dumps({'cover_rows':len(rows),'tail_example_primes':ps,
        'tail_example_remainders':[n%p for p in ps]},sort_keys=True))

if __name__=='__main__': main()
