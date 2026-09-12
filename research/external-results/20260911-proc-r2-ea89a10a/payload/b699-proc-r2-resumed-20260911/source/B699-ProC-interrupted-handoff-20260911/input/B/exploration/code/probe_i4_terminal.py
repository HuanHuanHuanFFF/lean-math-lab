"""Fixed residual rows, full-prime-power CRT filter; design data not final checked certificate."""
from pathlib import Path
from sympy import factorint
from math import prod
import json
root=Path(__file__).resolve().parents[1]
rs=json.loads((root/'outputs/i4_smooth_probe.json').read_text())['residuals'];rows=[]
for row in rs:
 n=row['n'];cap=n//2;mods=[]
 for r in range(4):
  for p,e in factorint(n-r).items():
   p,e=int(p),int(e)
   if p>=5:mods.append({'p':p,'e':e,'Q':p**e,'r':r})
 mods.sort(key=lambda x:(-x['Q'],x['r']))
 states=[0];M=1;used=[];counts=[]
 for m in mods:
  Q=m['Q'];inv=pow(M,-1,Q);nxt=[]
  for a in states:
   for s in range(m['r']+1):
    b=a+M*((s-a)*inv%Q)
    if b<=cap:nxt.append(b)
  states=sorted(set(nxt));M*=Q;used.append(m);counts.append(len(states))
  if M>cap:states=[a for a in states if a>=5]
  if not states:break
 cand=[j for a in states for j in range(a+max(0,(5-a+M-1)//M)*M,cap+1,M)]
 rows.append({'n':n,'moduli':used,'counts':counts,'states':states,'M':M,'candidates':cand})
print('rows',len(rows),'nonempty',[(x['n'],x['candidates']) for x in rows if x['candidates']])
print('maxstates',max(k for x in rows for k in x['counts']),'used',sum(len(x['moduli']) for x in rows))
(root/'outputs/i4_terminal_probe.json').write_text(json.dumps({'status':'design_pending_independent_check','rows':rows},indent=2))
