"""Small exact polynomial checks; not a proof assistant or an NC3 search."""
import argparse,json
from pathlib import Path
import sympy as s

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);a=ap.parse_args()
    A,B,c,d,y,h,w,C,V,U,X,E,O,K,N=s.symbols('A B c d y h w C V U X E O K N')
    checks=[]
    def check(name,expr):
        if s.expand(expr)!=0:raise AssertionError(name)
        checks.append(name)
    Z=20*B-320*A-4*c
    F=3*Z**2-64*(4*c*A+15)**2
    f=3*(5*B-80*A-c)**2-4*(4*A*c+15)**2
    check('F=16*f_for_C=4c',F-16*f)
    check('V_norm_rewrite',w*w-97200*c*c+194400000-(w*w-3*(180*c)**2+194400000))
    check('V_three_adic_form',w*w-97200*c*c+194400000-(w*w-97200*(c*c-2000)))
    check('C_and_c_norm_equivalence',(w*w-6075*C*C+194400000).subs(C,4*c)-(w*w-97200*c*c+194400000))
    nu=(h*d-d-A*y)/2;v=A*y
    dn=nu**2-B*y-(h+3)*d*d-(2*h+3)*d*v-(h+1)*v*v
    eh=d*d*(h*h-6*h-11)-10*A*d*y*(h+1)-A*A*y*y*(4*h+3)-4*B*y
    check('EH_equals_4DIVNORM_after_linear_nu',4*dn-eh)
    rt=s.sqrt(3)
    ep=s.expand((w+45*rt*C)**7);em=s.expand((w-45*rt*C)**7)
    e7=s.expand((ep+em)/2);o7=s.expand((ep-em)/(2*rt))
    check('eta7_norm',(e7*e7-3*o7*o7)-(w*w-6075*C*C)**7)
    tx=K*V*V*U-147*O;ty=K*V*V*X-49*E
    norm=tx*tx-3*ty*ty
    target=K*K*V**4+294*K*V*V*(X*E-U*O)-7203*(V-N)**7
    residual=K*K*V**4*(U*U-3*X*X-1)-7203*(E*E-3*O*O-(V-N)**7)
    check('TRUE_Theta_norm_including_cross_term',norm-target-residual)
    check('Theta_norm_mod_V_constant',s.rem(s.Poly(target-7203*N**7,V),s.Poly(V,V)).as_expr())
    check('constant_N0_factorization',s.Integer(194400000)-2**8*3**5*5**5)
    check('constant_97200_factorization',s.Integer(97200)-2**4*3**5*5**2)
    check('constant_Theta_gcd_factorization',s.Integer(7203)*194400000**7-2**56*3**36*5**35*7**4)
    check('fixed_gcd_bound',s.Integer(116688600000)-2**6*3**5*5**5*7**4)
    out={'status':'PASS','sympy_version':s.__version__,'checks':checks,'count':len(checks),
         'limits':'Polynomial identities only. Infinite valuation proofs and finite cover proofs are separately documented.'}
    a.out.parent.mkdir(parents=True,exist_ok=True);a.out.write_text(json.dumps(out,sort_keys=True,indent=2)+'\n')
    print('SYMBOLIC_IDENTITIES=PASS; CHECKS='+str(len(checks)))
if __name__=='__main__':main()
