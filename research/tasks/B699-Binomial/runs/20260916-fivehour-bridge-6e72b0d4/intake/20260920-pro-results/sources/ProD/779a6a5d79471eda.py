#!/usr/bin/env python3
"""Check DEN-/DEN+/ZERO+ on an original pair and return an exact source defect.
A defect can be composite: the code never calls it a prime. Factoring is optional.
"""
from __future__ import annotations
import argparse
import json
from math import gcd
from exact import prime_trial,vchoose

def rough6(x: int) -> int:
    for p in (2,3,5):
        while x%p==0:x//=p
    return x

def consume(n: int,j: int,trial_limit: int=10000) -> dict:
    if n%1800 not in (1280,1530) or not 6<=j<=n//2 or j%2:
        raise ValueError('Need one of the two tails, even j, 6<=j<=floor(n/2)')
    g=gcd(n,j);alpha=n//g;beta=j//g;gamma=(n-j)//g
    triggers=[];denominators=[]
    for side,x in [('beta',beta),('gamma',gamma)]:
        qm=(alpha-1)//gcd(alpha-1,x);qp=(alpha+1)//gcd(alpha+1,x)
        denominators.append(dict(side=side,Qminus=qm,Qplus=qp))
        if qm**3<=alpha:triggers.append(side+':DEN-')
        if (qp-1)**3<=alpha:triggers.append(side+':DEN+')
        if (g+1)*x==alpha+1:triggers.append(side+':ZERO+')
    if not triggers:
        return dict(status='NOT_COVERED',g=g,alpha=alpha,denominators=denominators)
    defects=[]
    for r in (1,3,4):
        q=rough6(n-r);prod=1
        for b in range(r+1):prod=prod*(j-b)%q
        defect=q//gcd(q,prod)
        if defect>1:defects.append(dict(source=r,rough=q,defect=defect))
    if not defects:
        raise RuntimeError('Theorem/implementation discrepancy: triggered but F134 holds')
    witnesses=[]
    for row in defects:
        for p in range(7,trial_limit+1):
            if row['defect']%p==0 and prime_trial(p):
                vals={str(i):vchoose(n,i,p) for i in (5,6)}
                vals['j']=vchoose(n,j,p)
                if min(vals.values())<1:raise RuntimeError('Incorrect witness')
                witnesses.append(dict(prime=p,source=row['source'],valuations=vals));break
    indices=[5]+([6] if j>=7 else [])
    if n%7==6:
        indices += [i for i in (7,8) if j>i]
    return dict(status='COVERED',g=g,alpha=alpha,beta=beta,gamma=gamma,
                denominators=denominators,triggers=triggers,defects=defects,
                prime_witnesses=witnesses,original_problem_indices=indices,
                warning='A returned defect need not be prime; no claim of full NC characterization.')

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('n',type=int);ap.add_argument('j',type=int)
    ap.add_argument('--trial-limit',type=int,default=10000);args=ap.parse_args()
    if not 0<=args.trial_limit<=1000000:ap.error('trial limit must lie in [0,1000000]')
    try: print(json.dumps(consume(args.n,args.j,args.trial_limit),ensure_ascii=False,indent=2))
    except (ValueError,RuntimeError) as exc:ap.exit(1,str(exc)+'\n')
