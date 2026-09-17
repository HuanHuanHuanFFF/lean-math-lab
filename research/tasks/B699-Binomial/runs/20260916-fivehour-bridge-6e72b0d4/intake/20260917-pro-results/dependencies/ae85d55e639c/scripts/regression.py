#!/usr/bin/env python3
"""Bounded regression, not the unrestricted proof. Standard library only."""
from __future__ import annotations
import argparse,json
from math import comb,gcd,isqrt
from pathlib import Path

def run() -> dict:
    tested=eligible=0;max_odd_gcd=0
    for n in range(8,2001,4):
        mu=3 if n%9 in (5,8) else 1
        K=(n-2)//(2*mu)
        choose3=n*(n-1)*(n-2)//6
        c=1
        for j in range(1,n//2+1):
            c=c*(n-j+1)//j
            if j<4:continue
            tested+=1
            if gcd(K,j-2)!=7:continue
            eligible+=1
            z=gcd(choose3,c)
            while z%2==0:z//=2
            if z<=1:raise ValueError(('original counterexample',n,j))
            max_odd_gcd=max(max_odd_gcd,z)
    found={7:[],3:[],6:[]}
    for v in range(1,513):
        n=2**v
        for tag,A,r in ((7,7,1),(3,3,1),(6,3,2)):
            P=r*(n-1)*(n-2)
            if P%A:continue
            discriminant=1+4*(P//A);root=isqrt(discriminant)
            if root*root==discriminant and root%2==1:
                y=(root+1)//2;found[tag].append([n,y])
                X=(2*n-3) if tag!=6 else 2*(2*n-3)
                Y=2*y-1;D={7:7,3:3,6:6}[tag];t=6 if tag==7 else 2
                if X*X-D*Y*Y!=-t:raise ValueError('Pell transformation')
    assert found=={7:[[2,1],[8,3],[16,6]],3:[[2,1],[4,2]],6:[[2,1]]}
    assert comb(16,3)==560 and comb(16,6)==8008
    assert comb(16,3)%7==comb(16,6)%7==0
    assert gcd((16-2)//2,6-2)==1
    return dict(status='PASS',n_range='8 <= n <= 2000, 4 divides n',
                legal_pairs_visited=tested,R_equal_7_original_pairs=eligible,
                all_eligible_odd_binomial_gcd_greater_than_one=True,
                exponential_regression_v_range=[1,512],equation_solutions=found,
                endpoint_16_6=dict(choose3=560,choose6=8008,common_prime=7,actual_R=1),
                role='Regression only; no unbounded claim follows from these tests.')

def main():
    p=argparse.ArgumentParser();p.add_argument('--output',type=Path,required=True)
    ns=p.parse_args();o=run();ns.output.parent.mkdir(parents=True,exist_ok=True)
    ns.output.write_text(json.dumps(o,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print(json.dumps(o,ensure_ascii=False,sort_keys=True))
if __name__=='__main__':main()
