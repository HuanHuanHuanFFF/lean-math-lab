"""Regenerate the 71-case short divisibility certificate; no prime identity scan.
This is a discovery utility, not called by reproduce.py.
"""
from pathlib import Path
from math import gcd
import json
ROOT=Path(__file__).resolve().parents[1]
def rv(u,v):return 761*u**6-446*u**5*v+1027*u**4*v**2-572*u**3*v**3+1027*u**2*v**4-446*u*v**5+761*v**6
rows=[]
for u in range(2,16):
    for v in range(1,u):
        if gcd(u,v)!=1:continue
        R=rv(u,v);M=v*(u-v)*(u+v)**2*R;X=M//gcd(M,2520);limit=u**9+v**9
        # A discovery cap is harmless: failure raises, never counts as exclusion.
        q=next((q for q in range(2,1001) if q<=limit and X%q==0),None)
        if q is None:raise RuntimeError(f'No certificate found for {u},{v}')
        rows.append({'u':u,'v':v,'R':R,'M':M,'quotient':X,'small_divisor':q,'limit':limit})
out={'pairs':rows,'large_u_threshold':16,'R_upper_coefficient':3576,'R_lower_bound':50265,'denominator':2520}
(ROOT/'evidence/resonance_obstruction.json').write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps({'discovered_pairs':len(rows),'maximum_divisor':max(a['small_divisor'] for a in rows)}))
