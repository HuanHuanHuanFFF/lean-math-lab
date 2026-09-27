#!/usr/bin/env python3
from pathlib import Path
import json,sys
sys.path.insert(0,str(Path(__file__).resolve().parent))
import certify
ROOT=Path(__file__).resolve().parents[1]; F=ROOT/'certificates/fees';F.mkdir(parents=True,exist_ok=True)
s=certify.make_signatures()
(F/'signatures508.json').write_text(json.dumps(s,ensure_ascii=False,indent=2)+'\n')
(F/'signatures508.txt').write_text(''.join(str(x[0])+' '+' '.join(map(str,x[1]))+'\n' for x in s))
front=certify.read_frontier()
(F/'queries123.txt').write_text(''.join(str(x['idx'])+' '+str(x['h'])+' '+' '.join(map(str,x['capacity']))+'\n' for x in front))
print('PREPARED',len(s),len(front))

# State 1646 S5 quotient case, rebuilt from original source lower bounds minus proved S5 upper orders.
h=113;v=[19,16,13,12,9,10]
OFF=((77,74),(67,57),(51,54,46),(40,43,48),(31,34,39,45),(25,28,33,39));DIAG=(0,56,0,41,0,52)
U=((2,2),(1,2),(1,1,1),(1,1,1),(1,1,1,1),(1,1,1,1));WU=(0,2,0,1,0,0)
M=[[max(a-v[i],0) for a in OFF[i]] for i in range(6)];B=[max(DIAG[i]-v[i],0) for i in range(6)]
off=[[max(a-b,0) for a,b in zip(r,u)] for r,u in zip(M,U)];ww=[max(a-b,0) for a,b in zip(B,WU)]
pts=[(r,s,ww[r-3] if 2*s==r else off[r-3][s]) for r in range(3,9) for s in range(r//2+1)]
(F/'1646_s5_case.txt').write_text('109\n'+''.join(f'{r} {s} {m}\n' for r,s,m in pts))
