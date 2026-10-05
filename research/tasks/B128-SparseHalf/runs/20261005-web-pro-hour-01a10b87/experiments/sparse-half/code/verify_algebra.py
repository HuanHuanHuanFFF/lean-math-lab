#!/usr/bin/env python3
"""Exact symbolic identities plus rational sign/constant certificates.
Requires SymPy (available in the actual run); no numerical optimization.
"""
from pathlib import Path
from fractions import Fraction as F
import argparse,json
import sympy as s

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);args=ap.parse_args()
 a,d,h,q,L,r,X,k,t,w,B,x,r0=s.symbols('a d h q L r X k t w B x r0')
 checks={}
 def chk(name,expr):
  result=s.factor(expr);assert result==0,(name,result);checks[name]=str(result)
 chk('core_reciprocal_SOS',a*a/(4*d**3)-5*a/(4*d*d)+2/d-1/a-(a-2*d)**2*(a-d)/(4*d**3*a))
 chk('core_energy_numerator',a*a*(q-L)-a*(h-a)*L+a*(h*L-q*a))
 chk('symmetric_outer_edge_SOS',X/4-(r*(1-r)*X-r*r*k)-k/8-((s.Rational(1,2)-r)**2*(X-k)+2*k*(r-s.Rational(1,4))**2))
 chk('Holder_pointwise_SOS',t**3/w**2-3*a*a*t+2*a**3*w-(t-a*w)**2*(t+2*a*w)/w**2)
 f=x/8-x**3/(4*(1-x))
 chk('low_density_factorization',s.Rational(5,192)-f-(1-4*x)*(5-9*x-12*x*x)/(192*(1-x)))
 chk('refined_second_moment',1-s.Rational(5,4)*t-(1-t)**2-t*(s.Rational(3,4)-t))
 chk('derivative_f',8*(1-x)**2*s.diff(f,x)-(1-2*x-5*x*x+4*x**3))
 chk('derivative_f_sign_decomposition',1-2*x-5*x*x+4*x**3-((1-2*r0-5*r0*r0)+(r0-x)*(2+5*(r0+x))+4*x**3))
 H=2*x**3/(1-2*x)**2
 chk('base_penalty_derivative',s.diff(H,x)-2*x*x*(3-2*x)/(1-2*x)**3)
 Hp=x**3/(2*(B-x)**2)
 chk('refined_penalty_derivative',s.diff(Hp,x)-x*x*(3*B-x)/(2*(B-x)**3))
 A=F(27,1024);d0=A-F(1,50);base=A-2*d0**3/(1-2*d0)**2;plus=A-d0**3/(2*(F(9,25)-d0)**2)
 assert base==F(215582257403,8176320972800)
 assert plus==F(110637361403,4196188620800)
 assert F(1,50)<F(3,128)<plus<base<A
 rl=F(32,125);fl=rl/8-rl**3/(4*(1-rl));assert fl<plus
 signs={'d_positive':d0,'d_below_1_100':F(1,100)-d0,'base_low_density_gap':base-F(5,192),'refined_low_density_gap':plus-fl,'refined_f_derivative_numerator_lower':1-2*rl-5*rl*rl,'base_penalty_derivative_margin':1-F(75,117649),'refined_penalty_derivative_margin':1-F(54,42875),'refined_improvement':A-plus,'target_gap':plus-F(1,50)}
 assert all(v>0 for v in signs.values())
 data={'sympy_version':s.__version__,'zero_polynomial_checks':checks,'positive_rational_sign_certificates':{k:str(v) for k,v in signs.items()},'C_base':str(base),'C_refined':str(plus),'status':'all exact checks passed; not a Lean check or proof of external R1/R2/R3'}
 args.out.write_text(json.dumps(data,indent=2)+'\n');print(json.dumps(data,indent=2))
if __name__=='__main__':main()
