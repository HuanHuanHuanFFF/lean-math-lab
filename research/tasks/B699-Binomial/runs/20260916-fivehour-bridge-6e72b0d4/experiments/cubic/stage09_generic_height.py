"""Generate exact homogeneous Bezout height constants for six fixed short models."""
from fractions import Fraction as F
from pathlib import Path
from datetime import datetime, timezone
from math import ceil
import hashlib,json
import sympy as sp


def log2_bounds(terms=40):
    lo=sum((F(2,(2*k+1)*3**(2*k+1)) for k in range(terms)),F(0))
    return lo,lo+F(9,4*(2*terms+1)*3**(2*terms+1))


def coeffs(poly,z):
    p=sp.Poly(poly,z)
    return [int(p.nth(i)) for i in range(4)]


def model_data(k):
    z=sp.symbols('z')
    A=-36*(8*k*k+243)
    B=32*k**4+31104*k*k-314928
    f=z**4-2*A*z*z-8*B*z+A*A
    g=4*(z**3+A*z+B)
    R=abs(int(sp.resultant(f,g,z)))
    assert R>0
    records=[]
    for label,ff,gg in [('R_b7',f,g),('R_a7',sp.expand(z**4*f.subs(z,1/z)),sp.expand(z**4*g.subs(z,1/z)))]:
        u,v,d=sp.gcdex(ff,gg,z)
        assert d==1
        uu=sp.Poly(sp.expand(R*u),z);vv=sp.Poly(sp.expand(R*v),z)
        assert all(c.q==1 for c in uu.all_coeffs()+vv.all_coeffs())
        assert uu.degree()<=3 and vv.degree()<=3
        assert sp.expand(uu.as_expr()*ff+vv.as_expr()*gg)==R
        cc,dd=coeffs(uu,z),coeffs(vv,z)
        records.append({'homogeneous_identity':label,'u_low_to_high':cc,'v_low_to_high':dd,
                        'L':sum(map(abs,cc+dd))})
    L=max(r['L'] for r in records)
    S=max(sum(abs(int(c)) for c in sp.Poly(poly,z).all_coeffs()) for poly in (f,g))
    _,log2hi=log2_bounds()
    return {'k':k,'A':A,'B':B,'resultant_abs':R,'bezout_pairs':records,'L':L,'S':S,
            'height_lower_error_less_than':ceil(F(L.bit_length(),3)*log2hi),
            'height_upper_error_less_than':ceil(F(S.bit_length(),3)*log2hi)}


def main():
    models=[model_data(k) for k in (2,7,11,16,20,25)]
    out={'status':'PASS','scope':'Exact Bezout identities and generic height error constants only; no new MW group or exponent bound.',
         'models':models,'script_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
    stamp=datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ')
    dest=Path(__file__).with_name(f'stage09-generic-height-{stamp}.json')
    dest.write_text(json.dumps(out,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({'status':'PASS','output':dest.name,'constants':[
        {'k':m['k'],'lower_error':m['height_lower_error_less_than'],'upper_error':m['height_upper_error_less_than']}
        for m in models]}))


if __name__=='__main__':main()
