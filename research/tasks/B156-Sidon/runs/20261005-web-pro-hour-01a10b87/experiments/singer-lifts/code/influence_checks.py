"""Exhaustive fiber cardinality changes over complete finite height cubes."""
from core import *
from pathlib import Path
import json,time
O=Path(__file__).resolve().parents[1];start=time.time();rows=[]
for p,M in [(2,16),(3,16),(5,3),(7,3)]:
    B,meta=singer(p);q=meta['q'];k=len(B);N=M*q
    off=sorted(set(range(q))-{b%q for b in B});hs={}
    for ds in product(range(M),repeat=k):
        F=forbidden([b+q*d for b,d in zip(B,ds)],N)
        H=[M]*q
        for x in F:H[x%q]-=1
        hs[ds]=tuple(H[r] for r in off)
    max_range=0;first=None;groups=0
    for i in range(k):
        for others in product(range(M),repeat=k-1):
            vectors=[]
            for d in range(M):
                ds=others[:i]+(d,)+others[i:]
                vectors.append(hs[ds])
            for j,r in enumerate(off):
                values=[v[j] for v in vectors];diff=max(values)-min(values)
                if diff>max_range:
                    max_range=diff;first={'index':i,'other_heights':others,'residue':r,'H_over_all_values':values}
            groups+=1
    assert max_range<=3
    row={'p':p,'M':M,'height_vectors_checked':len(hs),'coordinate_sections_checked':groups,
         'off_base_residues':len(off),'max_fiber_cardinality_change':max_range,'attaining_witness':first}
    rows.append(row);print(row,flush=True)
(O/'data/influence_checks.json').write_text(json.dumps({'elapsed_seconds':time.time()-start,'results':rows},indent=2))
print('TOTAL_SECONDS',time.time()-start,flush=True)
