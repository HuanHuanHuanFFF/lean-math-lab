#!/usr/bin/env python3
"""Conditional structural consumer; does not certify original j or NC data."""
import argparse,json
p=argparse.ArgumentParser(description=__doc__)
p.add_argument('--g',required=True,type=int)
p.add_argument('--c',required=True,type=int,choices=(1,3),help='n=c*2^s, not alpha unless g=1')
p.add_argument('--s',required=True,type=int)
a=p.parse_args()
if a.g<1 or a.s<0:p.error('g must be positive and s nonnegative')
match=a.g in (1,2) and a.c==1 and a.s>=3 and a.s%2==1
print(json.dumps({'status':'CONDITIONAL_COMMON3' if match else 'NO_MATCH',
                  'n_shape':{'coefficient':a.c,'exponent_of_2':a.s},'g':a.g,
                  'theorem':'UXS12','unverified_required_premises':[
                      'same legal original (n,j), actual gcd(n,j)=g',
                      'actual two-bottom distribution with w=1 and b=2r',
                      'full source powers and original window/isolated-3 definitions'],
                  'no_match_is_not_a_counterexample':True},ensure_ascii=False,sort_keys=True))
