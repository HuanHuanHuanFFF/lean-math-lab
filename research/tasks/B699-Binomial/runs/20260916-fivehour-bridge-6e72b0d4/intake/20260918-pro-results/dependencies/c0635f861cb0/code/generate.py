"""Generate the finite certificate, only after the height proof in PROOFS.md.
The generation phase uses standard Python integer arithmetic only.
"""
from math import prod
from pathlib import Path
import json
ROOT=Path(__file__).resolve().parents[1]
A=125665012224
BOUND=2*648*A
CUT=8192
TAIL={1280:(0,2),1530:(2,0)}

def part(x,p):
 y=1
 while x%p==0:x//=p;y*=p
 return y

def qig_gap(n):
 T=prod(part(n-r,2)*part(n-r,3)*part(n-r,5) for r in range(4))
 return 2**20*(n-1)**6*(n-3)**3-T**6*(3*n*n-12*n+8)

def generate():
 powers={}
 for p in (2,3):
  v=p;powers[p]=[]
  while v<BOUND:powers[p].append(v);v*=p
 hits=[];templates=0
 for tail,(r,s) in TAIL.items():
  for P in powers[2]:
   for Q in powers[3]:
    templates+=1
    n=(r+P*((s-r)*pow(P,-1,Q)%Q))%(P*Q)
    if n<CUT or n>=BOUND or n%1800!=tail:continue
    if part(n-r,2)!=P or part(n-s,3)!=Q:continue
    hits.append(n)
 assert len(hits)==len(set(hits))
 low=[n for n in range(14,CUT) if n%1800 in TAIL]
 rows=sorted(set(hits)|set(low))
 gaps=[{'n':n,'qig_gap':qig_gap(n)} for n in rows]
 assert all(z['qig_gap']>0 for z in gaps)
 out={'height_exclusive':BOUND,'cut':CUT,'power_count':{str(p):len(vs) for p,vs in powers.items()},'templates':templates,'low_rows':low,'high_rows':sorted(hits),'rows':gaps}
 (ROOT/'evidence/finite.json').write_text(json.dumps(out,indent=2)+'\n')
 summary={'height_exclusive':BOUND,'cut':CUT,'templates':templates,'low_count':len(low),'high_count':len(hits),'rows':len(rows),'qig_all_pass':True}
 (ROOT/'evidence/generation_summary.json').write_text(json.dumps(summary,indent=2)+'\n')
 print(json.dumps(summary,indent=2))
if __name__=='__main__':generate()
