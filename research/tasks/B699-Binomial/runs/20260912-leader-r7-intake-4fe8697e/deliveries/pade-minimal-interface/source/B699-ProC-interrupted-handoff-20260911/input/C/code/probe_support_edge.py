from math import prod
from central_kernel import prime
import json
rows=[]
for i in range(2,15):
 ps=[p for p in range(2,i) if prime(p)];P=prod(ps);covered=0;bad=[];maxneed=0
 for x in range(P):
  ss=[[p for p in ps if (x+r)%p==0] for r in range(i)]
  if any(not s for s in ss):continue
  covered+=1;pair=[]
  for a in range(i):
   for b in range(a+1,i):
    if len(ss[a])==1 and ss[a]==ss[b]:
     p=ss[a][0];v=1;d=b-a
     while d%p==0:v*=p;d//=p
     pair.append(v)
  if not pair:
   if len(bad)<3:bad.append({'residue':x,'supports':ss})
  else:maxneed=max(maxneed,min(pair))
 rows.append({'i':i,'period':P,'covered':covered,'bad_examples':bad,'c_if_no_bad':maxneed})
 print(i,'cover',covered,'bad',len(bad),'c',maxneed)
open(__import__('pathlib').Path(__file__).resolve().parents[1]/'evidence/edge-support-probe.json','w').write(json.dumps(rows,indent=2)+'\n')
