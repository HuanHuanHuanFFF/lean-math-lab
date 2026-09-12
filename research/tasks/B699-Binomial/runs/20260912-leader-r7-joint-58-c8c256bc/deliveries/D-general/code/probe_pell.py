from math import isqrt
import json
from pathlib import Path
cases=[(13,3,195,61,14,1),(5,3,35,29,6,1),(2,-3,7,-6,8,3),(10,-15,35,-10,6,1)]
results=[]
for A,B,D,E,a,b in cases:
 # Overbounding box then floating test solely for discovery; exact certified generator to follow.
 import math
 eps=a+b*math.sqrt(D); T=math.sqrt(abs(E)); bound=math.ceil((T*eps+T)/2)+1
 seeds=[]
 for X in range(bound+1):
  yy=X*X-E
  if yy<0 or yy%D:continue
  Y=isqrt(yy//D)
  if D*Y*Y!=yy:continue
  rho=X+Y*math.sqrt(D)
  if T<=rho<T*eps:seeds.append((X,Y))
 sols=[]
 for v in range(0,513):
  n=1<<v; X=A*n+B; val=X*X-E
  if X<=0 or val<0 or val%D:continue
  Y=isqrt(val//D)
  if D*Y*Y==val:sols.append({'v':v,'n':n,'X':X,'Y':Y})
 results.append({'A':A,'B':B,'D':D,'E':E,'unit':[a,b],'bound':bound,'seeds':seeds,'solutions_v_0_512':sols})
out=Path(__file__).resolve().parents[1]/'outputs/probe-pell.json';out.write_text(json.dumps(results,indent=2));print(json.dumps(results,indent=2))
