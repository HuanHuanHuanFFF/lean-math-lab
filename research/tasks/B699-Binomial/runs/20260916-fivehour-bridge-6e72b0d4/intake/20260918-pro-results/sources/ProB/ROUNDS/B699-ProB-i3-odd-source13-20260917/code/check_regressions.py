#!/usr/bin/env python3
"""Bounded API checks and source correspondence; never an infinite proof."""
import argparse,json
from math import gcd,comb
from pathlib import Path
from consumer import source_part,root_parameter,negative_record,exclusion

def run():
    count=0
    for d in range(3,602,2):
        rho=d*(d*d+2*d-2);assert root_parameter(rho,1)==d;count+=1
    for d in range(5,602,2):
        if d%3:
            rho=d*(d*d+6*d-18);assert root_parameter(rho,3)==d;count+=1
    examples=[(1,{},1),(85,{5:1,17:1},17),
              (2**10*3*13**7*5**4*19**2,{2:10,3:1,13:7,5:4,19:2},39),
              (2**100*13**50*7**20,{2:100,13:50,7:20},13),
              (3**5*17**3,{3:5,17:3},3**5*17**3)]
    for n,fs,S in examples:assert source_part(n,fs)==S
    bad=0
    for n,fs in [(15,{15:1}),(15,{3:1}),(15,{3:0,5:1})]:
        try:source_part(n,fs)
        except ValueError:bad+=1
        else:raise AssertionError('bad factorization accepted')
    pairs=0;hits=0;records=0
    for n in range(8,242):
        for j in range(4,n//2+1):
            pairs+=1
            rec=negative_record(n,j);records+=int(rec is not None)
            ans=exclusion(n,j)
            if ans['applies']:
                hits+=1;G=gcd(comb(n,3),comb(n,j))
                while G and G%2==0:G//=2
                assert G>1
    weak=[]
    for n,j in [(496,210),(56,11),(76672,26775)]:
        rec=negative_record(n,j)
        weak.append({'n':n,'j':j,'qualifying_negative_record':rec is not None})
    return {'schema':'B699-ODD13-regression-v1','root_classification_tests':count,
            'source_part_tests':len(examples),'bad_factorizations_rejected':bad,
            'bounded_raw_pairs':pairs,'canonical_negative_records':records,
            'new_consumer_hits':hits,'weak_input_correspondence':weak,
            'scope':'bounded regression only; no historical difference or unbounded proof'}

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--output',type=Path,required=True);a=ap.parse_args()
    out=run();a.output.parent.mkdir(parents=True,exist_ok=True)
    a.output.write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps({'raw_pairs':out['bounded_raw_pairs'],'hits':out['new_consumer_hits']}))
