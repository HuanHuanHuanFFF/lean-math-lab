#!/usr/bin/env python3
from __future__ import annotations
import json, math
from pathlib import Path

def eval_poly(coeff_desc, x, p):
    y=0
    for c in coeff_desc:
        y=(y*x+c)%p
    return y

checks={}
P8=[1874243735045157411,-7588066639400463060,5976533651595972543,-6182115393344250334,6112773480199388080,-2506338132652428256,347123565112271360,-258046700361728,45804108713984]
vals=[eval_poly(P8,a,17) for a in range(17)]
assert vals==[12,12,2,3,6,6,9,3,14,5,16,2,10,4,1,2,12] and all(vals)
checks['P8_mod17']=vals
Psp=[354294,-127705005,-164557100]
vals7=[eval_poly(Psp,a,7) for a in range(7)]
assert vals7==[6,1,2,2,1,6,3] and all(vals7)
checks['special_mod7']=vals7
factors={
 'C3':([6561,5832,1296,64],5,[4,3,2,2,4]),
 'Q0':([295245,314928,104976,11520,256],7,[4,3,5,4,5,3,4]),
 'Q1':([767637,787320,244944,23040,256],5,[1,2,4,4,2]),
 'Q2':([413343,393660,104976,5760,-256],5,[4,3,1,1,3]),
}
for name,(cs,p,expected) in factors.items():
    vv=[eval_poly(cs,a,p) for a in range(p)]
    assert vv==expected and all(vv)
    checks[name]={"p":p,"values":vv}
r=math.isqrt(11280868); assert r*r!=11280868
checks['nonsquare_discriminant']=11280868
checks['canonical_linear_gcd']=math.gcd(math.gcd(60,183),40)
assert checks['canonical_linear_gcd']==1
checks['status']='INDEPENDENT_CHECK=PASS'
path=Path(__file__).resolve().parents[1]/'outputs'/'independent_check.json'
path.write_text(json.dumps(checks,indent=2,sort_keys=True)+"\n")
print(checks['status'])
