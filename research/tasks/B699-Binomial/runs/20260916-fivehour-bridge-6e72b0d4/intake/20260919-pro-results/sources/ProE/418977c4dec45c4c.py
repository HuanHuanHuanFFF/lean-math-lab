#!/usr/bin/env python3
"""Construct exact algebra certificates. SymPy is used only by this constructor."""
from __future__ import annotations
import argparse, json
from pathlib import Path
import sympy as s

def pack(expr, names):
    vs = [s.Symbol(n) for n in names]
    p = s.Poly(s.expand(expr), *vs, domain=s.QQ)
    return {"vars": names, "terms": [[list(m), str(c)] for m, c in p.terms() if c]}

def build():
    d,y,x,h,P,Q,V,t,nu,n,C,u,g,H,Z,D,eps,T,R,Y,mu,ze = s.symbols(
        'd y x h P Q V t nu n C u g H Z D eps T R Y mu ze')
    hd=d*d+2*d+5
    K=d*d+d+4
    J=d**3+s.Rational(9,2)*d-8
    F=(d*d+3-2*y)*(d+1+y)**2-(d*d+d+4-y)**2
    gap=7-s.Rational(5,2)*d+(d*d-2*d+2)*y-2*y*y
    lo=(5*d-3)/(2*d*d)-1/d**3
    hi=(5*d-3)/(2*d*d)
    rows={
      'homogeneous_recovery': (P*(h*Q-P)**2-Q*(h*Q+P)**2+4*h,['P','Q','h']),
      'limiting_cubic': (x*(h-x)**2-(h+x)**2,['x','h']),
      'limiting_derivative': (3*x*x-(4*h+2)*x+h*h-2*h,['x','h']),
      'local_F': (F,['d','y']),
      'tau_polynomial': ((d**3+2*d-1)*Q**3+(d*d-2*d+2)*V*Q**2-2*V*V*Q+2,['d','Q','V']),
      'fractional_gap': (gap,['d','y']),
      'integer_K': (K,['d']), 'integer_J': (J,['d']),
      'saturated_norm': (C*u*g*g-9*Z*H*H-1,['C','u','g','Z','H']),
      'saturated_row': (n-6*C*H-2,['n','C','H']),
      'saturated_discriminant': (Z*(n-1)-C*C+g*g*D*D,['Z','n','C','g','D']),
      'saturated_epsilon': (3*H-2*u*g*g,['H','u','g']),
      'saturated_T_norm': (u*g*g*T-Z*eps*eps-1,['u','g','T','Z','eps']),
      'saturated_rho_polynomial': (R*Y**3-2*Y*Y-2*Y+1,['R','Y']),
      'same_Psi_J': (54*u*D,['u','D']),
      'same_Psi_discriminant': (27*u*u*Z,['u','Z']),
      'minimal_divisor': (V*(nu*nu-h*Q*Q)-(Q**3-1),['V','nu','h','Q']),
      'minimal_linear': (h*ze-2*mu*(P-Q),['h','ze','mu','P','Q']),
      'outer_first_window': (-35,['n']),
    }
    positive={
      'lower_residual': -F.subs(y,lo)-1,
      'upper_residual': F.subs(y,hi),
      'fraction_lower': gap.subs(y,lo)-lo,
      'fraction_upper': 1-gap.subs(y,hi)-s.Rational(2,27),
      'y_lower_positive': lo,
      'y_upper_below_one': 1-hi,
      'gap_derivative_bound': d*d-2*d-3,
      'cubic_at_four': 3*hd*hd-40*hd+48,
    }
    positives={}
    for name,expr in positive.items():
      num,den=s.fraction(s.factor(expr))
      coeff=s.Poly(s.expand(num.subs(d,d+64)),d).all_coeffs()[::-1]
      if not all(c>0 for c in coeff): raise ValueError(name)
      positives[name]={'numerator':pack(num,['d']),'denominator':pack(den,['d']),
         'shift':64,'shifted_coefficients':[str(c) for c in coeff]}
    L=s.Rational(1683,1000); U=s.Rational(1684,1000)
    ff=lambda a:a**3-27*a*a+143*a-169
    nn=lambda a:a*(13-a)/2
    ss=lambda a:(13+a)/2
    tt=lambda a:nn(a)-ss(a)
    margins={
      'target_above_left':-ff(L)-s.Rational(52,100**3),
      'right_positive':ff(U),
      'sigma_above_7':ss(L)-7,'sigma_below_8':8-ss(U),
      'n_above_9':nn(L)-9,'n_below_10':10-nn(U)-s.Rational(2,100**3),
      'tau_above_2':tt(L)-2,'tau_below_3':3-tt(U)-s.Rational(2,100**3),
    }
    return {
      'schema':'B699-isolated3-and-quadratic-carry-v1',
      'contracts':{'d_min':64,'d_parity':'even','h':'d^2+2*d+5','Q_min':3,
        'extra':'Q^3>h','root_branch':'P>=4*Q','minimal_branch':'g=1,lambda=1,w=1,xi=2*mu',
        'isolated_case':'mu=3 and 3 does not divide t3',
        'gcd_odd_g':6,'gcd_even_g':3},
      'identities':{k:pack(e,v) for k,(e,v) in rows.items()},
      'positive_certificates':positives,
      'f3_table':[[a,b,(a*b)%3,((a-1)*(b-1))%3] for a in range(3) for b in range(3) if (a+b)%3==2],
      'real_shell':{'h':13,'Q_min':100,'L':str(L),'U':str(U),
          'strict_margins':{k:str(v) for k,v in margins.items()},
          'floors':{'sigma':7,'tau':2,'n':9},'not_integer_inputs':True},
      'weak_integer_example':{'n':44,'j':19,'prime_witness':43,'mu':3,'g':1,'N':43},
    }

def main():
    ap=argparse.ArgumentParser();ap.add_argument('output',type=Path);args=ap.parse_args()
    obj=build();args.output.parent.mkdir(parents=True,exist_ok=True)
    args.output.write_text(json.dumps(obj,ensure_ascii=False,sort_keys=True,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({'status':'GENERATED','identities':len(obj['identities']),
       'positive_certificates':len(obj['positive_certificates'])}))
if __name__=='__main__':main()
