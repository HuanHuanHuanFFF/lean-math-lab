"""Correct simultaneous paired lifts: all vertical gaps distinct => strong Sidon."""
from core import *
from itertools import permutations
from pathlib import Path
import json,time,random
O=Path(__file__).resolve().parents[1];start=time.time();rows=[]
for p in [2,3,5,7]:
    B,meta=singer(p);q=meta['q'];k=p+1;M=p+2;N=M*q;br={b%q for b in B}
    hist=Counter();best=None;count=0
    for gs in permutations(range(1,k+1)):
        A=sorted(B+[b+q*g for b,g in zip(B,gs)])
        R=residual(A,N);off=[x for x in R if x%q not in br]
        key=(len(off),len(R));hist[key]+=1;count+=1
        if best is None or key<best['key']:
            best={'key':key,'gaps':gs,'A':A,'residual':sorted(R),'off_base_residual':off}
    assert is_sidon(best['A'])
    rows.append({'kind':'all_permutations_lower_zero','p':p,'B':B,'q':q,'M':M,'N':N,'assignments':count,
                 'histogram':[{'off_base_holes':a,'all_holes':b,'assignments':c} for (a,b),c in sorted(hist.items())],
                 'best':best})
    print(p,count,'best off/all',best['key'],flush=True)
for p in [11,13,17,19,23,31,43,61]:
    B,meta=singer(p);q=meta['q'];k=p+1
    for kind in ['increasing_gaps_lower_zero','random_gaps_and_lower']:
        if kind.startswith('increasing'):
            M=p+2;gaps=list(range(1,k+1));ds=[0]*k
        else:
            M=2*p+3;rng=random.Random(156300000+p);gaps=list(range(1,k+1));rng.shuffle(gaps)
            ds=[rng.randrange(M-g) for g in gaps]
        N=M*q;A=sorted([b+q*d for b,d in zip(B,ds)]+[b+q*(d+g) for b,d,g in zip(B,ds,gaps)])
        assert is_sidon(A)
        R=residual(A,N);br={b%q for b in B};off=sum(x%q not in br for x in R)
        row={'kind':kind,'p':p,'B':B,'q':q,'M':M,'N':N,'gaps':gaps,'lower_heights':ds,'A':A,'residual_count':len(R),'off_base_residual_count':off,'first_legal':min(R) if R else None}
        rows.append(row);print(p,kind,off,len(R),flush=True)
out={'elapsed_seconds':time.time()-start,'results':rows}
(O/'data/paired_lift_checks.json').write_text(json.dumps(out,indent=2))
print('TOTAL_SECONDS',out['elapsed_seconds'],flush=True)
