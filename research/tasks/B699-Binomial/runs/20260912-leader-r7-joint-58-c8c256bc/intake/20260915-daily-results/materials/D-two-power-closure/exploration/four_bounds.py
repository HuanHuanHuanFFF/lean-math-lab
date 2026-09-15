import json
from math import prod,isqrt
from pathlib import Path
D=Path('/mnt/data/B699-ProD-next-work')
def v(x,p):
 e=0
 while x%p==0:x//=p;e+=1
 return e
out=[]
for row in json.loads((D/'exploration/four_lp.json').read_text()):
 H=row['H'];ws={int(k):w for k,w in row['w'].items()};S=sum(row['a']);q=row['q'];W=sum(ws.values());delta=W-2*S-2*q
 E={p:max(sum(w*v(abs(r-h),p) for r,w in ws.items()) for h in H) for p in (2,3,5,7)}
 C=prod(p**e for p,e in E.items());B=2*C//(4**S)
 assert delta in (1,2)
 N=max(14*W,(B if delta==1 else isqrt(B))+1)
 row.update({'W':W,'S':S,'C':C,'small_exponents':E,'height_N':N,'height_exponent':N.bit_length()})
 out.append(row);print(row)
(D/'exploration/four_bounds.json').write_text(json.dumps(out,indent=2))
