#!/usr/bin/env python3
"""Exact algebra supporting the NEW phase-retaining local projection."""
import argparse,json
from pathlib import Path
import sympy as sp

def run():
    A,B,d,y,h,nu,v,W,c=sp.symbols('A B d y h nu v W c')
    Q=d+v;P=Q+h*v
    residual=nu**2-(W+(h+3)*d**2+(2*h+3)*d*v+(h+1)*v**2)
    checks={}
    def check(name,expr):
        if sp.expand(expr)!=0:raise ArithmeticError(name)
        checks[name]=True
    check('DIVNORM_after_integer_cancellation',v*nu**2-P*Q**2+1-v*residual-(v*W-d**3+1))
    EH=d**2*(h**2-6*h-11)-10*A*d*y*(h+1)-A**2*y**2*(4*h+3)-4*B*y
    check('EH_equals_four_DIVNORM',4*residual.subs({v:A*y,W:B*y,nu:(h*d-d-A*y)/2},simultaneous=True)-EH)
    C=4*c;Z=20*B-320*A-C
    F=3*Z**2-64*(C*A+15)**2
    fs=3*(5*B-80*A-c)**2-4*(4*A*c+15)**2
    check('alternate_F_over_16',F-16*fs)
    w=5*fs+42*c*c-18000
    check('alternate_V',w*w-97200*c*c+194400000-(w*w-3*(180*c)**2+194400000))
    check('alpha_power_eight',(2+sp.sqrt(3))**8-(18817+10864*sp.sqrt(3)))
    check('gamma_norm',sp.Integer(18817)**2-3*sp.Integer(10864)**2-1)
    assert 18817%7==1 and 10864%7==0
    checks['gamma_is_one_mod7']=True
    assert 2**6*3**5*5**5==48600000
    checks['small_part_constant']=True
    a,b=sp.symbols('a b',integer=True)
    wp=sp.expand(w.subs({A:2*a,B:4*b}))
    difference=sp.Poly(wp-(9*c*c+8*b*c-4),a,b,c)
    assert all(int(z)%16==0 for z in difference.coeffs())
    checks['integer_w_mod16_identity']=True
    return {'status':'ROUND26_SYMBOLIC=PASS','checks':checks,'sympy_version':sp.__version__}

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);a=ap.parse_args()
    r=run();a.out.parent.mkdir(parents=True,exist_ok=True)
    a.out.write_text(json.dumps(r,sort_keys=True,indent=2)+'\n',encoding='utf-8')
    print(r['status']+'; CHECKS='+str(len(r['checks'])))
