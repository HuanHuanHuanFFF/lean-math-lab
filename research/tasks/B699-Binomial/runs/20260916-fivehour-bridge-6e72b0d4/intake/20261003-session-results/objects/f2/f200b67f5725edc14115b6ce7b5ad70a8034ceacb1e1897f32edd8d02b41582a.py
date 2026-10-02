import json,math
from fractions import Fraction as F
from pathlib import Path
rows=[(352,(2,3,5),(1,1,2,1,12,1)),(425,(5,2,3),(1,1,1,2,1,60)),(776,(2,5,3),(1,1,2,1,4,3)),(1026,(3,5,2),(2,1,1,3,2,1)),(1377,(3,2,5),(1,1,1,6,1,4)),(1450,(5,3,2),(2,1,1,1,6,5))]
rec=json.loads(Path('/mnt/data/c_next_work/double_origin_probe.json').read_text())
def split(n):
 q=n
 for p in [2,3,5]:
  while q%p==0:q//=p
 return n//q,q
found=[];alln=set();counts=0
for r in rec:
 C=F(r['norm'])
 for a,ps,ks in rows:
  gg=88*C*math.prod(ks[3:])/85
  gmax=math.isqrt(gg.numerator//gg.denominator)
  while gmax*gmax>=gg:gmax-=1
  for q2 in r['q2']:
   pp=ps[2]**(3 if ps[2]==2 else 2);e=3 if ps[2]==2 else 2
   while (n:=2+ks[2]*pp*q2)<2**43:
    counts+=1
    if n%1800==a and split(n-2)==(ks[2]*pp,q2):
     s0,q0=split(n)
     if 7<=q0<=gmax:
      found.append({'Z':r['Z'],'a':a,'n':n,'q0':q0,'q2':q2,'e2':e,'gmax':gmax})
      alln.add(n)
    e+=1;pp*=ps[2]
print('count',counts,'found',len(found),'unique',len(alln));print(json.dumps(found,indent=2))
Path('/mnt/data/c_next_work/probe_candidates.json').write_text(json.dumps(found,indent=2))
