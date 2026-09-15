"""Discover first-layer witnesses for two fixed demonstration rows.
The receiver independently checks the complete digital masks, not this search.
"""
from pathlib import Path
import json
from math_core import prime,make_n
ROOT=Path(__file__).resolve().parents[1]
for path,e,K,h,consumer in [('giant_row.json',14,1308,193,'B0'),('resonant_row.json',27,208,33,'C-near-resonance')]:
    p=521;b=6;C=513;n=make_n(p,e,K,h,b,C);Q=p**e;Y=p**K
    assert n%400==0
    masks={(B,S) for B in range(b+1) for S in range(C+1) if(B,S)!=(0,0)}
    remaining=set(masks);groups=[]
    for ell in range(11,2001):
        if not prime(ell):continue
        rn=n%ell
        if rn>8:continue
        covered=sorted((B,S) for B,S in remaining if (Q*(B*Y+S))%ell>rn)
        if covered:groups.append({'prime':ell,'n_residue':rn,'masks':[list(a) for a in covered]});remaining.difference_update(covered)
        if not remaining:break
    if remaining:raise RuntimeError(f'Uncovered demonstration masks: {len(remaining)}')
    c={'p':p,'e':e,'K':K,'h':h,'b':b,'C':C,'n_bits':n.bit_length(),'mask_count':len(masks),'paper_consumer':consumer,'witnesses':groups}
    (ROOT/'evidence'/path).write_text(json.dumps(c,indent=2)+'\n')
    print(json.dumps({'file':path,'n_bits':n.bit_length(),'masks':len(masks),'witness_primes':[r['prime'] for r in groups]}))
