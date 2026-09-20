#!/usr/bin/env python3
"""Bounded falsification ONLY. Not used to prove a global height or closure."""
from __future__ import annotations
from math import isqrt
import json,argparse
from lattice_gate import fixed_ag,sqrt10_mod_3power

def icbrt(n:int)->int:
    lo,hi=0,1<<((n.bit_length()+2)//3)
    while lo+1<hi:
        mid=(lo+hi)//2
        if mid**3<=n:lo=mid
        else:hi=mid
    return hi if hi**3<=n else lo

def run(a_min:int=27,a_max:int=48)->dict:
    rows=[]; solutions=[]; total=0
    for a in range(a_min,a_max+1):
        alpha=3**a;bound=icbrt(alpha-1)
        residue=130*pow(alpha,-1,1000)%1000
        root=sqrt10_mod_3power(2*a);count=0
        for g in range(residue or 1000,bound+1,1000):
            n=g*alpha
            assert n%9000==5130 and g**3<alpha
            ans=fixed_ag(a,g,root)
            count+=1
            if ans['status']=='CANDIDATE':solutions.append(ans)
        total+=count;rows.append({'a':a,'g_max':bound,'tested':count})
    return {'scope':'bounded attempt to falsify correct-tail+true-pure-3+F1+W10 => g^4>=n; no global exponent bound',
            'a_min':a_min,'a_max':a_max,'tested_pairs':total,'solutions':solutions,'counts':rows}

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--max-a',type=int,default=48);ap.add_argument('--output',default=None);args=ap.parse_args()
    data=run(a_max=args.max_a)
    if args.output:open(args.output,'w').write(json.dumps(data,indent=2)+'\n')
    print(json.dumps({k:v for k,v in data.items() if k!='counts'}))
