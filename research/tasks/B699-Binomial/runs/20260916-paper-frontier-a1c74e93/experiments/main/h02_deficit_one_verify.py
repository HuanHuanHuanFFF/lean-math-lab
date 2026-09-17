"""Finite exact modular certificates for a precisely scoped method ceiling.

After stripping free-row line factors, any symmetric deficit-one polynomial
has degree <=20. Rebuild every possible rank at origin order >=8.
"""
from math import comb,isqrt
from pathlib import Path
from datetime import datetime,timezone
import json

prime=1000003
assert all(prime%d for d in range(2,isqrt(prime)+1))

def coeff(u,v,b,c,a,d):
    return sum(comb(u,z)*comb(z+v,a)*comb(u-z+v,d)*pow(b,z+v-a)*pow(c,u-z+v-d) for z in range(u+1) if z+v>=a and u-z+v>=d)

def fullrank(rows,cols):
    basis={}
    for row in rows:
        row=[x%prime for x in row]
        for c in sorted(basis):
            if row[c]:
                f=row[c]
                row=[(x-f*y)%prime for x,y in zip(row,basis[c])]
        c=next((i for i,x in enumerate(row) if x),None)
        if c is not None:
            inv=pow(row[c],-1,prime)
            basis[c]=[x*inv%prime for x in row]
    return len(basis)==cols,len(basis)

records=[]
for D in range(1,21):
    ws=(D//2,D//4,D//5)
    if sum(ws)!=D-1: continue
    if D<8:
        records.append({'degree':D,'weights':ws,'reason':'degree<8'})
        continue
    mons=[(u,v) for v in range(D//2+1) for u in range(D-2*v+1) if u+2*v>=8]
    rows=[]
    for r,w in zip((1,3,4),ws):
        for b in range(r//2+1):
            for a in range(w):
                for d in range(w-a):
                    row=[coeff(u,v,b,r-b,a,d) for u,v in mons]
                    if any(row):rows.append(row)
    ok,rank=fullrank(rows,len(mons))
    assert ok
    records.append({'degree':D,'weights':ws,'origin_order_test':8,'rows':len(rows),'columns':len(mons),'rank_mod_prime':rank,'full_column_rank':ok})
result={'time_utc':datetime.now(timezone.utc).isoformat(),'prime':prime,'prime_trial_division_bound':isqrt(prime),'records':records,'exact_scope':'Symmetric F in Q[j,k], nonzero, row multiplicities w1,w3,w4>=0, deg F=w1+w3+w4+1. Such F has origin order <=7. Row-line stripping preserves origin order. This does not cover deficit>=2, nonsymmetric polynomials, products with nonuniform point weights, or other arithmetic methods.'}
Path(__file__).with_suffix('.json').write_text(json.dumps(result,indent=2),encoding='utf-8')
print(json.dumps(result))
