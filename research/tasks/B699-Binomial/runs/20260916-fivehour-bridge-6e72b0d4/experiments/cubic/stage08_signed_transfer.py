"""Exact signed-D polynomial identities, negative-branch bounds, and bottoms."""
import hashlib
import json
from pathlib import Path
from datetime import datetime, timezone

import sympy as sp

x,a,H,D,W,T=sp.symbols('x a H D W T')
def form(x,a,H,sign):
    d=x-sign
    return 4*a*(a-3*d)*(a-6*d)-(H*d-9*a)*(x*x-2)
assert sp.expand(form(-x,-a,H,1)+form(x,a,H,-1))==0
assert sp.expand(form(x,6*(x-1)-a,25,1)+form(x,a,29,1))==0
G=W**3-27*W*D**2+4*D**3+18*D*W+8*D**2-9*W-4*D
endpoint_signs={-6:1,-5:-1,0:-1,1:1,5:1,6:-1}
endpoint_polynomials={}
for z,sign in endpoint_signs.items():
    poly=sp.Poly(sp.expand(sign*G.subs(W,z*D).subs(D,-19-T)),T)
    assert all(c>0 for c in poly.all_coeffs())
    endpoint_polynomials[str(z)]=[int(c) for c in poly.all_coeffs()]
assert sp.expand((D*D+18*D-9).subs(D,-19-T))==T*T+20*T+10
f425=2*(a-1)*(2*a*a-88*a+875)
f429=2*(a-29)*(2*a*a-32*a+35)
assert sp.expand(form(4,a,25,-1)-f425)==0
assert sp.expand(form(4,a,29,-1)-f429)==0
assert 88**2-8*875==32**2-8*35==744
assert 27**2<744<28**2
remainders=[(aa**3-aa*aa+7*aa+2)%19 for aa in range(19)]
assert all(remainders)
assert all(int(sp.expand(form(16,a,25,-1)-4*(a**3-a*a+7*a+2)).coeff(a,k))%19==0 for k in range(4))
small=[]
for xx in (4,16):
    for hh in (25,29):
        roots=[aa for aa in range(1,3*(xx+1)) if form(xx,aa,hh,-1)==0]
        legal=[]
        for aa in roots:
            assert (aa*(xx-1))%3==0
            zeta=aa*(xx-1)//3
            if 4<=zeta<=xx*xx-4 and aa%3:legal.append(aa)
        assert not legal
        small.append({'x':xx,'H':hh,'roots_in_0_a_3D':roots,'legal_original_roots':legal})
out={
    'status':'PASS',
    'scope':'Symbolic transfer and negative-branch endpoint positivity, plus the complete two small bottoms; no infinite period check here.',
    'endpoint_signed_positive_coefficients_after_D_minus19_minusT':endpoint_polynomials,
    'derivative_outer_remainder':'T^2+20T+10',
    'x16_H25_mod19_remainders':remainders,
    'small_bottoms':small,
    'script_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
}
stamp=datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ')
dest=Path(__file__).with_name(f'stage08-signed-transfer-{stamp}.json')
dest.write_text(json.dumps(out,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'status':'PASS','output':dest.name,'small_bottoms':small}))
