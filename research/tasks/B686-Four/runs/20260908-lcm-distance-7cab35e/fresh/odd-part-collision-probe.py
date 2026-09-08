from math import prod
from collections import defaultdict
import json
from pathlib import Path

out = Path(r'D:\CodingProject\Math\research\tasks\B686-Four\runs\20260908-lcm-distance-7cab35e\fresh')
# Falsification target only: if equal odd parts occur at disjoint length-k blocks,
# is their 2-adic valuation difference always odd? A finite no-hit is not a proof.
rows=[]
for k in range(2,33):
    P=prod(range(1,k+1))
    seen={}
    collisions=[]
    even_gap=[]
    for n in range(0,50001):
        v=(P & -P).bit_length()-1
        odd=P>>v
        if odd in seen:
            for n0,v0 in seen[odd]:
                if n-n0>=k:
                    row={'k':k,'n':n0,'m':n,'v2_difference':v-v0}
                    collisions.append(row)
                    if (v-v0)%2==0:
                        # Independent definition check, including legal separation.
                        p0=prod(range(n0+1,n0+k+1))
                        p1=prod(range(n+1,n+k+1))
                        assert p1 == (1 << (v-v0))*p0 and n0+k<=n
                        even_gap.append(row)
            seen[odd].append((n,v))
        else:
            seen[odd]=[(n,v)]
        P=P//(n+1)*(n+k+1)
    rows.append({'k':k,'range_n':[0,50000],'collision_count':len(collisions),'first_collisions':collisions[:10],'even_gap':even_gap})
(out/'odd-part-collision-probe.json').write_text(json.dumps(rows,ensure_ascii=False,indent=2),encoding='utf8')
print(json.dumps(rows,ensure_ascii=False))
