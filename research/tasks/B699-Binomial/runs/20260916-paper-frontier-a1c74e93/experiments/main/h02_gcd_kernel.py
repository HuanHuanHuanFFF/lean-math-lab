"""Exact small interpolation probe: H02, degree 8, g^4 cancellation."""
from pathlib import Path
from datetime import datetime, timezone
import json
import sympy as sp

j, k, n, x, a, d = sp.symbols("j k n x a d")
mons = [n**u*x**v for v in range(3) for u in range(5-2*v)]
rows=[]
constraints=[]
for r,w in ((1,4),(3,2),(4,1)):
    for b in range(r+1):
        for dj in range(w):
            for dk in range(w-dj):
                row=[sp.diff((j*k)**2*m.subs({n:j+k,x:j*k}),j,dj,k,dk).subs({j:b,k:r-b}) for m in mons]
                if any(row):
                    rows.append(row)
                    constraints.append((r,b,dj,dk))
mat=sp.Matrix(rows)
ker=mat.nullspace()
result={"time_utc":datetime.now(timezone.utc).isoformat(),"role":"exploratory exact interpolation; not proof of NC5 closure", "degree":8,"weights":{"1":4,"3":2,"4":1},"condition_rows":len(rows),"columns":len(mons),"rank":mat.rank(),"kernel_dimension":len(ker),"polynomials":[]}
for vec in ker:
    lcm=sp.ilcm(*[z.q for z in vec])
    q=sp.expand(sum(z*lcm*m for z,m in zip(vec,mons)))
    f=sp.expand(x*x*q)
    # legal half-row j>=6,k=j+d; inspect exact coefficients for sign.
    semi=sp.Poly(f.subs({n:2*(a+6)+d,x:(a+6)*(a+6+d)}).expand(),a,d)
    vals=semi.coeffs()
    result["polynomials"].append({"Q_n_X":str(sp.factor(q)),"F_n_X":str(sp.factor(f)),"halfrow_min_coefficient":str(min(vals)),"halfrow_max_coefficient":str(max(vals)),"all_positive":all(z>0 for z in vals),"all_negative":all(z<0 for z in vals),"halfrow_terms":len(vals),"Q_as_jk":str(sp.factor(q.subs({n:j+k,x:j*k})))} )
Path(__file__).with_suffix(".json").write_text(json.dumps(result,indent=2),encoding="utf-8")
print(json.dumps(result))
