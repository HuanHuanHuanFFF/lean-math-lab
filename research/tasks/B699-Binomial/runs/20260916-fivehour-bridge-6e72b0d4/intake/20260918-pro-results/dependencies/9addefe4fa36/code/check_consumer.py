#!/usr/bin/env python3
"""Finite API regression only. It does not prove the theorem."""
import argparse,json
from pathlib import Path
from math import comb,gcd
from consumers import recovery_sign_consumer

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--output',type=Path,required=True);a=ap.parse_args()
    count=hits=0;samples=[]
    for n in range(8,513,8):
        for j in range(4,n//2+1):
            r=recovery_sign_consumer(n,j);count+=1
            if r['proved_by_this_consumer']:
                h=gcd(comb(n,3),comb(n,j))
                while h%2==0:h//=2
                if h<=1:raise AssertionError((n,j,r))
                hits+=1
                if len(samples)<8:samples.append([n,j,r])
    invalid=0
    for n,j in [(8,3),(8,5),(10,-1),(8.0,4)]:
        try:recovery_sign_consumer(n,j)
        except ValueError:invalid+=1
        else:raise AssertionError('invalid input accepted')
    d={'status':'PASS','finite_regression_pairs':count,'predicate_hits':hits,
       'sample_hits':samples,'invalid_inputs_rejected':invalid,
       'not_a_new_coverage_count':True}
    a.output.parent.mkdir(parents=True,exist_ok=True);a.output.write_text(json.dumps(d,sort_keys=True,indent=2)+'\n')
    print(json.dumps({k:v for k,v in d.items() if k!='sample_hits'}))
if __name__=='__main__':main()
