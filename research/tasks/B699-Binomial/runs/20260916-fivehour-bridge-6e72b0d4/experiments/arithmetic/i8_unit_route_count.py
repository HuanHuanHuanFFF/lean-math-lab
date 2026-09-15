"""Bounded structural inventory only; no claimed original-problem certificate."""
from itertools import combinations,product
from fractions import Fraction
from collections import Counter
from pathlib import Path
import json

PRIMES=(2,3,5,7)
THRESHOLDS={2:3,3:2,5:2,7:2}


def vp(n,p):
    v=0
    while n%p==0:
        n//=p
        v+=1
    return v


def main():
    counts={}
    for nhigh in (1,2,3):
        cells=0
        branches=0
        unique=Counter()
        per_q=Counter()
        for high in combinations(PRIMES,nhigh):
            low=[p for p in PRIMES if p not in high]
            for lowexp in product(*(range(THRESHOLDS[p]) for p in low)):
                exps=dict(zip(low,lowexp))
                for h in range(8):
                    cells+=1
                    for q in low:
                        delta=exps[q]
                        for source in range(6):
                            rho=source-h
                            if rho==0 or vp(abs(rho),q)!=delta:
                                continue
                            unit=rho//q**delta
                            e=1
                            for p in low:
                                if p!=q:
                                    e*=p**exps[p]
                            c=Fraction(e,unit)
                            key=(high,q,c.numerator,c.denominator)
                            unique[key]+=1
                            per_q[q]+=1
                            branches+=1
        counts[str(nhigh)]={'cells':cells,'eligible_offset_branches':branches,
                           'distinct_fixed_forms':len(unique),'branches_by_q':dict(per_q),
                           'forms':[{'high':list(k[0]),'q':k[1],'num':k[2],'den':k[3],
                                     'multiplicity':v} for k,v in sorted(unique.items())]}
    out={'status':'unproved full-unit route inventory only','thresholds':THRESHOLDS,
         'low_box_representations':8*3*2*2*2,'counts':counts}
    path=Path(__file__).with_suffix('.json')
    path.write_text(json.dumps(out,indent=2),encoding='utf-8')
    print(json.dumps({k:{x:y for x,y in z.items() if x!='forms'} for k,z in counts.items()}))


if __name__=='__main__':
    main()
