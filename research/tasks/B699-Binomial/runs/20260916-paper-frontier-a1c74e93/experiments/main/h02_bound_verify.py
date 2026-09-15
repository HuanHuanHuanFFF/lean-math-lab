"""Exact certificates for the new H02 g^4 bound, independently of old scripts."""
from datetime import datetime, timezone
from pathlib import Path
from math import gcd, comb
import json
import sympy as sp

j,k,a,d=sp.symbols("j k a d")
n=j+k
X=j*k
P=X**2*(X-n+1)*(n*n-n-3*X)
D=(n-1)**4*(n-3)**2*(n-4)
cert=[]
for name,expr in (("P_positive",P),("nD_minus_128P",n*D-128*P),("nD_minus_144P",n*D-144*P)):
    poly=sp.Poly(sp.expand(expr.subs({j:a+6,k:a+6+d})),a,d)
    terms=[{"powers":list(powers),"coefficient":int(c)} for powers,c in poly.terms()]
    cert.append({"name":name,"terms":terms,"min_coefficient":min(int(c) for c in poly.coeffs()),"positive_all":all(c>0 for c in poly.coeffs())})
grid=[]
for r,w in ((1,4),(3,2),(4,1)):
    for b in range(r+1):
        for u in range(w):
            for v in range(w-u):
                val=sp.diff(P,j,u,k,v).subs({j:b,k:r-b})
                grid.append({"r":r,"b":b,"dj":u,"dk":v,"value":int(val)})
assert all(x["value"]==0 for x in grid)
assert cert[0]["positive_all"] and cert[1]["positive_all"]
result={"time_utc":datetime.now(timezone.utc).isoformat(),"P":"(jk)^2 (j-1)(k-1) (j^2-jk+k^2-j-k)","D":"(n-1)^4(n-3)^2(n-4)","grid_zero_conditions":len(grid),"grid":grid,"positivity_certificates":cert,"conclusion":"For j,k>=6: 0<P<nD/128. With NC5 H02 complete powers, g^4<C*n/128, C=s1^4*s3^2*s4<=11250. Not full NC5 closure."}
Path(__file__).with_suffix(".json").write_text(json.dumps(result,indent=2),encoding="utf-8")
print(json.dumps({"grid_zero_conditions":len(grid),"certificates":[{k:x[k] for k in ("name","min_coefficient","positive_all")} for x in cert],"result":result["conclusion"]}))
