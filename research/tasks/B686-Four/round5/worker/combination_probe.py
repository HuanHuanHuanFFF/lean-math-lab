"""Bounded diagnostic of combinations of main's saturated auxiliary basis.
Decimal slope values guide candidate selection only; no formal claim here.
"""
from decimal import Decimal as D,getcontext
from pathlib import Path
from math import gcd
import json
getcontext().prec=70
r=json.loads(Path(__file__).with_name('contact124-input.json').read_text())['row']
c=3/(D(4)**(D(1)/5)-1)-1
coeffs=[[sum(D(t)*c**a for a,b,t in g['terms'] if a+b==k) for k in range(6)] for g in r['auxiliaries']]
rows=[]
for A in range(1,10001):
 B=-int((A*coeffs[0][5]/coeffs[1][5]).to_integral_value())
 if gcd(A,B)!=1:continue
 cs=[A*x+B*y for x,y in zip(*coeffs)]
 # bound using the actual limiting slope, not valid for finite n,d.
 bound3000=sum(abs(cs[k])/D(3000)**(5-k) for k in range(6))
 # rough fixed point for d >= |H5|+|H4|/d+...
 d=max(D(3000),abs(cs[5]),abs(cs[4]).sqrt())
 for _ in range(30):d=(d+sum(abs(cs[k])/d**(5-k) for k in range(6)))/2
 rows.append((bound3000,d,A,B,cs))
rows.sort()
output={'evidence':'bounded Decimal diagnostic, A=1..10000; no finite-d strip certification','slope':str(c),'best_at_d3000':[{'A':A,'B':B,'bound3000':str(b),'approx_cutoff':str(d),'homogeneous_at_slope':[str(x) for x in cs]} for b,d,A,B,cs in rows[:12]]}
Path(__file__).with_suffix('.json').write_text(json.dumps(output,indent=2)+'\n')
for b,d,A,B,cs in rows[:12]:print(A,B,'bound3000',b,'rough cutoff',d,'H5',cs[5],'H4',cs[4])
