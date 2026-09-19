#!/usr/bin/env python3
"""Verify the finite matrix certificate underlying an infinite WEAK family.
Every member has common prime 599; no member is an NC3 input.
The infinite growth and source-window argument are in PROOFS.md, not inferred
from computed examples. Huge orbit terms are deliberately not expanded.
"""
from __future__ import annotations
import argparse,json
from math import gcd,isqrt
from pathlib import Path

def mul(a,b,m):
    return ((a[0]*b[0]+a[1]*b[2])%m,(a[0]*b[1]+a[1]*b[3])%m,
            (a[2]*b[0]+a[3]*b[2])%m,(a[2]*b[1]+a[3]*b[3])%m)
def power(a,e,m):
    r=(1,0,0,1)
    while e:
        if e&1:r=mul(r,a,m)
        a=mul(a,a,m);e//=2
    return r

def check(c):
    M=c['modulus'];E=c['step_exponent'];U=tuple(c['matrix'])
    if (M,E,U)!=(3408464465184240,486347400,(10,33,3,10)):
        raise ValueError('wrong fixed matrix certificate')
    if (U[0]*U[3]-U[1]*U[2]!=1 or power(U,E,M)!=(1,0,0,1)
        or c['matrix_power_modulus'] != [1,0,0,1] or c['norm'] != 245):
        raise ValueError('matrix period failed')
    X,Y=c['seed_X'],c['seed_Y'];T,d=c['seed_T'],c['seed_delta']
    if (X,Y,T,d)!=(76687,23122,29,1051):raise ValueError('seed')
    if X*X-11*Y*Y!=245 or X!=2662*T-511 or Y!=22*d:
        raise ValueError('seed norm')
    B=M//2662
    if M%2662 or M%22 or (M//22)%B or c['preserved_T_delta_modulus']!=B:
        raise ValueError('recovery congruences')
    for q in c['preserved_factors']:
        if B%q:raise ValueError('missing preserved modulus')
    if c['preserved_factors'] != [72,599,63,1217,85,41]:raise ValueError('source moduli')
    C=121*T-24;z=5*T-1;n=22*C+2;j=11*(C-d)+1;k=n-j
    if (n,j,C,z)!=(76672,26775,3485,144):raise ValueError('original recovery')
    if gcd(n,j)!=1 or n%9!=1 or n%8 or j%2!=1:raise ValueError('original arithmetic')
    if j*k!=5*C*(n-1) or 5*C-z*121!=1:raise ValueError('actual norm')
    if (j*(j-1))%(n-1) or (j*(j-1)*(j-2))%(11*C):raise ValueError('windows')
    blocks=[gcd(n-1,j),gcd(n-1,j-1),gcd(11*C,j),gcd(11*C,j-1),gcd(11*C,j-2)]
    if blocks!=[63,1217,85,11,41]:raise ValueError('source blocks')
    if n%599 or j%599!=419 or any(599%d0==0 for d0 in range(2,isqrt(599)+1)):
        raise ValueError('common odd prime residue')
    return {'status':'PASS','matrix_step':E,'modulus':M,'matrix_power_modulus':[1,0,0,1],
            'seed':[n,j],'seed_blocks':blocks,'preserved_common_prime':599,
            'infinite_orbit_not_expanded':True,
            'boundary':'true two windows and original gcd; alpha has prime 599 and is not c*2^s'}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--certificate',type=Path,required=True);ap.add_argument('--output',type=Path,required=True)
    a=ap.parse_args();r=check(json.loads(a.certificate.read_text()));bad=json.loads(a.certificate.read_text());bad['step_exponent']-=1
    try:check(bad)
    except ValueError:r['damaged_step_rejected']=True
    else:raise ValueError('negative test failed')
    a.output.parent.mkdir(parents=True,exist_ok=True);a.output.write_text(json.dumps(r,sort_keys=True,indent=2)+'\n')
    print(json.dumps(r,sort_keys=True))
if __name__=='__main__':main()
