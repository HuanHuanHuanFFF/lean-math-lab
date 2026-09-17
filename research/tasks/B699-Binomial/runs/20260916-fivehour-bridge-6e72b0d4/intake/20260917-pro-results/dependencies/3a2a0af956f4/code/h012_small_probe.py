from kernel_algebra import *
from dimension_probe import minweights,cnt
from pathlib import Path
import json,time
ROOT=Path(__file__).resolve().parents[1];out=[]
for D,delta,T in [(40,1,7),(55,1,7),(64,2,13),(72,2,13),(80,2,13),(90,3,19)]:
 opts=[]
 for l in range(1,7):
  eq,w=minweights(D-delta,l)
  col=cnt(D-2*l)-cnt(T-3)
  opts.append((eq-col,eq,l,w))
 gap,eq,l,w=min(opts)
 st=time.time();A,bs,rows=build(D,dict(zip(range(3,9),w)),l,T)
 rr=rref_mod(A)
 o=dict(D=D,delta=delta,T=T,l=l,weights=w,rows=len(rows),cols=len(bs),rank=rr['rank'],nullity=len(bs)-rr['rank'],seconds=time.time()-st)
 print(o,flush=True);out.append(o)
 (ROOT/'evidence/h012_small_probe.json').write_text(json.dumps(out,indent=2))
