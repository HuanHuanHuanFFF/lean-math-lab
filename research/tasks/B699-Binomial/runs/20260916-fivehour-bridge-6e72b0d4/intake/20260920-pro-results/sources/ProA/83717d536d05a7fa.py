from edge_slices import OFF,DIAG
from fractions import Fraction as Q
import json,math
from pathlib import Path
P=Path(__file__).resolve().parents[1]
rr=json.loads((P/'verification/final/ledger/baseline_ledger_accepted.json').read_text())['records']
ss=[{'h':h,'v':list(v)} for h,v in sorted({(r['h'],tuple(r['v'])) for r in rr})]
patterns={
 'S3':([[1,2],[1,2],[1,1,2],[1,1,1],[1,1,1,1],[1,1,1,1]],[(1,1),(1,1),(0,0)]),
 'S4':([[2,2],[1,1],[1,1,2],[1,1,1],[1,1,1,1],[1,1,1,1]],[(1,1),(1,1),(0,0)]),
 'S5':([[2,2],[1,2],[1,1,1],[1,1,1],[1,1,1,1],[1,1,1,1]],[(1,2),(1,1),(0,0)])}
for typ,(mos,ds) in patterns.items():
 hist={};examples=[]
 for s in ss:
  h=s['h'];v=s['v'];off=[[max(m-z,0) for m in row] for row,z in zip(OFF,v)];bs=[max(b-z,0) for b,z in zip(DIAG,v)]
  allowed=[]
  for a in range(1,h//4+1):
   lower=sum(m*max(M-a*m,0) for mr,Mr in zip(mos,off) for m,M in zip(mr,Mr))
   for ri,(m,w) in zip([1,3,5],ds):
    B=max(bs[ri]-a*w,0);eta=w-m
    lower+=(2*m-w)*((B+1)//2)+(w-m)*B
   if lower<=8*(h-4*a):allowed.append(a)
  amin=min(allowed) if allowed else None;hist[amin]=hist.get(amin,0)+1
  if amin!=1:examples.append((s,amin,allowed))
 print(typ,hist,'examples',examples[:2])
qg=sum(sum(m*m for m in row) for row in OFF)+sum(Q(b*b,2) for b in DIAG)
print('quadratic original',qg,'D305square/2',Q(305*305,2),'margin',Q(305*305,2)-qg)
