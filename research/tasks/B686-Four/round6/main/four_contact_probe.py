"""Exact contact-space probe; no Lean acceptance or full no-solution claim."""
import importlib.util
import json
import math
from fractions import Fraction as Q
from pathlib import Path
from datetime import datetime, timezone

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[4]
SOURCE = HERE.parents[1] / 'round5/main/contact_search.py'
spec = importlib.util.spec_from_file_location('old_contact', SOURCE)
old = importlib.util.module_from_spec(spec)
spec.loader.exec_module(old)

L = Q(83894387, 10000000)
U = Q(83894390, 10000000)

def coefficients(row):
    return {(a,b):c for a,b,c in row['terms']}

def bounds(poly, D, N, lo=L, hi=U):
    lower=upper=Q(0)
    for k in range(D+1):
        shifted={}
        for (a,b),c in poly.items():
            if a+b != k: continue
            for j in range(a+1):
                shifted[j]=shifted.get(j,Q(0))+c*math.comb(a,j)*lo**(a-j)
        l=u=shifted.get(0,Q(0))
        for j,c in shifted.items():
            if j:
                term=c*(hi-lo)**j
                l+=min(0,term);u+=max(0,term)
        if k==D: lower+=l;upper+=u
        else:
            lower+=min(0,l)/Q(N)**(D-k)
            upper+=max(0,u)/Q(N)**(D-k)
    return lower,upper

def combine(A,B,a,b):
    return {m:a*A.get(m,0)+b*B.get(m,0) for m in set(A)|set(B)}

def probe(slots,D=11):
    row=old.search(slots,D,D+1)
    print('kernel',slots,D,row['nullity'],flush=True)
    if row['nullity']!=2:return row
    A,B=map(coefficients,row['auxiliaries'])
    t=(float(L)+float(U))/2
    vals=[sum(c*t**a for (a,b),c in G.items() if a+b==D) for G in (A,B)]
    candidates=[]
    for a in range(1,3001):
        b=round(-a*vals[0]/vals[1])
        for bb in range(b-1,b+2):
            if math.gcd(a,bb)!=1:continue
            candidates.append((abs(a*vals[0]+bb*vals[1]),a,bb))
    candidates=sorted(candidates)[:60]+[(0,1,0),(0,0,1)]
    out=[]
    for _,a,b in candidates:
        H=combine(A,B,a,b)
        lower,upper=bounds(H,D,50000)
        out.append(dict(a=a,b=b,lower=str(lower),upper=str(upper),
                        lower_float=float(lower),upper_float=float(upper),
                        tail_50000=bool(lower>0 or upper<0),
                        max_height=float(max(abs(lower),abs(upper)))))
    row['best']=sorted(out,key=lambda r:(not r['tail_50000'],r['max_height']))[:8]
    return row

if __name__=='__main__':
    output={'started_utc':datetime.now(timezone.utc).isoformat(),'scope':'exact finite-dimensional candidate probe, unformalized','rows':[]}
    for slots in ((1,2,3,4),(1,2,3,5)):
        row=probe(slots)
        output['rows'].append(row)
        (HERE/'four-contact-probe.json').write_text(json.dumps(output,indent=2)+'\n',encoding='utf-8')
        print(slots, json.dumps(row.get('best',[])[:2]),flush=True)
