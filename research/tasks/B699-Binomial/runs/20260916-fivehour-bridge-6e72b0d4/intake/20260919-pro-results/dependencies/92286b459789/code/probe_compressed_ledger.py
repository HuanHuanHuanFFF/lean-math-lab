from __future__ import annotations
from pathlib import Path
import sys,json,math
sys.path.insert(0,'/mnt/data/frozen_cover16/B699-ProA-i9-sat60-20260918-f2a69c18/code')
from source_ledger import sources,compositions
R=Path(__file__).resolve().parents[1]
_,L=sources();states=[]
for h in range(153):
 mins=[next(v for v,x in enumerate(row) if x<=h) for row in L];slack=305-2*h-sum(mins)
 if slack<0:continue
 for vextra in range(slack+1):
  for ext in compositions(vextra,6):
   vs=tuple(x+y for x,y in zip(mins,ext));V=sum(vs);ds=tuple(h-row[v] for row,v in zip(L,vs));E=305-2*h-V
   states.append({'h':h,'v':vs,'delta':ds,'E':E,'T':sum(ds),'A':sum(ds[:3])})
print('ALL_STATES',len(states),'maxE',max(s['E'] for s in states),'maxT',max(s['T'] for s in states),'maxA',max(s['A'] for s in states))

def opt(Q,F):
 best=-1;rec=[]
 for s in states:
  h,T,A,E=s['h'],s['T'],s['A'],s['E']
  for a in range(min(E,h//3)+1):
   for b in range(min(T,(h-3*a)//4)+1):
    for c in range(min(T-2*b+min(b,A),(h-3*a-4*b)//Q)+1):
     f=(h-3*a-4*b-Q*c)//F
     if f<0:continue
     k=a+b+c+f
     if k>best:best=k;rec=[]
     if k==best:rec.append({'counts':(a,b,c,f),'state':s})
 return best,rec
summ=[]
for Q,F in [(7,14),(8,14),(7,15),(8,15),(9,14),(10,14),(11,14),(12,14),(13,14),(14,14),(8,16),(9,15),(9,16)]:
 b,rec=opt(Q,F);summ.append({'mid_min_e':Q,'free_min_e':F,'max':b,'max_records':len(rec),'witness':rec[0]});print(Q,F,b,len(rec),'example',rec[0])
(R/'evidence/compressed_ledger_probe.json').write_text(json.dumps({'states':len(states),'profiles':summ},indent=2))
(R/'evidence/vertical_state_probe.json').write_text(json.dumps(states,separators=(',',':'))+'\n')
