"""Exact polynomial identities only. This is not a proof-assistant script."""
import json
from pathlib import Path
import argparse
import sympy as s

def main():
    parser=argparse.ArgumentParser()
    parser.add_argument('--output',type=Path,required=True)
    args=parser.parse_args()
    d,v,W,h,nu,A,B,y,E,z=s.symbols('d v W h nu A B y E z')
    Q=d+v;P=Q+h*v
    divided=nu**2-W-(h+3)*d**2-(2*h+3)*d*v-(h+1)*v**2
    core=v*nu**2-P*Q**2+1
    assert s.expand(core-v*divided+(d**3-1-v*W))==0
    Fh=d**2*(h**2-6*h-11)-10*d*v*(h+1)-v**2*(4*h+3)-4*W
    assert s.expand(4*divided.subs(nu,(h*d-Q)/2)-Fh)==0
    Y=d*nu-Q**2
    # Reconstruct the full norm using the two exact source equations.
    norm=s.expand(v*Y**2-Q**5+d**2)
    assert s.expand(norm-d**2*core+v*Q**2*d*(2*nu-h*d+Q))==0
    r=A*y/d
    J=16*A*d+120*y+27*B-4*B*h
    shifted=J.subs(h,4*r**2+10*r+s.Rational(27,4)+E)-(16*A/d**2+120*y/d-4*B*E)
    shifted=s.together(shifted.subs(B,3*(d-1)/A))
    numerator=s.fraction(shifted)[0]
    assert s.rem(s.Poly(numerator,y),s.Poly(3*y*y-d*d-d-1,y)).is_zero
    T2=1+s.Rational(5,2)*z+s.Rational(15,8)*z**2
    T3=T2+s.Rational(5,16)*z**3
    TL=T2+z**3/8
    upper=z**4*(25*z*z+44*z+20)/256
    lower=z**3*(24+55*z+34*z*z-z**3)/64
    assert s.expand(T3*T3-(1+z)**5-upper)==0
    assert s.expand((1+z)**5-TL*TL-lower)==0
    # Original double-grid coupling, only an identity.
    JA=12*h-16*A*A-81
    coupled=B*JA+3*J-48*A-360*y
    assert s.expand(coupled+16*A*(A*B-3*d+3))==0
    checks=['DIVIDED_NORM_IDENTITY','H_QUADRATIC_IDENTITY','FULL_NORM_IDENTITY',
            'EXACT_J_REMAINDER','ALGEBRAIC_SQRT_BRACKETS','OLD_COUPLING_IDENTITY']
    result={'status':'PASS','sympy_version':s.__version__,'checks':checks,
            'no_external_analytic_theorem_used':True,'lean_run':False}
    args.output.parent.mkdir(parents=True,exist_ok=True)
    args.output.write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n')
    print('SYMBOLIC_IDENTITIES=PASS; CHECKS=',len(checks))
if __name__=='__main__': main()
