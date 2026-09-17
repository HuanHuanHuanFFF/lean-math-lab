import json,time
from pathlib import Path
from math import prod
ROOT=Path(__file__).resolve().parents[1]
d=json.loads((ROOT/'evidence/weight5_probe.json').read_text());bs=d['basis']
def ev(c,n,x):return sum(v*n**a*x**b for v,(a,b) in zip(c,bs))
st=time.time();bad=[];pc=0;constlead=0
for rec in d['candidates']:
 c=rec['vector'];v=[ev(c,1,0),ev(c,2,0),ev(c,2,1)]
 if all(v):pc+=1;continue
 rec['first_values']=v
 if c[-1]==0:constlead+=1
 bad.append(rec)
out={'first_window_eliminated':pc,'residual':len(bad),'constant_leading_residual':constlead,'basis':bs,'candidates':bad,'max_l1':max(sum(abs(x) for x in r['vector']) for r in d['candidates'])}
(ROOT/'evidence/weight5_first_window.json').write_text(json.dumps(out,indent=2))
print({k:v for k,v in out.items() if k not in ('basis','candidates')})
