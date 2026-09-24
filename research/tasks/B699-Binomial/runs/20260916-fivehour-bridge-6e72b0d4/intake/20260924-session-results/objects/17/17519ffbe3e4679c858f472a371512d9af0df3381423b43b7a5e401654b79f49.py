"""Exact algebraic checks only; does not claim to verify all analytic quantifiers."""
from pathlib import Path
import argparse,json
import sympy as s

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--output',type=Path,required=True);args=ap.parse_args()
    A,B,C,d,y,v,h,nu,r,u,z=s.symbols('A B C d y v h nu r u z')
    root=s.sqrt(3);checks=[]
    def eq(a,b,name):
        assert s.simplify(s.expand(a-b))==0,name
        checks.append(name)
    Q=d+v;P=Q+h*v
    div=nu**2-B*y-(h+3)*d**2-(2*h+3)*d*v-(h+1)*v**2
    orig=v*nu**2-P*Q**2+1
    eq(orig-v*div,v*B*y-d**3+1,'integer_divided_norm')
    eh=d*d*(h*h-6*h-11)-10*A*d*y*(h+1)-A*A*y*y*(4*h+3)-4*B*y
    eq((4*div).subs(nu,(h*d-Q)/2).subs(v,A*y),eh,'EH_from_DIVNORM')
    jb=16*A*d+120*y+27*B-4*B*h
    e=h-4*r*r-10*r-s.Rational(27,4)
    coupled=s.together(jb-(16*A/d**2+120*y/d-4*B*e)).subs(r,A*y/d)
    coupled=s.factor(coupled.subs(B,3*(d-1)/A))
    eq(s.rem(s.together(coupled).as_numer_denom()[0],3*y*y-d*d-d-1,y),0,'exact_J_remainder')
    delta=u*(1+2*u)/(1+u)**2
    eq(delta,u-u**3/(1+u)**2,'delta_cancellation')
    coeff=[s.binomial(s.Rational(5,2),i) for i in range(7)]
    assert coeff[3:]==[s.Rational(5,16),-s.Rational(5,128),s.Rational(3,256),-s.Rational(5,1024)]
    checks.append('E_Taylor_coefficients_through_order_4')
    f=(1+z)**s.Rational(5,2)
    eq(s.diff(f,z,6),-s.Rational(225,64)*(1+z)**s.Rational(-7,2),'sixth_derivative_negative')
    eq(s.diff(f,z,7),s.Rational(1575,128)*(1+z)**s.Rational(-9,2),'seventh_derivative_positive')
    k0=16+2*C/(5*root)
    k1=root*k0/8
    k2=-s.Rational(21,320)*k0+s.Rational(3,2)+24/k0
    sig=5*root/2;aa=s.Rational(15,16)
    bb=lambda k:root*(s.Rational(9,32)*k-s.Rational(15,4)-60/k)
    eq(sig*k1,aa*k0,'inverse_first_coefficient')
    eq(sig*k2,aa*k1-bb(k0),'inverse_second_coefficient')
    eq(20*k1-C,40*root,'integer_coordinate_constant')
    Z0=8*C*A/root+40*root
    eq(3*Z0**2,64*(C*A+15)**2,'leading_square_cancellation')
    L=320*root*C*k2
    D=5*(C*C-4800)
    N=-42*C**4+489600*C*C
    T=720*C**3-14976000*C
    eq(D*L,N+root*T,'explicit_quadratic_target')
    eq(T,720*C*(C*C-20800),'nonzero_irrational_coefficient')
    args.output.parent.mkdir(parents=True,exist_ok=True)
    args.output.write_text(json.dumps({'status':'PASS','checks':checks,'sympy':s.__version__},sort_keys=True,indent=2)+'\n')
    print('FULL_NORM_AND_SECOND_ORDER_IDENTITIES=PASS; CHECKS=',len(checks))
if __name__=='__main__':main()
