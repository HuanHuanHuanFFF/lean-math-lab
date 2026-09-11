from datetime import datetime,timezone
from hashlib import sha256
from math import comb,gcd
from pathlib import Path
import json
import sympy as s

def mc(a,k):
    if a==0:return int(k==0)
    return comb(a+k-1,k)

mc_cases=0
for a in range(11):
    for b in range(11):
        for k in range(16):
            assert sum(mc(a,r)*mc(b,k-r) for r in range(k+1))==mc(a+b,k)
            mc_cases+=1
coefficient_cases=0
content_cases=0
for u in range(21):
    for b in range(21):
        q=[(-1)**u*comb(2*u-r,u)*comb(b+r,r) for r in range(u+1)]
        p=[(-1)**(u+k)*comb(2*u+b+1,k)*comb(2*u-k,u) for k in range(u+1)]
        g=gcd(*q)
        assert g>0
        for k in range(u+1):
            convolution=sum(comb(b+r,r)*comb(2*u-r,k-r) for r in range(k+1))
            assert convolution==comb(2*u+b+1,k)
            weighted=sum(comb(2*u-r,u)*comb(b+r,r)*comb(u-r,k-r) for r in range(k+1))
            assert weighted==comb(2*u-k,u)*comb(2*u+b+1,k)
            triangular=(-1)**k*sum(q[r]*comb(u-r,k-r) for r in range(k+1))
            assert triangular==p[k]
            assert p[k]%g==0
            coefficient_cases+=1
        assert gcd(*p)==g
        content_cases+=1
z=s.symbols('z')
transform_cases=0
for u in range(7):
    for b in range(7):
        q=[(-1)**u*comb(2*u-r,u)*comb(b+r,r) for r in range(u+1)]
        p=sum((-1)**(u+k)*comb(2*u+b+1,k)*comb(2*u-k,u)*z**k for k in range(u+1))
        tq=sum(q[r]*(-z)**r*(1-z)**(u-r) for r in range(u+1))
        assert s.expand(p-tq)==0
        transform_cases+=1
rec={'status':'PASS','utc':datetime.now(timezone.utc).isoformat(),'multichoose_convolution_cases':mc_cases,'multichoose_range':'a,b=0..10; k=0..15','triangular_coefficient_cases':coefficient_cases,'coefficient_range':'u,B=0..20; all k=0..u','whole_content_gcd_equalities':content_cases,'polynomial_transform_cases':transform_cases,'polynomial_range':'u,B=0..6','scope':'exact finite integer and symbolic checks; the universal content conclusion requires the separately proposed inductive proof','script_sha256':sha256(Path(__file__).read_bytes()).hexdigest()}
Path(__file__).with_name('content-transform-check.json').write_text(json.dumps(rec,indent=2)+'\n',encoding='utf-8')
print(json.dumps(rec))
