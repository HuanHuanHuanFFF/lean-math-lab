from pathlib import Path
import json,time,math,collections
from sympy import ZZ
from sympy.polys.matrices import DomainMatrix
ROOT=Path(__file__).parents[1];pts=[(r,s*(r-s))for r in range(3,9)for s in range(r//2+1)]
mon=[(a,b)for b in range(4)for a in range(8-2*b)if(a,b)not in[(6,0),(7,0)]]
evals=[[r**a*v**b for a,b in mon]for r,v in pts]
raw=[list(map(int,l.split())) for l in (ROOT/'evidence/uncovered_ranks.txt').read_text().splitlines()]
start=time.monotonic();certs=[];remaining=[];hist=collections.Counter()
for mask,rank in raw:
 A=[ev for i,ev in enumerate(evals)if mask>>i&1]
 K=DomainMatrix.from_list(A,ZZ).nullspace().to_Matrix().tolist()
 basis=[]
 for row in K:
  row=list(map(int,row));g=math.gcd(*row);basis.append([x//g for x in row])
 assert len(basis)==18-rank
 forced=[i for i,ev in enumerate(evals)if not(mask>>i&1) and all(sum(x*y for x,y in zip(ev,b))==0 for b in basis)]
 if forced:
  certs.append({'mask':mask,'mod_rank':rank,'basis':basis,'forced_index':forced[0]});hist[mask.bit_count()]+=1
 else:remaining.append(mask)
(ROOT/'evidence/source_closure.json').write_text(json.dumps({'monomials':mon,'certificates':certs},indent=2))
(ROOT/'evidence/after_closure_masks.txt').write_text(''.join(f'{x}\n'for x in remaining))
print('seconds',time.monotonic()-start,'removed',len(certs),'by_z',dict(hist),'remaining',len(remaining))
