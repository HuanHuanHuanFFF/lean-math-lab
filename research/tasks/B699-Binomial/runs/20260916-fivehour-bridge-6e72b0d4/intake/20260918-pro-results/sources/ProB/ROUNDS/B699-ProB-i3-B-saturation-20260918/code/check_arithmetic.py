#!/usr/bin/env python3
"""Finite regression of the elementary gcd lemma, not an NC3 enumeration."""
from __future__ import annotations
import argparse,json,math
from pathlib import Path

def divisors(n):
    ans=[]
    for a in range(1,math.isqrt(n)+1):
        if n%a==0:
            ans.append(a)
            if a*a!=n:ans.append(n//a)
    return sorted(ans)
def strip3(n):
    while n%3==0:n//=3
    return n

def run():
    count=0;by_c={1:0,3:0};cases=[]
    for c in (1,3):
        for g in range(1,65):
            if c==3 and g%3==0:continue
            odd=g//(g&-g)
            for Q in divisors(c*odd):
                for a in (1,3,5):
                    for m in (1,3,5):
                        if math.gcd(a*m,g)!=1:continue
                        modulus=g*g
                        residue=(m*Q*pow(a*a,-1,modulus))%modulus
                        for t in (1,2,3):
                            B=residue+t*modulus
                            if B%2==0:continue
                            assert (m*Q-B*a*a)%modulus==0
                            recovered=Q if c==1 else strip3(Q)
                            assert math.gcd(B,g)==recovered
                            base=B if c==1 else strip3(B)
                            assert base%recovered==0 and math.gcd(recovered,base//recovered)==1
                            if c==3:assert Q//recovered in (1,3)
                            count+=1;by_c[c]+=1
    # Shows why the extra isolated c=3 factor cannot be discarded in this lemma.
    example={'c':3,'g':5,'Q0':3,'a':1,'m':1,'B':53}
    assert (example['Q0']-example['B'])%(example['g']**2)==0
    assert math.gcd(example['B'],example['g'])==1!=example['Q0']
    return {'scope':'gcd-lemma finite regression only','states':count,'by_c':by_c,
            'isolated3_lemma_countermodel':example,
            'not_claimed':['NC3 point enumeration','independent researcher review','Lean acceptance']}
if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--output',type=Path,required=True);a=p.parse_args()
    ans=run();a.output.parent.mkdir(parents=True,exist_ok=True)
    a.output.write_text(json.dumps(ans,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print(json.dumps({'gcd_lemma_regression_states':ans['states']}))
