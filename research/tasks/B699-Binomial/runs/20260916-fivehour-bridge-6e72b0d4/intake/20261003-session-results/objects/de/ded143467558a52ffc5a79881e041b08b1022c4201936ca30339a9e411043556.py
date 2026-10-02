import json,sympy as s,math
from pathlib import Path
n,j=s.symbols('n j')
bad=json.loads(Path('/mnt/data/c_r8_work/zero_bad.json').read_text())
cl=[(352,(2,3,5),(1,1,2)),(425,(5,2,3),(1,1,1)),(776,(2,5,3),(1,1,2)),(1026,(3,5,2),(2,1,1)),(1377,(3,2,5),(1,1,1)),(1450,(5,3,2),(2,1,1))]
for r in bad:
 f=[x for x in r['proof'][0]['factors'] if not(x['sign'] or x['smooth_zero_obstruction'])][0]['f'];F=s.Poly(s.sympify(f),n,j);co=[(a,b,int(c)) for (a,b),c in F.terms()]
 def ev(a,b,m):return sum(c*pow(a,x,m)*pow(b,y,m) for x,y,c in co)%m
 results=[]
 for a,ps,ks in cl:
  mods=[]
  for m in (8,9,25):
   roots=[b for b in range(m) if ev(a,b,m)==0]
   mods.append(roots)
  results.append([a,[len(x) for x in mods]])
 print(r['pairs'],results)
