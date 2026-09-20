#!/usr/bin/env python3
"""OPTIONAL discovery diagnostic, not a proof or an original-n finite endpoint.
It repeats only the sparse-pattern bounds used during this round; never run by REPLAY.sh.
"""
from itertools import combinations,product
import json
from math import gcd,isqrt
from verify import recover

def probe(weight: int,amax: int) -> dict:
    rows=[];tested=0
    for a in range(2,amax+1):
        alpha=3**a
        for ps in combinations(range(1,a),weight-1):
            for ds in product((1,2),repeat=weight):
                beta=ds[0]+sum(d*3**e for d,e in zip(ds[1:],ps));tested+=1
                r=recover(alpha,beta)
                if r and r['g']>=10:
                    r.update(a=a,positions=[0,*ps],digits=list(ds),
                             t_is_ten_square=(r['t']%10==0 and isqrt(r['t']//10)**2==r['t']//10),
                             actual_B_tail=(r['n']%1800==1530))
                    rows.append(r)
    return {'weight':weight,'a_max':amax,'patterns_examined':tested,'recoveries_g_ge_10':rows,
            'role':'bounded discovery only; no inference to untested exponents'}

if __name__=='__main__':
    print(json.dumps({'S3':probe(3,34),'S4':probe(4,30)},ensure_ascii=False,indent=2))
