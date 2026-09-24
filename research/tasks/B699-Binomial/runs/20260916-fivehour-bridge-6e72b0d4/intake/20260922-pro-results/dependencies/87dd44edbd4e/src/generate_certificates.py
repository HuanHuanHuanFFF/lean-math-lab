#!/usr/bin/env python3
"""Generate exact uniform polynomial certificates; this is not an n/j scan.
Requires SymPy only for generation. Both verification programs use stdlib.
"""
from __future__ import annotations
import argparse
import json
from pathlib import Path
import sympy as s


def build() -> dict:
    d,A,U,V=s.symbols('d A U V')
    h=d*d+A-1
    center=A/(2*d)+1/d**2+(20-A*A)/(8*d**3)
    lo,hi=center-1/d**3,center+1/d**3
    def f(e):
        y=d+e
        return h*(y*y-h+2*y)-2*y**3-y*y
    def E(e):
        return (d*d-4*d+A)*e-2*e*e-A*d/2+2*A-1
    items={
      'eta_minus_positive':(lo,1,64),
      'eta_plus_below_quarter':(s.Rational(1,4)-hi,1,64),
      'f_minus_below_minus_one':(-f(lo)-1,1,64),
      'f_plus_positive':(f(hi),1,64),
      'tau_lower_margin_odd_d':(s.Rational(1,4)+E(lo),1,64),
      'tau_upper_margin_odd_d':(s.Rational(1,4)-E(hi)-s.Rational(2,27),1,64),
      'tau_derivative_margin':(d*d-4*d+A-1,1,64),
      'x_minus_four_margin':(h-2*(d+hi)-4,1,64),
      'even_d_A_ge4_tau_above_eta':(E(lo)-hi,4,64),
      'even_d_A_ge4_tau_below_one':(1-E(hi)-s.Rational(2,27),4,64),
    }
    slo=1/d+1/d**2+1/d**3
    shi=1/d+1/d**2+2/d**3+6/d**4
    items.update({
      'A2_eta_minus_positive':(slo,0,256),
      'A2_eta_plus_below_quarter':(s.Rational(1,4)-shi,0,256),
      'A2_f_minus_below_minus_one':((-f(slo)-1).subs(A,2),0,256),
      'A2_f_plus_positive':(f(shi).subs(A,2),0,256),
      'A2_tau_above_minus_quarter':((s.Rational(1,4)+E(slo)).subs(A,2),0,256),
      'A2_tau_plus_eps_negative':((-E(shi)-2/(d*d+1)).subs(A,2),0,256),
      'A2_x_minus_four_margin':(d*d+1-2*(d+shi)-4,0,256),
    })
    def terms(expr,variables):
        out=[]
        for mon,c in s.Poly(s.expand(expr),*variables).terms():
            assert c.q==1
            out.append([*mon,str(c)])
        return sorted(out)
    out=[]
    for name,(ex,amin,scale) in items.items():
        num,den=s.fraction(s.cancel(ex))
        domain={'kind':'general','A_min':amin,'scale':scale} if amin else {'kind':'A2','d_min':scale}
        shifted=s.expand(num.subs(d,scale*A*A+V).subs(A,amin+U)) if amin else s.expand(num.subs(d,scale+V))
        st=terms(shifted,(U,V))
        assert all(int(t[-1])>0 for t in st)
        out.append({'id':name,'domain':domain,'numerator':terms(num,(d,A)),
                    'denominator':terms(den,(d,A)),'shifted_numerator':st})
    return {'schema':'B699-NEAR-SQUARE-CARRY-v1','coefficient_encoding':'exact integer strings',
            'variables':['d','A'],'shift_variables':['U','V'],
            'scope':'17 uniform rational inequalities; no finite n/j sweep','items':out}


def main():
    ap=argparse.ArgumentParser();ap.add_argument('--output',required=True,type=Path);args=ap.parse_args()
    data=build();args.output.parent.mkdir(parents=True,exist_ok=True)
    args.output.write_text(json.dumps(data,indent=2,sort_keys=True)+'\n',encoding='utf-8')
    print(json.dumps({'status':'GENERATED','items':len(data['items']),
                      'shifted_terms':sum(len(x['shifted_numerator']) for x in data['items'])},sort_keys=True))
if __name__=='__main__':main()
