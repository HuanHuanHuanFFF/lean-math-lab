import json
import math
from pathlib import Path
import sympy as sp

OUT=Path(__file__).resolve().parent
r,u,v,a,b,c,e=sp.symbols('r u v a b c e')
y=5*r*u
s=25*r*v
F=lambda t:a*t+5*b*t**2+5*c*t**3+5*e*t**4+t**5
Q=b*(u*u-2*u*v+5*v*v)+c*r*((u-5*v)**3+4*u**3)+5*e*r*r*((u-5*v)**4+4*u**4)+5*r**3*((u-5*v)**5+4*u**5)
identity=sp.expand(F(y-s)+4*F(y)-a*(5*y-s)-(25*r)**2*Q)
assert identity==0

# This is a diagnostic of basic old recorded conditions, never an original witness.
diagnostics=[]
for d in range(20000,21000):
    if math.gcd(d,6)!=1 or len(sp.factorint(d))<3: continue
    for n in range((3129815*d)//1000000-5,(3129815*d)//1000000+2):
        m=n+d
        if math.gcd(d,n+3)==1: continue
        if not (31298*d<10000*(n+5) and 10000*(n+1)<31299*d): continue
        sm=n+m+6
        fac=sp.factorint(sm)
        if min(fac)<7 or len(fac)>2: continue
        P=lambda t:math.prod(t+i for i in range(1,6))
        diagnostics.append({'n':n,'m':m,'d':d,'d_factorization':{str(p):int(k) for p,k in sp.factorint(d).items()},'center_gcd':math.gcd(d,n+3),'s':sm,'s_factorization':{str(p):int(k) for p,k in fac.items()},'original_difference':P(m)-4*P(n),'original_witness':False})
        if len(diagnostics)>=3: break
    if len(diagnostics)>=3: break

record={'kind':'exact symbolic identity and finite diagnostics; not unrestricted proofs','sympy':sp.__version__,'five_adic_identity_zero':identity==0,'diagnostic_scan_configured_d':[20000,20999],'diagnostic_scanned_d':[20000,d],'early_stop_after':3,'diagnostics':diagnostics}
(OUT/'probe.json').write_text(json.dumps(record,indent=2),encoding='utf-8')
print(json.dumps(record,indent=2))

