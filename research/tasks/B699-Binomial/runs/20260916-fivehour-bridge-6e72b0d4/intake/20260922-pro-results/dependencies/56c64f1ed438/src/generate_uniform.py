#!/usr/bin/env python3
"""Generate exact, finite polynomial certificates for the uniform proof.
No scan of h, Q, n, j is used here.
"""
from __future__ import annotations
import json
from pathlib import Path
import argparse
import sympy as s


def generate() -> dict:
    d,x,h,y=s.symbols('d x h y')
    F=-2*y**3+(h-1)*y**2+2*h*y-h*h
    Z=h*y-2*y*y
    T=Z+y-h
    GN=lambda z:2*z**3+(7*h+1)*z*z+(-2*h**3+2*h*h)*z+h**4
    GT=lambda z:z**3+(6*h+1)*z*z+(-h**3+6*h*h)*z+h**3
    margins={
      'F_at_d_plus_1':2*d**3-4*d*d-8*d-3,
      'F_second_derivative_positive':2*d*d-12*d-14,
      'F_derivative_minus_d_cubed':d**3-4*d*d-2*d,
      'x_above_half_h':d*d-4*d-4,
      'Z_and_T_increasing':d*d-4*d-4,
      'T_positive':d**3-3*d*d-3*d-2,
      'F_derivative_bound':4*d**3-26*d*d,
      'GN_derivative_bound':8*d**6-42*d**5-2*d**4-6*d**3,
      'GT_derivative_bound':36*d**6-36*d**5-6*d**4-6*d**3,
      'phase_perturbation_below_integer_gap':d**3-512*d-1536,
      'y_perturbation_below_integer_gap':d**7-64,
      'integer_bracket_Z_lower_margin':2*d*d-4*d-2,
      'integer_bracket_T_lower_margin':d*d-3*d-2,
      'integer_bracket_derivative_margin':d-20,
    }
    def uni(p,var):
      p=s.Poly(s.expand(p),var)
      return [int(p.nth(i)) for i in range(p.degree()+1)]
    def bi(p):
      return [[int(i),int(j),int(c)] for (i,j),c in s.Poly(s.expand(p),h,y).terms()]
    data={'schema':'B699-PHASE1024-uniform-v1','shift':32,'margins':[], 'identities':[]}
    for name,p in margins.items():
      shifted=uni(p.subs(d,32+x),x)
      if not shifted[0]>0 or any(c<0 for c in shifted):
        raise ArithmeticError(f'nonpositive margin {name}')
      data['margins'].append({'id':name,'coefficients':uni(p,d),'shifted':shifted})
    for name,p in [('GN_of_Z',GN(Z)),('GT_of_T',GT(T))]:
      q,r=s.div(p,F,y)
      if s.expand(r)!=0: raise ArithmeticError(name)
      data['identities'].append({'id':name,'quotient_h_y':bi(q)})
    # A dyadic expansion for the asymptotic density argument.
    # y=d+1/(2d)+1/d²+O(d^-3) follows from this residual and F'>d³.
    y_approx=d+s.Rational(1,2)/d+1/d**2
    residual=s.factor(F.subs({h:d*d,y:y_approx}))
    num,den=s.fraction(residual)
    data['asymptotic_residual']={'numerator':uni(num,d),'denominator':uni(den,d)}
    return data

if __name__=='__main__':
    p=argparse.ArgumentParser(); p.add_argument('output',type=Path); a=p.parse_args()
    if a.output.exists(): raise SystemExit('refusing to overwrite output')
    a.output.parent.mkdir(parents=True,exist_ok=True)
    data=generate(); a.output.write_text(json.dumps(data,indent=2,sort_keys=True)+'\n')
    print(json.dumps({'margins':len(data['margins']),'identities':len(data['identities']),
                      'positive_shifted_coefficients':sum(sum(c>0 for c in t['shifted']) for t in data['margins'])}))
