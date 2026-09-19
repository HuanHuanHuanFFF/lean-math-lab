#!/usr/bin/env python3
"""Build exact symbolic evidence. No n/j/prime/exponent search is performed."""
from __future__ import annotations
import argparse, json
from pathlib import Path
import sympy as sp

NAMES = ['A','B','t','X','Y','T','S','V']

def main() -> None:
    parser=argparse.ArgumentParser(); parser.add_argument('output',type=Path); args=parser.parse_args()
    A,B,t,X,Y,T,S,V=sp.symbols(' '.join(NAMES)); variables=(A,B,t,X,Y,T,S,V)
    F=A*Y*X**2+B*X+1; K=B*X+1; sig=t*Y*X**2
    D=Y*A*(A+2*t)-t*B**2; U=D*K-A*t*Y; E=t*U
    R2=t*K*(t*K+A); Q=A*Y*(t*t*F-2*t*t*K-A*t)+t*t*B*B
    equations=[
      ('REM_QUADRATIC', A*A*sig*(sig-1), F*(t*t*F-2*t*t*K-A*t)+R2),
      ('REM_LINEAR', A*Y*R2-t*t*B*B*F, E),
      ('EXACT_BEZOUT', A**3*Y*sig*(sig-1), F*Q+E),
      ('ZERO_ELIMINATION', t*t*B*B+(A+2*t)*U, D*((A+2*t)*K-t)),
      ('ZERO_BOUND', A*(A+2*t)-3*t*t, (A-t)*(A+3*t)),
      ('SIZE_BASE', T*T-3*(T-1), (T-3)**2+3*(T-3)+3),
    ]
    Ef=(3-(X-4)**2)*((X-4)*X+1)-1
    equations += [('FAILURE_RESIDUAL',Ef,-X**4+12*X**3-46*X**2+60*X-14)]
    size=((T**5+V)**2-3*(T-1)*T**3*(T**5+V)-3*(T-1)**2).subs(T,S+3)
    failure=(-Ef-(2*X*X-4*X+1)).subs(X,S+16)
    def encode(expr):
        poly=sp.Poly(sp.expand(expr),*variables,domain=sp.ZZ)
        return [{'powers':list(m),'coefficient':int(c)} for m,c in poly.terms() if c]
    identities=[]
    for name,lhs,rhs in equations:
        if sp.expand(lhs-rhs)!=0: raise ArithmeticError(name)
        identities.append({'id':name,'lhs':encode(lhs),'rhs':encode(rhs)})
    positives=[]
    for name,expr in [('SIZE_SHIFTED',size),('FAILURE_OUTGROWS_SOURCE',failure)]:
        items=encode(expr)
        if any(x['coefficient']<=0 for x in items): raise ArithmeticError(name)
        positives.append({'id':name,'terms':items})
    cert={
      'schema':'B699-ProE-cross-head-quadratic-v1', 'variables':NAMES,
      'claims':{
        'i':3,'same_original_input':True,'p_equals_i_allowed':True,
        'scope':'conditional subdomains, not general NC3 closure',
        'head_uniform_constant':[32,27],
        'block_conditions':{'T_min':3,'X_min_power_of_T':5,'Y_min':1,'endpoints':['j','k']},
        'single_digit_remaining_exponents':[[1,2],[2,4],[3,6],[4,8]],
        'no_complete_nc_compatible_family_claim':True,
      },
      'source_cases':[
        {'lambda':1,'mu':1,'A_star':1},
        {'lambda':1,'mu':3,'A_star':9},
        {'lambda':3,'mu':1,'A_star':27}],
      'source_three':{'remove_if_valuation_equals':1,'remaining_full_source_exponent_min':2},
      'parity_lower_bounds':{'g_even_zg4_min':16,'g_odd_zg4_min':8},
      'identities':identities, 'positive_certificates':positives,
      'computation_scope':'symbolic identities and certificate integrity only; no numerical input search'
    }
    args.output.parent.mkdir(parents=True,exist_ok=True)
    args.output.write_text(json.dumps(cert,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps({'status':'PASS_BUILD','identities':len(identities),'positive_certificates':len(positives),'sympy':sp.__version__}))
if __name__=='__main__': main()
